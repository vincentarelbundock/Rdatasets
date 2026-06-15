======= ===============
leuk_df R Documentation
======= ===============

Survival Times and White Blood Counts for Leukaemia Patients
------------------------------------------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'leuk_df' to avoid confusion with
other datasets from packages in the R ecosystem and to follow the naming
conventions of the 'MedDataSets' package. The suffix '\_df' indicates
that this dataset is a data frame, helping to distinguish it from other
datasets within the package and from those in the broader R ecosystem.
The original content of the dataset has not been modified in any way.

Usage
~~~~~

.. code:: R

   data(leuk_df)

Format
~~~~~~

A data frame with 33 observations and 3 variables:

wbc
   An integer representing the white blood cell count (in thousands per
   microliter).

ag
   A factor indicating the treatment group (with 2 possible levels).

time
   An integer indicating the survival time (in days).

Details
~~~~~~~

This dataset contains survival times and white blood cell counts for
leukaemia patients, providing insights into the relationship between
blood counts and survival outcomes.

Source
~~~~~~

Data collected from clinical studies on leukaemia patients.
