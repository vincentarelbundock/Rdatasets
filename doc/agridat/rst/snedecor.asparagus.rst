.. container::

   .. container::

      ================== ===============
      snedecor.asparagus R Documentation
      ================== ===============

      .. rubric:: Asparagus yields for different cutting treatments
         :name: asparagus-yields-for-different-cutting-treatments

      .. rubric:: Description
         :name: description

      Asparagus yields for different cutting treatments, in 4 years.

      .. rubric:: Format
         :name: format

      A data frame with 64 observations on the following 4 variables.

      ``block``
         block factor, 4 levels

      ``year``
         year, numeric

      ``trt``
         treatment factor of final cutting date

      ``yield``
         yield, ounces

      .. rubric:: Details
         :name: details

      Planted in 1927. Cutting began in 1929. Yield is the weight of
      asparagus cuttings up to Jun 1 in each plot. Some plots received
      continued cuttings until Jun 15, Jul 1, and Jul 15.

      In the past, repeated-measurement experiments like this were
      sometimes analyzed as if they were a split-plot experiment. This
      violates some indpendence assumptions.

      .. rubric:: Source
         :name: source

      Snedecor and Cochran, 1989. *Statistical Methods*.

      .. rubric:: References
         :name: references

      Mick O'Neill, 2010. *A Guide To Linear Mixed Models In An
      Experimental Design Context*. Statistical Advisory & Training
      Service Pty Ltd.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(snedecor.asparagus)
           dat <- snedecor.asparagus

           dat <- transform(dat, year=factor(year))
           dat$trt <- factor(dat$trt,
                             levels=c("Jun-01", "Jun-15", "Jul-01", "Jul-15"))

           # Continued cutting reduces plant vigor and yield
           libs(lattice)
           dotplot(yield ~ trt|year, data=dat,
                   xlab="Cutting treatment", main="snedecor.asparagus")

           # Split-plot
           if(0){
             libs(lme4)
             m1 <- lmer(yield ~ trt + year + trt:year +
                          (1|block) + (1|block:trt), data=dat)
           }

           # ----------

           if(require("asreml", quietly=TRUE)){
             libs(asreml,lucid)

             # Split-plot with asreml
             m2 <- asreml(yield ~ trt + year + trt:year, data=dat,
                          random = ~ block + block:trt)
             lucid::vc(m2)
             ##    effect component std.error z.ratio bound 
             ##     block     354.3     405      0.87     P 0.1
             ## block:trt     462.8     256.9    1.8      P 0  
             ##   units!R     404.7      82.6    4.9      P 0  
             
             ## # Antedependence with asreml.  See O'Neill (2010).
             dat <- dat[order(dat$block, dat$trt), ]
             m3 <- asreml(yield ~ year * trt, data=dat,
                          random = ~ block,
                          residual = ~ block:trt:ante(year,1),
                          max=50)
             m3 <- update(m3)
             m3 <- update(m3)

             ## # Extract the covariance matrix for years and convert to correlation
             ## covmat <- diag(4)
             ## covmat[upper.tri(covmat,diag=TRUE)] <- m3$R.param$`block:trt:year`$year$initial
             ## covmat[lower.tri(covmat)] <- t(covmat)[lower.tri(covmat)]
             ## round(cov2cor(covmat),2) # correlation among the 4 years
             ## #      [,1] [,2] [,3] [,4]
             ## # [1,] 1.00 0.45 0.39 0.31
             ## # [2,] 0.45 1.00 0.86 0.69
             ## # [3,] 0.39 0.86 1.00 0.80
             ## # [4,] 0.31 0.69 0.80 1.00
             
             ## # We can also build the covariance Sigma by hand from the estimated
             ## # variance components via: Sigma^-1 = U D^-1 U'
             ## vv <- vc(m3)
             ## print(vv)
             ## ##            effect component std.error z.ratio constr
             ## ##   block!block.var  86.56    156.9        0.55    pos
             ## ##        R!variance   1              NA      NA    fix
             ## ##  R!year.1930:1930   0.00233   0.00106    2.2   uncon
             ## ##  R!year.1931:1930  -0.7169    0.4528    -1.6   uncon
             ## ##  R!year.1931:1931   0.00116   0.00048    2.4   uncon
             ## ##  R!year.1932:1931  -1.139     0.1962    -5.8   uncon
             ## ##  R!year.1932:1932   0.00208   0.00085    2.4   uncon
             ## ##  R!year.1933:1932  -0.6782    0.1555    -4.4   uncon
             ## ##  R!year.1933:1933   0.00201   0.00083    2.4   uncon
             
             ## U <- diag(4)
             ## U[1,2] <- vv[4,2] ; U[2,3] <- vv[6,2] ; U[3,4] <- vv[8,2]
             ## Dinv <- diag(c(vv[3,2], vv[5,2], vv[7,2], vv[9,2]))
             ## # solve(U 
             ## solve(crossprod(t(U), tcrossprod(Dinv, U)) )
             ## ##          [,1]      [,2]      [,3]      [,4]
             ## ## [1,] 428.4310  307.1478  349.8152  237.2453
             ## ## [2,] 307.1478 1083.9717 1234.5516  837.2751
             ## ## [3,] 349.8152 1234.5516 1886.5150 1279.4378
             ## ## [4,] 237.2453  837.2751 1279.4378 1364.8446
           }
           

         ## End(Not run)
