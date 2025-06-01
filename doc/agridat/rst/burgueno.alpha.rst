.. container::

   .. container::

      ============== ===============
      burgueno.alpha R Documentation
      ============== ===============

      .. rubric:: Incomplete block alpha design
         :name: incomplete-block-alpha-design

      .. rubric:: Description
         :name: description

      Incomplete block alpha design

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("burgueno.alpha")

      .. rubric:: Format
         :name: format

      A data frame with 48 observations on the following 6 variables.

      ``rep``
         rep, 3 levels

      ``block``
         block, 12 levels

      ``row``
         row

      ``col``
         column

      ``gen``
         genotype, 16 levels

      ``yield``
         yield

      .. rubric:: Details
         :name: details

      A field experiment with 3 reps, 4 blocks per rep, laid out as an
      alpha design.

      The plot size is not given.

      Electronic version of the data obtained from CropStat software.

      Used with permission of Juan Burgueno.

      .. rubric:: Source
         :name: source

      J Burgueno, A Cadena, J Crossa, M Banziger, A Gilmour, B Cullis.
      2000. User's guide for spatial analysis of field variety trials
      using ASREML. CIMMYT.
      https://books.google.com/books?id=PR_tYCFyLCYC&pg=PA1

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(burgueno.alpha)
           dat <- burgueno.alpha

           libs(desplot)
           desplot(dat, yield~col*row,
                   out1=rep, out2=block, # aspect unknown
                   text=gen, cex=1,shorten="none",
                   main='burgueno.alpha')


           libs(lme4,lucid)
           # Inc block model
           m0 <- lmer(yield ~ gen + (1|rep/block), data=dat)
           vc(m0) # Matches Burgueno p. 26
           ##        grp        var1 var2   vcov sdcor
           ##  block:rep (Intercept) <NA>  86900 294.8
           ##        rep (Intercept) <NA> 200900 448.2
           ##   Residual        <NA> <NA> 133200 365  


           if(require("asreml", quietly=TRUE)) {
             libs(asreml)
             
             dat <- transform(dat, xf=factor(col), yf=factor(row))
             dat <- dat[order(dat$xf, dat$yf),]                 
             
             # Sequence of models on page 36 of Burgueno
             
             m1 <- asreml(yield ~  gen, data=dat)
             m1$loglik # -232.13
             
             m2 <- asreml(yield ~  gen, data=dat,
                          random = ~ rep)
             m2$loglik # -223.48
             
             # Inc Block model
             m3 <- asreml(yield ~  gen, data=dat,
                          random = ~ rep/block)
             m3$loglik # -221.42
             m3$coef$fixed # Matches solution on p. 27
             
             # AR1xAR1 model
             m4 <- asreml(yield ~ 1 + gen, data=dat,
                          resid = ~ar1(xf):ar1(yf))
             m4$loglik # -221.47
             plot(varioGram(m4), main="burgueno.alpha") # Figure 1
             
             m5 <- asreml(yield ~ 1 + gen, data=dat,
                          random= ~ yf, resid = ~ar1(xf):ar1(yf))
             m5$loglik # -220.07
             
             m6 <- asreml(yield ~ 1 + gen + pol(yf,-2), data=dat,
                          resid = ~ar1(xf):ar1(yf))
             m6$loglik # -204.64
             
             m7 <- asreml(yield ~ 1 + gen + lin(yf), data=dat,
                          random= ~ spl(yf), resid = ~ar1(xf):ar1(yf))
             m7$loglik # -212.51
             
             m8 <- asreml(yield ~ 1 + gen + lin(yf), data=dat,
                          random= ~ spl(yf))
             m8$loglik # -213.91
             
             # Polynomial model with predictions
             m9 <- asreml(yield ~ 1 + gen + pol(yf,-2) + pol(xf,-2), data=dat,
                          random= ~ spl(yf),
                          resid = ~ar1(xf):ar1(yf))
             m9 <- update(m9)
             m9$loglik # -191.44 vs -189.61
           
             m10 <- asreml(yield ~ 1 + gen + lin(yf)+lin(xf), data=dat,
                           resid = ~ar1(xf):ar1(yf))
             m10$loglik # -211.56
             
             m11 <- asreml(yield ~ 1 + gen + lin(yf)+lin(xf), data=dat,
                           random= ~ spl(yf),
                           resid = ~ar1(xf):ar1(yf))
             m11$loglik # -208.90
             
             m12 <- asreml(yield ~ 1 + gen + lin(yf)+lin(xf), data=dat,
                           random= ~ spl(yf)+spl(xf),
                           resid = ~ar1(xf):ar1(yf))
             m12$loglik # -206.82
             
             m13 <- asreml(yield ~ 1 + gen + lin(yf)+lin(xf), data=dat,
                           random= ~ spl(yf)+spl(xf))
             m13$loglik # -207.52
           }
           

         ## End(Not run)
