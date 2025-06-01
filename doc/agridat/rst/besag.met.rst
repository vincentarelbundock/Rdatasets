.. container::

   .. container::

      ========= ===============
      besag.met R Documentation
      ========= ===============

      .. rubric:: Multi-environment trial of corn, incomplete-block
         design
         :name: multi-environment-trial-of-corn-incomplete-block-design

      .. rubric:: Description
         :name: description

      Multi-environment trial of corn, incomplete-block designlocation.

      .. rubric:: Format
         :name: format

      A data frame with 1152 observations on the following 7 variables.

      ``county``
         county

      ``row``
         row

      ``col``
         column

      ``rep``
         rep

      ``block``
         incomplete block

      ``yield``
         yield

      ``gen``
         genotype, 1-64

      .. rubric:: Details
         :name: details

      Multi-environment trial of 64 corn hybrids in six counties in
      North Carolina. Each location had 3 replicates in in
      incomplete-block design with an 18x11 lattice of plots whose
      length-to-width ratio was about 2:1.

      Note: In the original data, each county had 6 missing plots. This
      data has rows for each missing plot that uses the same
      county/block/rep to fill-out the row, sets the genotype to G01,
      and sets the yield to missing. These missing values were added to
      the data so that asreml could more easily do AR1xAR1 analysis
      using rectangular regions.

      Each location/panel is:

      Field length: 18 rows \* 2 units = 36 units.

      Field width: 11 plots \* 1 unit = 11 units.

      Retrieved from
      https://web.archive.org/web/19990505223413/www.stat.duke.edu/~higdon/trials/nc.dat

      Used with permission of David Higdon.

      .. rubric:: Source
         :name: source

      Julian Besag and D Higdon, 1999. Bayesian Analysis of Agricultural
      Field Experiments, Journal of the Royal Statistical Society:
      Series B, 61, 691–746. Table 1.
      https://doi.org/10.1111/1467-9868.00201

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(besag.met)
           dat <- besag.met

           libs(desplot)
           desplot(dat, yield ~ col*row|county,
                   aspect=36/11, # true aspect
                   out1=rep, out2=block,
                   main="besag.met")


           # Average reps
           datm <- aggregate(yield ~ county + gen, data=dat, FUN=mean)
           
           # Sections below fit heteroskedastic variance models (variance for each variety)
           # asreml takes 1 second, lme 73 seconds, SAS PROC MIXED 30 minutes



           # lme
           # libs(nlme)
           # m1l <- lme(yield ~ -1 + gen, data=datm, random=~1|county,
           #            weights = varIdent(form=~ 1|gen))
           # m1l$sigma^2 * c(1, coef(m1l$modelStruct$varStruct, unc = FALSE))^2
           ##           G02    G03    G04    G05    G06    G07    G08
           ##  91.90 210.75  63.03 112.05  28.39 237.36  72.72  42.97
           ## ... etc ...
           
           if(require("asreml", quietly=TRUE)) {
            libs(asreml, lucid)

            # Average reps
            datm <- aggregate(yield ~ county + gen, data=dat, FUN=mean)
            #  asreml Using 'rcov' ALWAYS requires sorting the data
            datm <- datm[order(datm$gen),]
            
            m1 <- asreml(yield ~ gen, data=datm,
                         random = ~ county,
                         residual = ~ dsum( ~ units|gen))
            vc(m1)[1:7,]
            ##      effect component std.error z.ratio bound 
            ##    county   1324       836.1      1.6     P 0.2
            ## gen_G01!R     91.98     58.91     1.6     P 0.1
            ## gen_G02!R    210.6     133.6      1.6     P 0.1
            ## gen_G03!R     63.06     40.58     1.6     P 0.1
            ## gen_G04!R    112.1      71.59     1.6     P 0.1
            ## gen_G05!R     28.35     18.57     1.5     P 0.2
            ## gen_G06!R    237.4     150.8      1.6     P 0  
           
            # We get the same results from asreml & lme
            # plot(m1$vparameters[-1],
            #      m1l$sigma^2 * c(1, coef(m1l$modelStruct$varStruct, unc = FALSE))^2)
            
            # The following example shows how to construct a GxE biplot
            # from the FA2 model.
            
            
            dat <- besag.met
            dat <- transform(dat, xf=factor(col), yf=factor(row))
            dat <- dat[order(dat$county, dat$xf, dat$yf), ]
            
            # First, AR1xAR1
            m1 <- asreml(yield ~ county, data=dat,
                         random = ~ gen:county,
                         residual = ~ dsum( ~ ar1(xf):ar1(yf)|county))
            # Add FA1
            m2 <- update(m1, random=~gen:fa(county,1)) # rotate.FA=FALSE
            # FA2
            m3 <- update(m2, random=~gen:fa(county,2))
            asreml.options(extra=50)
            m3 <- update(m3, maxit=50)
            asreml.options(extra=0)
            
            # Use the loadings to make a biplot
            vars <- vc(m3)
            psi <- vars[grepl("!var$", vars$effect), "component"]
            la1 <- vars[grepl("!fa1$", vars$effect), "component"]
            la2 <- vars[grepl("!fa2$", vars$effect), "component"]
            mat <- as.matrix(data.frame(psi, la1, la2))
            # I tried using rotate.fa=FALSE, but it did not seem to
            # give orthogonal vectors.  Rotate by hand.
            rot <- svd(mat[,-1])$v # rotation matrix
            lam <- mat[,-1] 
            colnames(lam) <- c("load1", "load2")
            
            co3 <- coef(m3)$random # Scores are the GxE coefficients
            ix1 <- grepl("_Comp1$", rownames(co3))
            ix2 <- grepl("_Comp2$", rownames(co3))
            sco <- matrix(c(co3[ix1], co3[ix2]), ncol=2, byrow=FALSE)
            sco <- sco 
            dimnames(sco) <- list(levels(dat$gen) , c('load1','load2'))
            rownames(lam) <- levels(dat$county)
            sco[,1:2] <- -1 * sco[,1:2]
            lam[,1:2] <- -1 * lam[,1:2]
            biplot(sco, lam, cex=.5, main="FA2 coefficient biplot (asreml)")
            # G variance matrix
            gvar <- lam 
           
            # Now get predictions and make an ordinary biplot
            p3 <- predict(m3, data=dat, classify="county:gen")
            p3 <- p3$pvals
            libs("gge")  
            bi3 <- gge(p3, predicted.value ~ gen*county, scale=FALSE)
            if(interactive()) dev.new()
            # Very similar to the coefficient biplot
            biplot(bi3, stand=FALSE, main="SVD biplot of FA2 predictions")
           }
           

         ## End(Not run)
