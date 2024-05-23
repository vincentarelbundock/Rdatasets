.. container::

   .. container::

      ========= ===============
      RatWeight R Documentation
      ========= ===============

      .. rubric:: Weight Gain in Rats Exposed to Thiouracil and Thyroxin
         :name: weight-gain-in-rats-exposed-to-thiouracil-and-thyroxin

      .. rubric:: Description
         :name: description

      The data are from a study of weight gain, where investigators
      randomly assigned 30 rats to three treatment groups: treatment 1
      was a control (no additive); treatments 2 and 3 consisted of two
      different additives (thiouracil and thyroxin respectively) to the
      rats drinking water. Weight was measured at baseline (week 0) and
      at weeks 1, 2, 3, and 4. Due to an accident at the beginning of
      the study, data on 3 rats from the thyroxin group are unavailable.

      .. rubric:: Format
         :name: format

      A data frame with 27 observations on the following 6 variables.

      ``trt``
         a factor with levels ``Control`` ``Thiouracil`` ``Thyroxin``

      ``wt0``
         Weight at Week 0 (baseline weight)

      ``wt1``
         Weight at Week 1

      ``wt2``
         Weight at Week 2

      ``wt3``
         Weight at Week 3

      ``wt4``
         Weight at Week 4

      .. rubric:: Details
         :name: details

      The ``trt`` factor comes supplied with contrasts comparing
      ``Control`` to each of ``Thiouracil`` and ``Thyroxin``.

      .. rubric:: Source
         :name: source

      Originally from Box (1950), Table D (page 389), where the values
      for weeks 1-4 were recorded as the gain in weight for that week.

      Fitzmaurice, G. M. and Laird, N. M. and Ware, J. H (2004).
      *Applied Longitudinal Analysis*, New York, NY: Wiley-Interscience.
      https://rdrr.io/rforge/ALA/.

      .. rubric:: References
         :name: references

      Box, G.E.P. (1950). Problems in the analysis of growth and wear
      curves. *Biometrics*, 6, 362-389.

      Friendly, Michael (2010). HE Plots for Repeated Measures Designs.
      *Journal of Statistical Software*, 37(4), 1-40.
      `doi:10.18637/jss.v037.i04 <https://doi.org/10.18637/jss.v037.i04>`__.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(RatWeight)
         contrasts(RatWeight$trt)

         rat.mod <- lm(cbind(wt0, wt1, wt2, wt3, wt4) ~ trt, data=RatWeight)
         rat.mod

         idata <- data.frame(week = ordered(0:4))
         car::Anova(rat.mod, idata=idata, idesign=~week, test="Roy")

         # quick look at between group effects
         pairs(rat.mod)

         # between-S, baseline & week 4
         heplot(rat.mod, col=c("red", "blue", "green3", "green3"),
             variables=c(1,5),
             hypotheses=c("trt1", "trt2"),
             main="Rat weight data, Between-S effects") 

         # within-S
         heplot(rat.mod, idata=idata, idesign=~week, iterm="week",
             col=c("red", "blue", "green3"),
         #   hypotheses=c("trt1", "trt2"),
             main="Rat weight data, Within-S effects")
