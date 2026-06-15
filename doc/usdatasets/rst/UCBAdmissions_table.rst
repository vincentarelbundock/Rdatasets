=================== ===============
UCBAdmissions_table R Documentation
=================== ===============

Student Admissions at UC Berkeley
---------------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'UCBAdmissions_table' to avoid
confusion with other packages in the R ecosystem. This naming convention
helps distinguish this dataset as part of the 'usdatasets' package and
identifies it as a table object. The original content of the dataset has
not been modified.

Usage
~~~~~

.. code:: R

   data(UCBAdmissions_table)

Format
~~~~~~

A table object with 24 entries representing the admissions data at U.C.
Berkeley:

Admit
   A factor with levels "Admitted" and "Rejected".

Gender
   A factor with levels "Male" and "Female".

Dept
   A factor representing the department with levels "A", "B", "C", "D",
   "E", and "F".

values
   Numeric counts of admissions based on gender and department.

Source
~~~~~~

U.C. Berkeley admissions data from 1973.
