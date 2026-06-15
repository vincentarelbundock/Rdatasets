================ ===============
ASD_risks_tbl_df R Documentation
================ ===============

Autism Spectrum Disorder (ASD) Risk Factors in Children
-------------------------------------------------------

Description
~~~~~~~~~~~

This dataset, ASD_risks_tbl_df, is a tibble containing information on
various clinical, behavioral, genetic, and developmental factors
associated with the risk of developing Autism Spectrum Disorder (ASD)
traits in children. The dataset consists of 1,985 observations and 28
variables, including the Autism Spectrum Quotient items (A1–A10), Social
Responsiveness Scale, Qchat-10 score, Childhood Autism Rating Scale, and
multiple indicators related to speech, learning, genetics, mental
health, developmental delays, behavioral issues, demographics, and
family history. The final column indicates whether the child is expected
to develop ASD traits in the future (0 or 1).

Usage
~~~~~

.. code:: R

   data(ASD_risks_tbl_df)

Format
~~~~~~

A tibble with 1,985 observations and 28 variables:

CASE_NO_PATIENT'S
   Patient case identifier (numeric)

A1
   Autism Spectrum Quotient item A1 (numeric)

A2
   Autism Spectrum Quotient item A2 (numeric)

A3
   Autism Spectrum Quotient item A3 (numeric)

A4
   Autism Spectrum Quotient item A4 (numeric)

A5
   Autism Spectrum Quotient item A5 (numeric)

A6
   Autism Spectrum Quotient item A6 (numeric)

A7
   Autism Spectrum Quotient item A7 (numeric)

A8
   Autism Spectrum Quotient item A8 (numeric)

A9
   Autism Spectrum Quotient item A9 (numeric)

A10_Autism_Spectrum_Quotient
   Autism Spectrum Quotient item A10 (numeric)

Social_Responsiveness_Scale
   Social Responsiveness Scale score (numeric)

Age_Years
   Age in years (numeric)

Qchat_10_Score
   Q-CHAT-10 score (numeric)

Speech Delay/Language Disorder
   Indicator of speech delay or language disorder (character)

Learning disorder
   Indicator of learning disorder (character)

Genetic_Disorders
   Presence of genetic disorders (character)

Depression
   Presence of depression (character)

Global developmental delay/intellectual disability
   Indicator of global developmental delay or intellectual disability
   (character)

Social/Behavioural Issues
   Presence of social or behavioral issues (character)

Childhood Autism Rating Scale
   Childhood Autism Rating Scale score (numeric)

Anxiety_disorder
   Presence of anxiety disorder (character)

Sex
   Sex of the participant (character)

Ethnicity
   Ethnicity of the participant (character)

Jaundice
   History of jaundice (character)

Family_mem_with_ASD
   Indicator of family member with ASD (character)

Who_completed_the_test
   Relationship of the respondent who completed the test (character)

ASD_traits
   Indicator of whether the child is expected to develop ASD traits
   (character)

Details
~~~~~~~

The dataset name has been kept as ASD_risks_tbl_df to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the NeuroDataSets package and
assists users in identifying its specific characteristics. The suffix
tbl_df indicates that the dataset is a tibble (a modern data frame). The
original content has not been modified in any way. Variable names and
values are provided exactly as they appear in the source.

Source
~~~~~~

Data taken from Kaggle:
https://www.kaggle.com/datasets/uppulurimadhuri/dataset
