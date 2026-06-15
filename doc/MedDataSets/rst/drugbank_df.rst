=========== ===============
drugbank_df R Documentation
=========== ===============

Relationship Between Gene and Disease
-------------------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'drugbank_df' to avoid confusion
with other datasets from packages in the R ecosystem and to follow the
naming conventions of the 'MedDataSets' package. The suffix '\_df'
indicates that this dataset is a data frame, helping to distinguish it
from other datasets within the package and from those in the broader R
ecosystem. The original content of the dataset has not been modified in
any way.

Usage
~~~~~

.. code:: R

   data(drugbank_df)

Format
~~~~~~

A data frame with 27,728 observations and 2 variables:

gene
   Gene associated with the disease (factor).

disease
   Disease associated with the gene (factor).

Details
~~~~~~~

This dataset contains information about the relationships between genes
and diseases, providing insights into how specific genes may be
associated with various diseases.

Source
~~~~~~

The dataset is derived from drug interaction databases and gene-disease
relationships.
