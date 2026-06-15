======================= ===============
heart_transplant_tbl_df R Documentation
======================= ===============

Heart Transplant Data
---------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'heart_transplant_tbl_df' to avoid
confusion with other datasets from packages in the R ecosystem and to
follow the naming conventions of the 'MedDataSets' package. The suffix
'\_tbl_df' indicates that this dataset is a tibble, helping to
distinguish it from other datasets within the package and from those in
the broader R ecosystem. The original content of the dataset has not
been modified in any way.

Usage
~~~~~

.. code:: R

   data(heart_transplant_tbl_df)

Format
~~~~~~

A tibble with 103 observations and 8 variables:

id
   An integer identifier for each patient.

acceptyear
   The year the patient was accepted for transplantation.

age
   The age of the patient at the time of transplantation.

survived
   A factor indicating whether the patient survived post-transplant
   (e.g., yes or no).

survtime
   The time (in months) the patient survived after the transplant.

prior
   A factor indicating whether the patient had prior heart conditions
   (e.g., yes or no).

transplant
   A factor indicating the type of transplant (e.g., heart only,
   heart-lung).

wait
   The wait time (in days) for the transplant.

Details
~~~~~~~

This dataset contains information on heart transplant patients,
including demographics, survival outcomes, and wait times.

Source
~~~~~~

Data collected from heart transplant records to study patient outcomes
and factors influencing survival.
