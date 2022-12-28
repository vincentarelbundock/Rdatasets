.. container::

   ============= ===============
   Contraception R Documentation
   ============= ===============

   .. rubric:: Contraceptive use in Bangladesh
      :name: contraceptive-use-in-bangladesh

   .. rubric:: Description
      :name: description

   These data on the use of contraception by women in urban and rural
   areas come from the 1988 Bangladesh Fertility Survey.

   .. rubric:: Usage
      :name: usage

   ::

      data(Contraception)

   .. rubric:: Format
      :name: format

   A data frame with 1934 observations on the following 6 variables.

   woman
      Identifying code for each woman - a factor

   district
      Identifying code for each district - a factor

   use
      Contraceptive use at time of survey

   livch
      Number of living children at time of survey - an ordered factor.
      Levels are ``0``, ``1``, ``2``, ``3+``

   age
      Age of woman at time of survey (in years), centred around mean.

   urban
      Type of region of residence - a factor. Levels are ``urban`` and
      ``rural``

   .. rubric:: Source
      :name: source

   http://www.bristol.ac.uk/cmm/learning/mmsoftware/data-rev.html

   .. rubric:: References
      :name: references

   Steele, F., Diamond, I. And Amin, S. (1996). Immunization uptake in
   rural Bangladesh: a multilevel analysis. *Journal of the Royal
   Statistical Society, Series A* (159): 289-299.

   .. rubric:: Examples
      :name: examples

   ::

      str(Contraception)
      summary(Contraception)
      (fm1 <- glmer(use ~ urban+age+livch+(1|district), Contraception, binomial))
      (fm2 <- glmer(use ~ urban+age+livch+(urban|district), Contraception, binomial))
