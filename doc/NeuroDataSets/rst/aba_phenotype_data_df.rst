===================== ===============
aba_phenotype_data_df R Documentation
===================== ===============

Allen Brain Atlas Phenotype Data
--------------------------------

Description
~~~~~~~~~~~

This dataset, aba_phenotype_data_df, is a data frame containing brain
tissue phenotype measurements from the Allen Brain Atlas Aging,
Dementia, and TBI study. The data includes immunohistochemistry markers
for microglia and astrocytes across 377 brain samples, intended for
correlation analyses with expression data.

Usage
~~~~~

.. code:: R

   data(aba_phenotype_data_df)

Format
~~~~~~

A data frame with 377 observations and 4 variables:

structure_acronym.x
   Character: Brain structure acronym

ihc_iba1_ffpe
   Numeric: IBA1 immunohistochemistry measurement (microglia marker)

ihc_gfap_ffpe
   Numeric: GFAP immunohistochemistry measurement (astrocyte marker)

id
   Character: Sample identification code

Details
~~~~~~~

The dataset name has been kept as 'aba_phenotype_data_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the NeuroDataSets package. The
suffix 'df' indicates that the dataset is a data frame. The original
content has not been modified.

Source
~~~~~~

Data taken from the BRETIGEA package version 1.0.3. Original data from:
Allen Brain Atlas Aging, Dementia, and TBI study.
