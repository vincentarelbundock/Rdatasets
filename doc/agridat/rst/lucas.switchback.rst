.. container::

   .. container::

      ================ ===============
      lucas.switchback R Documentation
      ================ ===============

      .. rubric:: Switchback experiment on dairy cattle, milk yield for
         3 treatments
         :name: switchback-experiment-on-dairy-cattle-milk-yield-for-3-treatments

      .. rubric:: Description
         :name: description

      Switchback experiment on dairy cattle, milk yield for 3 treatments

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("lucas.switchback")

      .. rubric:: Format
         :name: format

      A data frame with 36 observations on the following 5 variables.

      ``cow``
         cow factor, 12 levels

      ``trt``
         treatment factor, 3 levels

      ``period``
         period factor, 3 levels

      ``yield``
         yield (FCM = fat corrected milk), pounds/day

      ``block``
         block factor

      .. rubric:: Details
         :name: details

      Lucas says "because no data from feeding trials employing the
      present designs are yet available, uniformity data will be used".

      Six cows were started together in block 1, then three cows in
      block 2 and three cows in block 3.

      .. rubric:: Source
         :name: source

      Lucas, HL. 1956. Switchback trials for more than two treatments.
      Journal of Dairy Science, 39, 146-154.
      https://doi.org/10.3168/jds.S0022-0302(56)94721-X

      .. rubric:: References
         :name: references

      Sanders, WL and Gaynor, PJ. 1987. Analysis of Switchback Data
      Using Statistical Analysis System. Journal of Dairy Science, 70,
      2186-2191. https://doi.org/10.3168/jds.S0022-0302(87)80273-4

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

         data(lucas.switchback)
         dat <- lucas.switchback

         # Create a numeric period variable
         dat$per <- as.numeric(substring(dat$period,2))

         libs(lattice)
         xyplot(yield ~ period|block, data=dat, group=cow, type=c('l','r'),
                auto.key=list(columns=6),
                main="lucas.switchback - (actually uniformity data)")

         # Need to use 'terms' to preserve the order of the model terms
         # Really, cow(block), per:cow(block), period(block)
         m1 <- aov(terms(yield ~ block + cow:block + per:cow:block +
                         period:block + trt, keep.order=TRUE), data=dat)
         anova(m1) # Match Sanders & Gaynor table 3
         ## Analysis of Variance Table
         ##               Df  Sum Sq Mean Sq F value    Pr(>F)
         ## block          2   30.93  15.464  55.345 5.132e-05 ***
         ## block:cow      9 1700.97 188.997 676.426 1.907e-09 ***
         ## block:cow:per 12  120.47  10.040  35.932 4.137e-05 ***
         ## block:period   3   14.85   4.950  17.717  0.001194 **
         ## trt            2    1.58   0.789   2.825  0.126048
         ## Residuals      7    1.96   0.279

         coef(m1) # trtT2 and trtT3 match Sanders table 3 trt diffs


         ## End(Not run)
