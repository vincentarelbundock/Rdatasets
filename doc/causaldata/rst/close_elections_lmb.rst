=================== ===============
close_elections_lmb R Documentation
=================== ===============

A close-elections regression discontinuity study from Lee, Moretti, and Butler (2004)
-------------------------------------------------------------------------------------

Description
~~~~~~~~~~~

This data comes from a close-elections regression discontinuity study
from Lee, Moretti, and Butler (2004). The design is intended to test
convergence and divergence in policy. Major effects of electing someone
from a particular party on policy outcomes \*in a close race\* indicates
that the victor does what they want. Small or null effects indicate that
the electee moderates their position towards their nearly-split
electorate.

Usage
~~~~~

::

   close_elections_lmb

Format
~~~~~~

A data frame with 13588 rows and 9 variables

state
   ICPSR state code

district
   district code

id
   Election ID

score
   ADA voting score (higher = more liberal)

year
   Year of election

demvoteshare
   Democratic share of the vote

democrat
   Democratic victory

lagdemocrat
   Lagged Democratic victory

lagdemvoteshare
   Lagged democratic share of the vote

Details
~~~~~~~

This data is used in the *Regression Discontinuity* chapter of *Causal
Inference: The Mixtape* by Cunningham.

Source
~~~~~~

Lee, David S., Enrico Moretti, and Matthew J. Butler. 2004. “Do Voters
Affect or Elect Policies: Evidence from the U.S. House.” Quarterly
Journal of Economics 119 (3): 807–59.

References
~~~~~~~~~~

Cunningham. 2021. Causal Inference: The Mixtape. Yale Press.
https://mixtape.scunning.com/index.html.
