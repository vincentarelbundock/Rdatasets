=========== ===============
anes_vote84 R Documentation
=========== ===============

Simple Data for a Simple Model of Individual Voter Turnout (ANES, 1984)
-----------------------------------------------------------------------

Description
~~~~~~~~~~~

This is a simple data set for estimating a simple model on voter turnout
from the 1984 American National Election Studies (ANES) 1984
time-series.

Usage
~~~~~

::

   anes_vote84

Format
~~~~~~

A data frame with 2257 observations on the following 9 variables.

``uid``
   a unique identifier for the respondent

``stateabb``
   the state where the respondent lives (as an abbreviation)

``vote``
   whether the respondent voted (1 = yes; 0 = no)

``age``
   the age of the respondent

``educ``
   the education-level of the respondent. See details section for more.

``female``
   whether the respondent is a woman (1 = female; 0 = male)

``south``
   does the respondent live in the south (1 = yes; 0 = no)

``polint``
   the political interest of the respondent in the campaigns (-1 = not
   much interested; 0 = somewhat interested; 1 = very much interested)

``govrace``
   did the respondent's state have a gubernatorial election that same
   November (1 = yes; 0 = no)

Details
~~~~~~~

The ``vote`` variable is deliberately coded where those with a value of
1 are respondents who said they voted and the ANES was able to confirm
that with voter registration records. There are purportedly 85 responses
in this raw variable where the respondent said they voted, but this
could not be confirmed from registration records. Those cases are
recorded as ``NA``. The ``educ`` variable ranges from 1 (finished 8th
grade or less than that) to 10 (respondent holds an advanced degree).
The ``uid`` variable is a simple sequence variable ranging from 1 to
2257 and is calculated on the original 1984 time-series study (May 3,
1999 version) before other recoding was done. This should allow some
reproducibility for an interested user.

Source
~~~~~~

Data come from ANES's (1984) time series.
