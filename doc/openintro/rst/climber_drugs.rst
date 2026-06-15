============= ===============
climber_drugs R Documentation
============= ===============

Climber Drugs Data.
-------------------

Description
~~~~~~~~~~~

Anonymous data was collected from urine samples at huts along the climb
of Mont Blanc. Several types of drugs were tested, and proportions were
reported.

Usage
~~~~~

.. code:: R

   climber_drugs

Format
~~~~~~

A data frame with 211 rows and 6 variables.

positive_sample
   Idendification number of a specific urine sample.

hut
   Location where the sample was taken.

substance
   Substance detected to be present in the urine sample.

concentration
   Amount of substance found measured in ng/ml.

screening_analysis
   Indicates that the concentration was determined by screening
   analysis.

concomitant
   Indicates that this substance was always detected concomitantly with
   the previous one, within the same urine sample.

Source
~~~~~~

`PLOS One - Drug Use on Mont Blanc: A Study Using Automated Urine
Collection <https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0156786#sec012>`__

Examples
~~~~~~~~

.. code:: R

   library(dplyr)

   # Calculate the average concentration of each substance and number of occurrences.
   climber_drugs |>
     group_by(substance) |>
     summarize(count = n(), mean_con = mean(concentration))

   # Proportion samples in which each substance was detected.
   climber_drugs |>
     group_by(substance) |>
     summarize(prop = n() / 154)
