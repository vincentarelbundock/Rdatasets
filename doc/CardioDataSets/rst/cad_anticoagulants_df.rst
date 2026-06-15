===================== ===============
cad_anticoagulants_df R Documentation
===================== ===============

Anticoagulants for CAD Patients
-------------------------------

Description
~~~~~~~~~~~

This dataset, cad_anticoagulants_df, is a data frame containing
information from 34 clinical trials examining the effectiveness of oral
anticoagulants in patients with coronary artery disease. It includes
data on treatment outcomes comparing anticoagulant therapy with control
groups.

Usage
~~~~~

.. code:: R

   data(cad_anticoagulants_df)

Format
~~~~~~

A data frame with 34 observations and 9 variables:

study
   Study identifier (character vector)

year
   Year of publication (integer vector)

intensity
   Intensity of anticoagulation treatment (character vector)

asp.t
   Aspirin use in treatment group (integer vector)

asp.c
   Aspirin use in control group (integer vector)

ai
   Number of events in treatment group (integer vector)

n1i
   Total number of participants in treatment group (integer vector)

ci
   Number of events in control group (integer vector)

n2i
   Total number of participants in control group (integer vector)

Details
~~~~~~~

The dataset name has been kept as 'cad_anticoagulants_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the CardioDataSets package and
assists users in identifying its specific characteristics. The suffix
'df' indicates that the dataset is a standard data frame. The original
content has not been modified in any way.

Source
~~~~~~

Data taken from the metadat package version 1.2-0
