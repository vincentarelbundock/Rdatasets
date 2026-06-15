======================= ===============
brain_litter_mammals_df R Documentation
======================= ===============

Mammal Brain Size and Litter Size Relationship
----------------------------------------------

Description
~~~~~~~~~~~

This dataset, ``brain_litter_mammals_df``, is a data frame comparing
relative brain weights between 96 mammalian species divided by
reproductive strategy: 51 species with small litters (``< 2`` offspring)
and 45 species with large litters (``\geq 2`` offspring).

Usage
~~~~~

.. code:: R

   data(brain_litter_mammals_df)

Format
~~~~~~

A data frame with 96 observations and 2 variables:

BrainSize
   Numeric: Relative brain weight measurement (encephalization quotient
   or similar metric)

LitterSize
   Factor with 2 levels: Reproductive strategy ("Small" (``< 2``) and
   "Large" (``\geq 2``) litter sizes)

Details
~~~~~~~

The dataset name has been kept as ``brain_litter_mammals_df`` to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the NeuroDataSets package. The
suffix ``df`` indicates that the dataset is a data frame. The original
content has not been modified.

Source
~~~~~~

Data taken from the Sleuth3 package version 1.0-6. Original reference:
Ramsey, F.L. and Schafer, D.W. (2002) *The Statistical Sleuth: A Course
in Methods of Data Analysis* (2nd ed), Duxbury.
