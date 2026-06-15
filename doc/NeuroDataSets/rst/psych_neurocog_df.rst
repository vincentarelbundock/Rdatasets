================= ===============
psych_neurocog_df R Documentation
================= ===============

Psychotic Cognition
-------------------

Description
~~~~~~~~~~~

This dataset, psych_neurocog_df, is a data frame containing
comprehensive neurocognitive assessments from a study comparing
performance patterns in schizophrenia, schizoaffective disorder, and
controls. The data includes 242 observations across multiple cognitive
domains using a psychosis-specific neurocognitive battery.

Usage
~~~~~

.. code:: R

   data(psych_neurocog_df)

Format
~~~~~~

A data frame with 242 observations and 10 variables:

Dx
   Factor with 3 levels: Diagnostic group
   (Schizophrenia/Schizoaffective/Control)

Speed
   Integer: Processing speed score

Attention
   Integer: Attention/vigilance score

Memory
   Integer: Working memory score

Verbal
   Integer: Verbal learning score

Visual
   Integer: Visual learning score

ProbSolv
   Integer: Problem solving score

SocialCog
   Integer: Social cognition score

Age
   Integer: Participant age in years

Sex
   Factor with 2 levels: Participant sex

Details
~~~~~~~

The dataset name has been updated to 'psych_neurocog_df' for brevity and
clarity, while maintaining consistency with the naming style of the
NeuroDataSets package. The suffix 'df' indicates that the dataset is a
data frame.

Source
~~~~~~

Data taken from the heplots package version 1.7.4. Original research:
Hartman, L.I. (2016) Schizophrenia and Schizoaffective Disorder: One
Condition or Two? Unpublished PhD dissertation, York University.
