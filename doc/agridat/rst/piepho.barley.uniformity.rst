.. container::

   .. container::

      ======================== ===============
      piepho.barley.uniformity R Documentation
      ======================== ===============

      .. rubric:: Uniformity trial of barley
         :name: uniformity-trial-of-barley

      .. rubric:: Description
         :name: description

      Uniformity trial of barley in Germany

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("piepho.barley.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 1080 observations on the following 5 variables.

      ``row``
         row ordinate

      ``col``
         column ordinate

      ``yield``
         yield per plot

      .. rubric:: Details
         :name: details

      Uniformity trial of barley at Ihinger Hof farm, conducted by the
      University of Hohenheim, Germany, in 2007.

      Note: The paper by Piepho says "The trial had 30 rows and 36
      columns. Plot widths were 1.90 m along rows and 3.73 m along
      columns." This is confirmed by the variograms in Figure 1. It is
      not clear what "along rows" and "along columns" means in English.

      However, the SAS code supplement to the paper, called
      "PBR_1654_sm_example1.sas", has row=1-36, col=1-30.

      .. rubric:: Source
         :name: source

      H. P. Piepho & E. R. Williams (2010). Linear variance models for
      plant breeding trials. Plant Breeding, 129, 1-8.
      https://doi.org/10.1111/j.1439-0523.2009.01654.x

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           data(piepho.barley.uniformity) 
           dat <- piepho.barley.uniformity
           libs(desplot)
           desplot(dat, yield ~ col*row,
                   tick=TRUE, aspect=(36*3.73)/(30*1.90),
                   main="piepho.barley.uniformity.csv")

           if(require("asreml", quietly=TRUE)){
             libs(asreml,dplyr,lucid)
             dat <- mutate(dat, x=factor(col), y=factor(row))
             dat <- arrange(dat, x, y)
           
             # Piepho AR1xAR1 model (in random term, NOT residual)
             m1 <- asreml(data=dat,
                          yield ~ 1, 
                          random = ~ x + y + ar1(x):ar1(y), 
                          residual = ~  units,
                          na.action=na.method(x="keep") )
             m1 <- update(m1)
             # Match Piepho table 3, footnote 4: .9671, .9705 for col,row correlation
             # Note these parameters are basically at the boundary of the parameter
             # space. Questionable fit.
             lucid::vc(m1)
           }

         ## End(Not run)
