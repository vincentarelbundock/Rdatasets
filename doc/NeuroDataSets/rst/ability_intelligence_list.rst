========================= ===============
ability_intelligence_list R Documentation
========================= ===============

Ability and Intelligence Tests
------------------------------

Description
~~~~~~~~~~~

This dataset, ability_intelligence_list, is a list containing
psychometric data from six cognitive tests administered to 112
individuals. The list includes a covariance matrix, variable means, and
observation count for tests measuring various intellectual abilities.

Usage
~~~~~

.. code:: R

   data(ability_intelligence_list)

Format
~~~~~~

A list with 3 components:

cov
   Numeric matrix [6×6]: Test score covariance matrix

center
   Numeric vector [6]: Variable means

n.obs
   Numeric: Number of observations (112)

Details
~~~~~~~

The dataset name has been kept as 'ability_intelligence_list' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the NeuroDataSets package. The
suffix 'list' indicates that the dataset is a list object. The original
content has not been modified.

Source
~~~~~~

Data taken from the educationR package version 0.10
