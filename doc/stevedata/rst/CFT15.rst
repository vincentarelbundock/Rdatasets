===== ===============
CFT15 R Documentation
===== ===============

Randomization Inference in the Regression Discontinuity Design: An Application to Party Advantages in the U.S. Senate
---------------------------------------------------------------------------------------------------------------------

Description
~~~~~~~~~~~

This is the replication data for "Randomization Inference in the
Regression Discontinuity Design: An Application to Party Advantages in
the U.S. Senate", published in 2015 in *Journal of Causal Inference*. I
use these data to teach about regression discontinuity designs.

Usage
~~~~~

::

   CFT15

Format
~~~~~~

A data frame with 1390 observations on the following 9 variables.

``state``
   a numeric vector for the state. This is ultimately a categorical
   variable.

``year``
   a numeric vector for the year of the election.

``vote``
   a numeric vector for the Democratic vote share in the *next* election
   (i.e. six years later).

``margin``
   a numeric vector for the Democratic party's margin of victory in the
   statewide election. This is the running variable, in RDD parlance.

``class``
   a numeric vector for the class to which each Senate seat belongs.

``termshouse``
   a numeric vector for the Democratic candidate's cumulative number of
   terms previously served in the U.S. House.

``termssenate``
   a numeric vector for the Democratic candidate's cumulative number of
   terms previously served in the U.S. Senate.

``population``
   a numeric vector for the population of the Senate seat's state.

``treatment``
   a numeric vector that is 1 if ``margin`` > 0 and is 0 if ``margin`` <
   0.

Source
~~~~~~

Cattaneo, Matias D. and Brigham R. Frandsen and Rocio Titiunik. 2015.
"Randomization Inference in the Regression Discontinuity Design: An
Application to Party Advantages in the U.S. Senate". *Journal of Causal
Inference* 3(1): 1–24.

References
~~~~~~~~~~

Cattaneo, Matias D. and Brigham R. Frandsen and Rocio Titiunik. 2015.
"Randomization Inference in the Regression Discontinuity Design: An
Application to Party Advantages in the U.S. Senate". *Journal of Causal
Inference* 3(1): 1–24.

Calonico, Sebastian and Matias D. Cattaneo and Max H. Farrell and Rocio
Titiunik. 2017. "``rdrobust``: Software for regression-discontinuity
designs". *The Stata Journal* 17(2):372–404.
