============== ===============
chimpbrains_df R Documentation
============== ===============

Brodmann's Area 44 Asymmetry in Chimpanzees
-------------------------------------------

Description
~~~~~~~~~~~

This dataset, chimpbrains_df, is a data frame containing measurements of
asymmetry in Brodmann's area 44 for 20 chimpanzees. Brodmann's area 44
is a brain region associated with language processing in humans and is
located in the inferior frontal gyrus. The dataset includes individual
identifiers, sex, and asymmetry measurements, providing insights into
neural lateralization patterns in non-human primates. This data can be
useful for comparative neuroanatomy studies and understanding the
evolution of language-related brain structures.

Usage
~~~~~

.. code:: R

   data(chimpbrains_df)

Format
~~~~~~

A data frame with 20 observations and 3 variables:

name
   Individual chimpanzee identifier (factor with 20 levels)

sex
   Sex of the chimpanzee (factor with 2 levels: "F" = female, "M" =
   male)

asymmetry
   Asymmetry measurement of Brodmann's area 44 (numeric)

Details
~~~~~~~

The dataset name has been kept as chimpbrains_df to avoid confusion with
other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the NeuroDataSets package and
assists users in identifying its specific characteristics. The suffix df
indicates that the dataset is a data frame. The original content has not
been modified.

Source
~~~~~~

Data taken from the abd package version 0.2-8
