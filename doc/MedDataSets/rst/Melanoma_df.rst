=========== ===============
Melanoma_df R Documentation
=========== ===============

Survival from Malignant Melanoma
--------------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'Melanoma_df' to avoid confusion
with other datasets from packages in the R ecosystem and to follow the
naming conventions of the 'MedDataSets' package. The suffix '\_df'
indicates that this dataset is a data frame, helping to distinguish it
from other datasets within the package and from those in the broader R
ecosystem. The original content of the dataset has not been modified in
any way.

Usage
~~~~~

.. code:: R

   data(Melanoma_df)

Format
~~~~~~

A data frame with 205 observations and 7 variables:

time
   An integer representing the survival time of the patients (in
   months).

status
   An integer indicating the status of the patient at the end of the
   study; typically coded as 1 for dead and 0 for alive.

sex
   An integer representing the sex of the patient; usually coded as 1
   for male and 0 for female.

age
   An integer indicating the age of the patient at diagnosis (in years).

year
   An integer representing the year of diagnosis.

thickness
   A numeric value indicating the thickness of the melanoma (in
   millimeters).

ulcer
   An integer indicating the presence of ulceration; usually coded as 1
   for yes and 0 for no.

Details
~~~~~~~

This dataset contains information on survival rates of patients
diagnosed with malignant melanoma, including various clinical factors
that may affect prognosis.

Source
~~~~~~

Data collected from clinical studies on malignant melanoma.
