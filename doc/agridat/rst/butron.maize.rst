.. container::

   .. container::

      ============ ===============
      butron.maize R Documentation
      ============ ===============

      .. rubric:: Multi-environment trial of maize with pedigrees
         :name: multi-environment-trial-of-maize-with-pedigrees

      .. rubric:: Description
         :name: description

      Maize yields in a multi-environment trial. Pedigree included.

      .. rubric:: Format
         :name: format

      A data frame with 245 observations on the following 5 variables.

      ``gen``
         genotype

      ``male``
         male parent

      ``female``
         female parent

      ``env``
         environment

      ``yield``
         yield, Mg/ha

      .. rubric:: Details
         :name: details

      Ten inbreds were crossed to produce a diallel without reciprocals.
      The 45 F1 crosses were evaluated along with 4 checks in a
      triple-lattice 7x7 design. Pink stem borer infestation was
      natural.

      Experiments were performed in 1995 and 1996 at three sites in
      northwestern Spain: Pontevedra (42 deg 24 min N, 8 deg 38 min W,
      20 m over sea), Pontecaldelas (42 deg 23 N, 8 min 32 W, 300 m
      above sea), Ribadumia (42 deg 30 N, 8 min 46 W, 50 m above sea).

      A two-letter location code and the year are concatenated to define
      the environment.

      The average number of larvae per plant in each environment:

      ==== ======
      Env  Larvae
      pc95 0.54
      pc96 0.91
      ri96 1.78
      pv95 2.62
      pv96 3.35
      \    
      ==== ======

      Used with permission of Ana Butron.

      .. rubric:: Source
         :name: source

      Butron, A and Velasco, P and Ordas, A and Malvar, RA (2004). Yield
      evaluation of maize cultivars across environments with different
      levels of pink stem borer infestation. Crop Science, 44, 741-747.
      https://doi.org/10.2135/cropsci2004.7410

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(butron.maize)
           dat <- butron.maize

           libs(reshape2)
           mat <- acast(dat, gen~env, value.var='yield')
           mat <- sweep(mat, 2, colMeans(mat))
           mat.svd <- svd(mat)
           # Calculate PC1 and PC2 scores as in Table 4 of Butron
           # Comment out to keep Rcmd check from choking on '
           # round(mat.svd$u[,1:2] 

           biplot(princomp(mat), main="butron.maize", cex=.7) # Figure 1 of Butron


           if(require("asreml", quietly=TRUE)) {

             # Here we see if including pedigree information is helpful for a
             # multi-environment model
             # Including the pedigree provided little benefit
             
             # Create the pedigree
             ped <- dat[, c('gen','male','female')]
             ped <- ped[!duplicated(ped),] # remove duplicates
             unip <- unique(c(ped$male, ped$female)) # Unique parents
             unip <- unip[!is.na(unip)]
             # We have to define parents at the TOP of the pedigree
             ped <- rbind(data.frame(gen=c("Dent","Flint"), # genetic groups
                                     male=c(0,0),
                                     female=c(0,0)),
                          data.frame(gen=c("A509","A637","A661","CM105","EP28",
                                           "EP31","EP42","F7","PB60","Z77016"),
                                     male=rep(c('Dent','Flint'),each=5),
                                     female=rep(c('Dent','Flint'),each=5)),
                          ped)
             ped[is.na(ped$male),'male'] <- 0
             ped[is.na(ped$female),'female'] <- 0

             libs(asreml)
             ped.ainv <- ainverse(ped)
               
             m0 <- asreml(yield ~ 1+env, data=dat, random = ~ gen)
             m1 <- asreml(yield ~ 1+env, random = ~ vm(gen, ped.ainv), data=dat)
             m2 <- update(m1, random = ~ idv(env):vm(gen, ped.ainv))
             m3 <- update(m2, random = ~ diag(env):vm(gen, ped.ainv))
             m4 <- update(m3, random = ~ fa(env,1):vm(gen, ped.ainv))
             #summary(m0)$aic
             #summary(m4)$aic
             ##    df      AIC
             ## m0  2 229.4037
             ## m1  2 213.2487
             ## m2  2 290.6156
             ## m3  6 296.8061
             ## m4 11 218.1568
             
             p0 <- predict(m0, data=dat, classify="gen")$pvals
             p1 <- predict(m1, data=dat, classify="gen")$pvals
             p1par <- p1[1:12,]   # parents
             p1 <- p1[-c(1:12),]  # remove parents
             # Careful!  Need to manually sort the predictions
             p0 <- p0[order(as.character(p0$gen)),]
             p1 <- p1[order(as.character(p1$gen)),]
             
             # lims <- range(c(p0$pred, p1$pred)) * c(.95,1.05)
             lims <- c(6,8.25) # zoom in on the higher-yielding hybrids
             plot(p0$predicted.value, p1$predicted.value,
                  pch="", xlim=lims, ylim=lims, main="butron.maize",
                  xlab="BLUP w/o pedigree", ylab="BLUP with pedigree")
             abline(0,1,col="lightgray")
             text(x=p0$predicted.value, y=p1$predicted.value,
                  p0$gen, cex=.5, srt=-45)
             text(x=min(lims), y=p1par$predicted.value, p1par$gen, cex=.5, col="red")
             round( cor(p0$predicted.value, p1$predicted.value), 3)
             # 0.994
             # Including the pedigree provided very little change
           }
           

         ## End(Not run)
