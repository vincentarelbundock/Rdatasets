=========== ===============
bacteria_df R Documentation
=========== ===============

Presence of Bacteria after Drug Treatments
------------------------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'bacteria_df' to avoid confusion
with other datasets from packages in the R ecosystem and to follow the
naming conventions of the 'MedDataSets' package. The suffix '\_df'
indicates that this dataset is a data frame, helping to distinguish it
from other datasets within the package and from those in the broader R
ecosystem. The original content of the dataset has not been modified in
any way.

Usage
~~~~~

.. code:: R

   data(bacteria_df)

Format
~~~~~~

A data frame with 220 observations and 6 variables:

y
   A factor indicating the presence (1) or absence (0) of bacteria.

ap
   A factor indicating the result of an antibiotic susceptibility test
   (yes/no).

hilo
   A factor indicating a high or low bacterial load (high/low).

week
   An integer representing the week of treatment.

ID
   A factor representing the unique identifier for each patient (with 50
   possible levels).

trt
   A factor indicating the treatment group (with 3 possible levels).

Details
~~~~~~~

This dataset contains information on the presence of bacteria in
patients after receiving various drug treatments, including the
treatment group and duration of treatment.

Source
~~~~~~

Data collected from clinical trials on antibiotic treatments and their
effects on bacterial presence.
