.. container::

   .. container::

      ============= ===============
      jenkyn.mildew R Documentation
      ============= ===============

      .. rubric:: Yields from treatment for mildew control
         :name: yields-from-treatment-for-mildew-control

      .. rubric:: Description
         :name: description

      Yields from treatment for mildew control

      .. rubric:: Format
         :name: format

      A data frame with 38 observations on the following 4 variables.

      ``plot``
         plot number

      ``trt``
         treatment factor, 4 levels

      ``block``
         block factor, 9 levels

      ``yield``
         grain yield, tons/ha

      .. rubric:: Details
         :name: details

      There were four spray treatments: 0 (none), 1 (early), 2 (late), R
      (repeated).

      Each treatment occurs once between each of the 9 ordered pairs of
      the other treatments.

      The first and last plot are not assigned to a block.

      .. rubric:: Source
         :name: source

      Norman Draper and Irwin Guttman (1980). Incorporating Overlap
      Effects from Neighboring Units into Response Surface Models. *Appl
      Statist*, 29, 128–134. https://doi.org/10.2307/2986297

      .. rubric:: References
         :name: references

      Maria Durban, Christine Hackett, Iain Currie. Blocks, Trend and
      Interference in Field Trials.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(jenkyn.mildew)
         dat <- jenkyn.mildew

         libs(lattice)
         bwplot(yield ~ trt, dat, main="jenkyn.mildew", xlab="Treatment")

         # Residuals from treatment model show obvious spatial trends
         m0 <- lm(yield ~ trt, dat)
         xyplot(resid(m0)~plot, dat, ylab="Residual",
                main="jenkyn.mildew - treatment model")

         # The blocks explain most of the variation
         m1 <- lm(yield ~ trt + block, dat)
         xyplot(resid(m1)~plot, dat, ylab="Residual",
                main="jenkyn.mildew - block model")


         ## End(Not run)
