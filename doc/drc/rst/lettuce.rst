.. container::

   ======= ===============
   lettuce R Documentation
   ======= ===============

   .. rubric:: Hormesis in lettuce plants
      :name: lettuce

   .. rubric:: Description
      :name: description

   Data are from an experiment where isobutylalcohol was dissolved in a
   nutrient solution in which lettuce (*Lactuca sativa*) plants were
   grown. The plant biomass of the shoot was determined af 21 days.

   .. rubric:: Usage
      :name: usage

   ::

      data(lettuce)

   .. rubric:: Format
      :name: format

   A data frame with 14 observations on the following 2 variables.

   conc
      a numeric vector of concentrations of isobutylalcohol (mg/l)

   weight
      a numeric vector of biomass of shoot (g)

   .. rubric:: Details
      :name: details

   The data set illustrates hormesis, presence of a subtoxic stimulus at
   low concentrations.

   .. rubric:: Source
      :name: source

   van Ewijk, P. H. and Hoekstra, J. A. (1993) Calculation of the EC50
   and its Confidence Interval When Subtoxic Stimulus Is Present,
   *ECOTOXICOLOGY AND ENVIRONMENTAL SAFETY*, **25**, 25–32.

   .. rubric:: References
      :name: references

   van Ewijk, P. H. and Hoekstra, J. A. (1994) Curvature Measures and
   Confidence Intervals for the Linear Logistic Model, *Appl. Statist.*,
   **43**, 477–487.

   .. rubric:: Examples
      :name: examples

   ::

      ## Look at data
      lettuce

      ## Monotonous dose-response model
      lettuce.m1 <- drm(weight~conc, data=lettuce, fct=LL.3())

      plot(lettuce.m1, broken = TRUE)

      ## Model fit in van Ewijk and Hoekstra (1994)
      lettuce.m2 <- drm(weight~conc, data=lettuce, fct=BC.4())
      modelFit(lettuce.m2)

      plot(lettuce.m2, add = TRUE, broken = TRUE, type = "none", lty = 2)

      ## Hormesis effect only slightly significant
      summary(lettuce.m2)

      ## Hormesis effect highly significant
      ##  compare with t-test for the "f" parameter in the summary output)
      anova(lettuce.m1, lettuce.m2)
