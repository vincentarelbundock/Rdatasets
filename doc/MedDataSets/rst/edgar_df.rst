======== ===============
edgar_df R Documentation
======== ===============

Relationship Between Gene and Disease in Edgar
----------------------------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'edgar_df' to avoid confusion with
other datasets from packages in the R ecosystem and to follow the naming
conventions of the 'MedDataSets' package. The suffix '\_df' indicates
that this dataset is a data frame, helping to distinguish it from other
datasets within the package and from those in the broader R ecosystem.
The original content of the dataset has not been modified in any way.

Usage
~~~~~

.. code:: R

   data(edgar_df)

Format
~~~~~~

A data frame with 1,038,340 observations and 2 variables:

Gene
   Gene associated with the disease (factor).

Disease
   Disease associated with the gene (factor).

Details
~~~~~~~

This dataset contains information about the relationships between genes
and diseases, specifically focusing on data sourced from the Edgar
database, providing insights into how specific genes may be associated
with various diseases.

Source
~~~~~~

The dataset is derived from the Edgar database and focuses on
gene-disease relationships.
