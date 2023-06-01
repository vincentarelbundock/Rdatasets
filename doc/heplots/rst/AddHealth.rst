.. container::

   ========= ===============
   AddHealth R Documentation
   ========= ===============

   .. rubric:: Adolescent Health Data
      :name: AddHealth

   .. rubric:: Description
      :name: description

   This data was taken from the National Longitudinal Study of
   Adolescent Health. It is a cross-sectional sample of participants
   from grades 7–12, described and analyzed by Warne (2014).

   .. rubric:: Usage
      :name: usage

   ::

      data("AddHealth")

   .. rubric:: Format
      :name: format

   A data frame with 4344 observations on the following 3 variables.

   ``grade``
      an ordered factor with levels ``7`` < ``8`` < ``9`` < ``10`` <
      ``11`` < ``12``

   ``depression``
      a numeric vector

   ``anxiety``
      a numeric vector

   .. rubric:: Details
      :name: details

   ``depression`` is the response to the question "In the last month,
   how often did you feel depressed or blue?"

   ``anxiety`` is the response to the question "In the last month, how
   often did you have trouble relaxing?"

   The responses for ``depression`` and ``anxiety`` were recorded on a
   5-point Likert scale, with categories
   ``0="Never", 1="Rarely", 2="Occasionally", 3="Often", 4="Every day"``

   .. rubric:: Source
      :name: source

   Warne, R. T. (2014). A primer on Multivariate Analysis of Variance
   (MANOVA) for Behavioral Scientists. *Practical Assessment, Research &
   Evaluation*, 19 (1).
   https://scholarworks.umass.edu/pare/vol19/iss1/17/

   .. rubric:: Examples
      :name: examples

   ::

      data(AddHealth)
      # fit mlm
      AH.mod <- lm(cbind(depression, anxiety) ~ grade, data=AddHealth)

      Anova(AH.mod)
      summary(Anova(AH.mod))

      heplot(AH.mod, hypotheses="grade.L", fill=c(TRUE, FALSE))
