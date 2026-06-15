================== ===============
SuspectedCancer_df R Documentation
================== ===============

Suspected Cancer (SCAN) Pathway
-------------------------------

Description
~~~~~~~~~~~

This dataset, SuspectedCancer_df, is a data frame containing blood test
results from individuals presenting with non-specific symptoms of
cancer. The data was collected as part of the Suspected CANcer (SCAN)
pathway, which evaluates a new standard of care for patients in primary
care settings.

Usage
~~~~~

.. code:: R

   data(SuspectedCancer_df)

Format
~~~~~~

A data frame with 750 observations and 8 variables:

age
   Age of the individual (numeric).

comorbidity
   Comorbidity index (numeric).

haemoglobin
   Haemoglobin level (numeric).

albumin
   Albumin level (numeric).

alaninetrans
   Alanine aminotransferase level (numeric).

whitebloodcell
   White blood cell count (numeric).

bilirubin
   Bilirubin level (numeric).

calcium
   Calcium level (numeric).

Details
~~~~~~~

The dataset name has been kept as 'SuspectedCancer_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the OncoDataSets package and
assists users in identifying its specific characteristics. The suffix
'\_df' indicates that the dataset is a data frame. The original content
has not been modified in any way.

Source
~~~~~~

Data taken from the R4HCR package. Nicholson BD, Oke JL, Friedemann
Smith C, et al. The Suspected CANcer (SCAN) pathway: protocol for
evaluating a new standard of care for patients with non-specific
symptoms of cancer. BMJ Open 2018;8:e018168.
