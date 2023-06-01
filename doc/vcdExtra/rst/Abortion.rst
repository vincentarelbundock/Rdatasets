.. container::

   ======== ===============
   Abortion R Documentation
   ======== ===============

   .. rubric:: Abortion Opinion Data
      :name: Abortion

   .. rubric:: Description
      :name: description

   Opinions about abortion classified by gender and SES

   .. rubric:: Usage
      :name: usage

   ::

      data(Abortion)

   .. rubric:: Format
      :name: format

   A 3-dimensional array resulting from cross-tabulating 3 variables for
   1100 observations. The variable names and their levels are:

   == ==================== ====================
   No Name                 Levels
   1  ``Sex``              ``"Female", "Male"``
   2  ``Status``           ``"Lo", "Hi"``
   3  ``Support_Abortion`` ``"Yes", "No"``
   \                       
   == ==================== ====================

   .. rubric:: Details
      :name: details

   ``Support_Abortion`` is a natural response variable.

   The combinations of ``Sex`` and ``Status`` represent four independent
   samples, having fixed ``Sex``-``Status`` marginal totals. There were
   500 females and 600 males. Within the female group, 250 of low status
   and 250 of high status were sampled. Similarly for the males, with
   300 in each of the low and hgh status sub-groups.

   This is an example of a product-multinomial sampling scheme. the
   ``Sex:Status`` association must be included in any loglinear model
   where the goal is to determine how attitude toward abortion depends
   on the others.

   Alternatively, a logit model for abortion support may provide a
   simpler analysis.

   .. rubric:: Source
      :name: source

   Christensen, R. (1990). *Log-Linear Models*, New York, NY:
   Springer-Verlag, p. 92, Example 3.5.2.

   Christensen, R. (1997). *Log-Linear Models and Logistic Regression*,
   New York, NY: Springer, p. 100, Example 3.5.2.

   .. rubric:: Examples
      :name: examples

   ::

      data(Abortion)


      ftable(Abortion)
      mosaic(Abortion, shade=TRUE)

      # stratified by Sex
      fourfold(aperm(Abortion, 3:1))
      # stratified by Status
      fourfold(aperm(Abortion, c(3,1,2)))
