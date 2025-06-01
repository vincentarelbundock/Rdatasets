.. container::

   .. container::

      ================ ===============
      durban.splitplot R Documentation
      ================ ===============

      .. rubric:: Split-plot experiment of barley with fungicide
         treatments
         :name: split-plot-experiment-of-barley-with-fungicide-treatments

      .. rubric:: Description
         :name: description

      Split-plot experiment of barley with fungicide treatments

      .. rubric:: Format
         :name: format

      A data frame with 560 observations on the following 6 variables.

      ``yield``
         yield, tonnes/ha

      ``block``
         block, 4 levels

      ``gen``
         genotype, 70 levels

      ``fung``
         fungicide, 2 levels

      ``row``
         row

      ``bed``
         bed (column)

      .. rubric:: Details
         :name: details

      Grown in 1995-1996 at the Scottish Crop Research Institute.
      Split-plot design with 4 blocks, 2 whole-plot fungicide
      treatments, and 70 barley varieties or variety mixes. Total area
      was 10 rows (north/south) by 56 beds (east/west).

      Used with permission of Maria Durban.

      .. rubric:: Source
         :name: source

      Durban, Maria and Hackett, Christine and McNicol, James and
      Newton, Adrian and Thomas, William and Currie, Iain. 2003. The
      practical use of semiparametric models in field trials, Journal of
      Agric Biological and Envir Stats, 8, 48-66.
      https://doi.org/10.1198/1085711031265.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(durban.splitplot)
           dat <- durban.splitplot

           libs(desplot)
           desplot(dat, yield~bed*row,
                   out1=block, out2=fung, num=gen, # aspect unknown
                   main="durban.splitplot")


           # Durban 2003, Figure 2
           m20 <- lm(yield~gen + fung + gen:fung, data=dat)
           dat$resid <- m20$resid
           ## libs(lattice)
           ## xyplot(resid~row, dat, type=c('p','smooth'), main="durban.splitplot")
           ## xyplot(resid~bed, dat, type=c('p','smooth'), main="durban.splitplot")

           # Figure 4 doesn't quite match due to different break points
           libs(lattice)
           xyplot(resid ~ bed|factor(row), data=dat,
                  main="durban.splitplot",
                  type=c('p','smooth'))


           # Figure 6 - field trend
           # note, Durban used gam package like this
           # m2lo <- gam(yield ~ gen*fung + lo(row, bed, span=.082), data=dat)
           libs(mgcv)
           m2lo <- gam(yield ~ gen*fung + s(row, bed,k=45), data=dat)
           new2 <- expand.grid(row=unique(dat$row), bed=unique(dat$bed))
           new2 <- cbind(new2, gen="G01", fung="F1")
           p2lo <- predict(m2lo, newdata=new2)
           libs(lattice)
           wireframe(p2lo~row+bed, new2, aspect=c(1,.5),
                     main="durban.splitplot - Field trend")

           if(require("asreml", quietly=TRUE)) {
             libs(asreml,lucid)
             
             # Table 5, variance components.  Table 6, F tests
             dat <- transform(dat, rowf=factor(row), bedf=factor(bed))
             dat <- dat[order(dat$rowf, dat$bedf),]
             m2a2 <- asreml(yield ~ gen*fung, random=~block/fung+units, data=dat,
                            resid =~ar1v(rowf):ar1(bedf))
             m2a2 <- update(m2a2)
             
             lucid::vc(m2a2)
             ##             effect component std.error z.ratio bound 
             ##              block   0              NA      NA     B  NA
             ##         block:fung   0.01206  0.01512      0.8     P   0
             ##              units   0.02463  0.002465    10       P   0
             ##       rowf:bedf(R)   1              NA      NA     F   0
             ## rowf:bedf!rowf!cor   0.8836   0.03646     24       U   0
             ## rowf:bedf!rowf!var   0.1261   0.04434      2.8     P   0
             ## rowf:bedf!bedf!cor   0.9202   0.02846     32       U   0
             
             wald(m2a2)
           }
           

         ## End(Not run)
