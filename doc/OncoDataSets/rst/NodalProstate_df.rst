================ ===============
NodalProstate_df R Documentation
================ ===============

Nodal Involvement in Prostate Cancer
------------------------------------

Description
~~~~~~~~~~~

This dataset, NodalProstate_df, is a data frame containing data on 53
patients diagnosed with prostate cancer. The dataset records several
clinical and diagnostic factors to assess nodal involvement without
surgery. Nodal involvement is a critical factor in determining the
treatment strategy for prostate cancer patients.

Usage
~~~~~

.. code:: R

   data(NodalProstate_df)

Format
~~~~~~

A data frame with 53 observations and 7 variables:

m
   Estimated probability of nodal involvement (numeric).

r
   Predicted nodal involvement risk (numeric).

aged
   Age group of the patient (factor with 2 levels).

stage
   Cancer stage (factor with 2 levels).

grade
   Tumor grade (factor with 2 levels).

xray
   X-ray result (factor with 2 levels).

acid
   Acid phosphatase test result (factor with 2 levels).

Details
~~~~~~~

The dataset name has been kept as 'NodalProstate_df' to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the OncoDataSets package and assists
users in identifying its specific characteristics. The suffix '\_df'
indicates that the dataset is a data frame. The original content has not
been modified in any way.

Source
~~~~~~

Data taken from the SMPracticals package.
