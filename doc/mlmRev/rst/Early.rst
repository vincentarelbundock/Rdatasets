===== ===============
Early R Documentation
===== ===============

Early childhood intervention study
----------------------------------

Description
~~~~~~~~~~~

Cognitive scores of infants in a study of early childhood intervention.
The 103 infants from low income African American families were divided
into a treatment group (58 infants) and a control group (45 infants).
Starting at 0.5 years of age the infants in the treatment group were
exposed to an enriched environment. Each infant's cognitive score on an
age-specific, normalized scale was recorded at ages 1, 1.5, and 2 years.

Usage
~~~~~

.. code:: R

   data(Early)

Format
~~~~~~

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

References
~~~~~~~~~~

Singer, Judith D. and Willett, John B. (2003), *Applied Longitudinal
Data Analysis*, Oxford University Press. (Ch. 3)

Examples
~~~~~~~~

.. code:: R

   str(Early)
