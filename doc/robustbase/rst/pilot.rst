.. container::

   ===== ===============
   pilot R Documentation
   ===== ===============

   .. rubric:: Pilot-Plant Data
      :name: pilot-plant-data

   .. rubric:: Description
      :name: description

   Pilot-Plant data from Daniel and Wood (1971). The response variable
   corresponds to the acid content determined by titration and the
   explanatory variable is the organic acid content determined by
   extraction and weighing. This data set was analyzed also by Yale and
   Forsythe (1976).

   .. rubric:: Usage
      :name: usage

   ::

      data(pilot, package="robustbase")

   .. rubric:: Format
      :name: format

   A data frame with 20 observations on the following 2 variables.

   ``X``
      Organic acid content - extraction

   ``Y``
      Acid content - titration

   .. rubric:: Source
      :name: source

   P. J. Rousseeuw and A. M. Leroy (1987) *Robust Regression and Outlier
   Detection*; Wiley, page 21, table 1.

   .. rubric:: Examples
      :name: examples

   ::

      data(pilot)
      summary(lm.pilot <- lm(Y ~.,data=pilot))
