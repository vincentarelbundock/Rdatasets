.. container::

   ===== ===============
   Early R Documentation
   ===== ===============

   .. rubric:: Early childhood intervention study
      :name: early-childhood-intervention-study

   .. rubric:: Description
      :name: description

   Cognitive scores of infants in a study of early childhood
   intervention. The 103 infants from low income African American
   families were divided into a treatment group (58 infants) and a
   control group (45 infants). Starting at 0.5 years of age the infants
   in the treatment group were exposed to an enriched environment. Each
   infant's cognitive score on an age-specific, normalized scale was
   recorded at ages 1, 1.5, and 2 years.

   .. rubric:: Usage
      :name: usage

   ::

      data(Early)

   .. rubric:: Format
      :name: format

   This ``groupedData`` object contains the following columns

   id
      An ordered factor of the id number for each infant.

   cog
      A numeric cognitive score.

   age
      The age of the infant at the measurement.

   trt
      A factor with two levels, ``"N"`` and ``"Y"``, indicating if the
      infant is in the early childhood intervention program.

   .. rubric:: References
      :name: references

   Singer, Judith D. and Willett, John B. (2003), *Applied Longitudinal
   Data Analysis*, Oxford University Press. (Ch. 3)

   .. rubric:: Examples
      :name: examples

   ::

      str(Early)
