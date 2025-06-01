.. container::

   .. container::

      ======== ===============
      box.cork R Documentation
      ======== ===============

      .. rubric:: Weight of cork samples on four sides of trees
         :name: weight-of-cork-samples-on-four-sides-of-trees

      .. rubric:: Description
         :name: description

      The cork data gives the weights of cork borings of the trunk for
      28 trees on the north (N), east (E), south (S) and west (W)
      directions.

      .. rubric:: Format
         :name: format

      Data frame with 28 observations on the following 5 variables.

      ``tree``
         tree number

      ``dir``
         direction N,E,S,W

      ``y``
         weight of cork deposit (centigrams), north direction

      .. rubric:: Source
         :name: source

      C.R. Rao (1948). Tests of significance in multivariate analysis.
      *Biometrika*, 35, 58-79. https://doi.org/10.2307/2332629

      .. rubric:: References
         :name: references

      K.V. Mardia, J.T. Kent and J.M. Bibby (1979) *Multivariate
      Analysis*, Academic Press.

      Russell D Wolfinger, (1996). Heterogeneous Variance: Covariance
      Structures for Repeated Measures. *Journal of Agricultural,
      Biological, and Environmental Statistics*, 1, 205-230.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(box.cork)
           dat <- box.cork

           libs(reshape2, lattice)
           dat2 <- acast(dat, tree ~ dir, value.var='y')
           splom(dat2, pscales=3,
                 prepanel.limits = function(x) c(25,100),
                 main="box.cork", xlab="Cork yield on side of tree",
                 panel=function(x,y,...){
                   panel.splom(x,y,...)
                   panel.abline(0,1,col="gray80")
                 })


           ## Radial star plot, each tree is one line
           libs(plotrix)
           libs(reshape2)
           dat2 <- acast(dat, tree ~ dir, value.var='y')
           radial.plot(dat2, start=pi/2, rp.type='p', clockwise=TRUE,
                       radial.lim=c(0,100), main="box.cork",
                       lwd=2, labels=c('North','East','South','West'),
                       line.col=rep(c("royalblue","red","#009900","dark orange",
                                      "#999999","#a6761d","deep pink"),
                                    length=nrow(dat2)))

           if(require("asreml", quietly=TRUE)) {  
             libs(asreml, lucid)
             
             # Unstructured covariance
             dat$dir <- factor(dat$dir)
             dat$tree <- factor(dat$tree)  
             dat <- dat[order(dat$tree, dat$dir), ]
             
             # Unstructured covariance matrix
             m1 <- asreml(y~dir, data=dat, residual = ~ tree:us(dir))
             
             lucid::vc(m1)
             
             # Note: 'rcor' is a personal function to extract the correlations
             # into a matrix format
             # round(kw::rcor(m1)$dir, 2)
             #        E      N      S      W
             # E 219.93 223.75 229.06 171.37
             # N 223.75 290.41 288.44 226.27
             # S 229.06 288.44 350.00 259.54
             # W 171.37 226.27 259.54 226.00
             
             # Note: Wolfinger used a common diagonal variance
             
             # Factor Analytic with different specific variances
             # fixme: does not work with asreml4
             # m2 <- update(m1, residual = ~tree:facv(dir,1))
             # round(kw::rcor(m2)$dir, 2)
             #       E       N      S      W
             # E 219.94 209.46 232.85 182.27
             # N 209.46 290.41 291.82 228.43
             # S 232.85 291.82 349.99 253.94
             # W 182.27 228.43 253.94 225.99
           }
           

         ## End(Not run)
