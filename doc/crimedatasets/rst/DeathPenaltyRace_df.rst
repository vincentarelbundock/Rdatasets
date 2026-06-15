=================== ===============
DeathPenaltyRace_df R Documentation
=================== ===============

Death Penalty and Race in Georgia
---------------------------------

Description
~~~~~~~~~~~

This dataset contains data collected by lawyers on convicted Black
murderers in the state of Georgia. The goal was to examine whether
convicted Black murderers whose victim was white were more likely to
receive the death penalty compared to those whose victim was Black,
accounting for the level of aggravation of the crime.

Usage
~~~~~

.. code:: R

   data(DeathPenaltyRace_df)

Format
~~~~~~

A data frame with 12 observations and 4 variables:

Aggravation
   Level of aggravation of the murder (integer). Categories range from 1
   (least serious) to 6 (most serious).

Victim
   Race of the victim (factor with 2 levels: "White" and "Black").

Death
   Number of cases where the death penalty was given (integer).

NoDeath
   Number of cases where the death penalty was not given (integer).

Details
~~~~~~~

The dataset name has been changed to 'DeathPenaltyRace_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the crimedatasets package and
assists users in identifying its specific characteristics. The suffix
'df' indicates that the dataset is a traditional data frame in R. The
original content has not been modified in any way.

Source
~~~~~~

Data collected on death penalty cases in Georgia.
