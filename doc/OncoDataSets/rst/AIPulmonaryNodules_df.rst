===================== ===============
AIPulmonaryNodules_df R Documentation
===================== ===============

AI for Assessment of Indeterminate Pulmonary Nodules
----------------------------------------------------

Description
~~~~~~~~~~~

This dataset, AIPulmonaryNodules_df, is a data frame containing data
from a study on the performance of an artificial intelligence (AI) risk
stratification tool for assessing Indeterminate Pulmonary Nodules (IPNs)
in chest CT scans. The dataset includes information on whether cancer
was diagnosed and the AI tool's rating of the probability of cancer
(from 0 to 100).

Usage
~~~~~

.. code:: R

   data(AIPulmonaryNodules_df)

Format
~~~~~~

A data frame with 200 observations and 2 variables:

cancer
   Cancer diagnosis – whether the nodule is cancerous (1 = cancer, 0 =
   no cancer) (integer).

rating
   AI rating of the probability of cancer, ranging from 0 to 100
   (integer).

Details
~~~~~~~

The dataset name has been kept as 'AIPulmonaryNodules_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the OncoDataSets package and
assists users in identifying its specific characteristics. The suffix
'\_df' indicates that the dataset is a data frame. The original content
has not been modified in any way.

Source
~~~~~~

Data taken from the R4HCR package.
