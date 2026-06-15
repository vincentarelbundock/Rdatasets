================= ===============
sleep_disorder_df R Documentation
================= ===============

Transient Sleep Disorder Polysomnography Scoring Data
-----------------------------------------------------

Description
~~~~~~~~~~~

This dataset, sleep_disorder_df, is a data frame containing
polysomnographic (PSG) measurements from a clinical study designed to
compare automated and semi-automated scoring methods used in the
diagnosis of transient sleep disorders. The study included 82 patients
who were administered a sleep-inducing drug (Zolpidem 10 mg). The
primary measure of interest is the latency to persistent sleep (LPS),
defined as the time from lights out to the beginning of 10 consecutive
minutes of uninterrupted sleep. LPS was measured using three different
scoring methods: manual, automated, and partial.

Usage
~~~~~

.. code:: R

   data(sleep_disorder_df)

Format
~~~~~~

A data frame with 82 observations and 3 variables:

manual
   Latency to persistent sleep measured using manual scoring (numeric)

automated
   Latency to persistent sleep measured using automated scoring
   (numeric)

partial
   Latency to persistent sleep measured using semi-automated (partial)
   scoring (numeric)

Details
~~~~~~~

The dataset name has been kept as sleep_disorder_df to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the NeuroDataSets package and
assists users in identifying its specific characteristics. The suffix df
indicates that the dataset is a data frame. The original content has not
been modified in any way.

Source
~~~~~~

Data taken from the MVT package version 0.3-81
