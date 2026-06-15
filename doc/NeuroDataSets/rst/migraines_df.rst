============ ===============
migraines_df R Documentation
============ ===============

Effects of Transcranial Magnetic Stimulation on Migraine Headaches
------------------------------------------------------------------

Description
~~~~~~~~~~~

This dataset, migraines_df, is a data frame containing data on the
effects of transcranial magnetic stimulation (TMS) on migraine
headaches. The dataset includes two groups along with counts of
participants who reported improvement (“Yes”), no improvement (“No”),
and the total number of trials. These data are useful for evaluating the
potential therapeutic impact of TMS on migraine symptoms.

Usage
~~~~~

.. code:: R

   data(migraines_df)

Format
~~~~~~

A data frame with 2 observations and 4 variables:

Group
   Group indicator (factor with 2 levels)

Yes
   Number of participants reporting improvement (integer)

No
   Number of participants reporting no improvement (integer)

Trials
   Total number of trials (integer)

Details
~~~~~~~

The dataset name has been kept as migraines_df to avoid confusion with
other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the NeuroDataSets package and
assists users in identifying its specific characteristics. The suffix df
indicates that the dataset is a data frame. The original content has not
been modified in any way.

Source
~~~~~~

Data taken from the Stat2Data package version 2.0.0
