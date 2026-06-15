======== ===============
Parvin73 R Documentation
======== ===============

Economic Determinants of Political Unrest (Parvin, 1973)
--------------------------------------------------------

Description
~~~~~~~~~~~

A data set on the economic determinants of political unrest, for
replicating a publication from 1973.

Usage
~~~~~

.. code:: R

   Parvin73

Format
~~~~~~

A data frame with 26 observations on the following 9 variables.

``country``
   a character vector for a country name

``levviol``
   a numeric vector for the level of violence

``pci``
   a numeric vector for per capita income

``incdist``
   a numeric vector for income distribution

``d_pci``
   a numeric vector for per capita income growth

``sem``
   a numeric vector for socioeconomic mobility

``comint``
   a numeric vector for communication intensity

``concfac``
   a numeric vector for concentration factor

``pop``
   a numeric vector for population size

Details
~~~~~~~

The bulk of these data come from Russett's (1964) *World Handbook of
Political and Social Indicators*. The data themselves are transcribed
from the appendix of the article, which allows a replication of the
results that Parvin (1973) reports. You should read that article for
more information as to what's happening and for what purpose.

I did not catch Parvin (1973) mentioning this in the article, but there
must be some kind of additive constant in the level of violence variable
because the logarithmic transformations he reports would be undefined
for the observations (like Denmark) where the level of violence is zero.
The easiest way to approximate whatever Parvin (1973) did is to add .001
to the level of violence variable before taking its logarithmic
transformation. That would allow a near perfect replication of Table 1.

It should go without saying that the population reported for Belgium, in
the appendix, is likely a transcription error. Belgium's population is
reported here as 9184, not "91.84.00".

The United Arab Republic was the short-lived union of Egypt and Syria,
if you were curious what that is in the data.

References
~~~~~~~~~~

Parvin, Manoucher. 1973. "Economic Determinants of Political Unrest: An
Econometric Approach". *Journal of Conflict Resolution* 17(2): 271–96.
