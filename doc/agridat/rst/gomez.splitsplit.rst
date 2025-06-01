.. container::

   .. container::

      ================ ===============
      gomez.splitsplit R Documentation
      ================ ===============

      .. rubric:: Split-split-plot experiment of rice
         :name: split-split-plot-experiment-of-rice

      .. rubric:: Description
         :name: description

      Grain yield of three varieties of rice grown in a split-split plot
      arrangement with 3 reps, nitrogen level as the main plot,
      management practice as the sub-plot, and rice variety as the
      sub-sub plot.

      .. rubric:: Format
         :name: format

      A data frame with 135 observations on the following 7 variables.

      ``rep``
         block, 3 levels

      ``nitro``
         nitrogen fertilizer, in kilograms/hectare

      ``management``
         plot management

      ``gen``
         genotype/variety of rice

      ``yield``
         yield

      ``col``
         column position in the field

      ``row``
         row position in the field

      Used with permission of Kwanchai Gomez.

      .. rubric:: Source
         :name: source

      Gomez, K.A. and Gomez, A.A.. 1984, Statistical Procedures for
      Agricultural Research. Wiley-Interscience. Page 143.

      .. rubric:: References
         :name: references

      H. P. Piepho, R. N. Edmondson. (2018). A tutorial on the
      statistical analysis of factorial experiments with qualitative and
      quantitative treatment factor levels. Jour Agronomy and Crop
      Science, 8, 1-27. https://doi.org/10.1111/jac.12267

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

         data(gomez.splitsplit)
         dat <- gomez.splitsplit
         dat$nf <- factor(dat$nitro)

         libs(desplot)
         desplot(dat, nf ~ col*row,
                 # aspect unknown
                 out1=rep, col=management, num=gen, cex=1,
                 main="gomez.splitsplit")
         desplot(dat, yield ~ col*row,
                 # aspect unknown
                 out1=rep, main="gomez.splitsplit")


         libs(HH)
         position(dat$nf) <- c(0,50,80,110,140)
         interaction2wt(yield~rep+nf+management+gen, data=dat,
                        main="gomez.splitsplit",
                        x.between=0, y.between=0,
                        relation=list(x="free", y="same"),
                        rot=c(90,0), xlab="",
                        par.strip.text.input=list(cex=.7))


         # AOV.  Gomez page 144-153
         m0 <- aov(yield~ nf * management * gen + Error(rep/nf/management),
                  data=dat)
         summary(m0) # Similar to Gomez, p. 153.


         ## End(Not run)
