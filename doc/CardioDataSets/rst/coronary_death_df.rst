================= ===============
coronary_death_df R Documentation
================= ===============

High vs Moderate Statins for MI Prevention
------------------------------------------

Description
~~~~~~~~~~~

This dataset, coronary_death_df, is a data frame containing information
from 4 clinical trials comparing intensive (high dose) versus moderate
(standard dose) statin therapy for preventing coronary death or
myocardial infarction. It includes data on treatment outcomes across
multiple endpoints.

Usage
~~~~~

.. code:: R

   data(coronary_death_df)

Format
~~~~~~

A data frame with 4 observations and 16 variables:

trial
   Trial identifier (character vector)

pop
   Patient population description (character vector)

nt
   Number of patients in treatment group (integer vector)

nc
   Number of patients in control group (integer vector)

ep1t
   Endpoint 1 events in treatment group (integer vector)

ep1c
   Endpoint 1 events in control group (integer vector)

ep2t
   Endpoint 2 events in treatment group (integer vector)

ep2c
   Endpoint 2 events in control group (integer vector)

ep3t
   Endpoint 3 events in treatment group (integer vector)

ep3c
   Endpoint 3 events in control group (integer vector)

ep4t
   Endpoint 4 events in treatment group (integer vector)

ep4c
   Endpoint 4 events in control group (integer vector)

ep5t
   Endpoint 5 events in treatment group (integer vector)

ep5c
   Endpoint 5 events in control group (integer vector)

ep6t
   Endpoint 6 events in treatment group (integer vector)

ep6c
   Endpoint 6 events in control group (integer vector)

Details
~~~~~~~

The dataset name has been kept as 'coronary_death_df' to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the CardioDataSets package and
assists users in identifying its specific characteristics. The suffix
'df' indicates that the dataset is a standard data frame. The original
content has not been modified in any way.

Source
~~~~~~

Data taken from the metadat package version 1.2-0
