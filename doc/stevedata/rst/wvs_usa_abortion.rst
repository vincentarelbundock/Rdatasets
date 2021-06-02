================ ===============
wvs_usa_abortion R Documentation
================ ===============

Attitudes on the Justifiability of Abortion in the United States (World Values Survey, 1982-2011)
-------------------------------------------------------------------------------------------------

Description
~~~~~~~~~~~

A data set on attitudes about the justifiability of abortion in the
United States based on World Values Survey responses recorded across six
waves (from 1982 to 2011). I assembled this data frame probably around
2014 and routinely use it for in-class illustration about regression,
post-estimation simulation, quantities of interest, and how to think
about modeling a dependent variable that is on a 1-10 scale, but has
curious heaping patterns.

Usage
~~~~~

::

   wvs_usa_abortion

Format
~~~~~~

A data frame with 10387 observations on the following 16 variables.

``wvsccode``
   the country code for the United States (a numeric constant)

``wave``
   the survey wave

``year``
   the survey year corresponding to the survey wave

``aj``
   the justifiability of abortion on a 1-10 scale (1 = never
   justifiable; 10 = always justifiable)

``age``
   the age of the respondent in years

``collegeed``
   a dummy variable that equals 1 if the respondent graduated from
   college

``female``
   a dummy variable that equals 1 if the respondent is a woman

``unemployed``
   a dummy variable that equals 1 if the respondent is unemployed

``ideology``
   the ideological self-placement of the respondent on a 1-10 scale (1 =
   furthest to the left; 10 = furthest to the right)

``satisfinancial``
   the respondent's financial satisfaction with his/her life (1 = most
   dissatisfied; 10 = most satisfied)

``postma4``
   the post-materialist index for the respondent (-1 = materialist; 0 =
   mixed, 1 = post-materialist)

``cai``
   the child autonomy index, which ranges from -2 to 2

``trustmostpeople``
   can most people be trusted (1) or "(you) never can be too careful"
   (0)

``godimportant``
   the importance of God to the respondent on a 1-10 scale (1 = God is
   not at all important; 10 = God is most important)

``respectauthority``
   would more respect for authority be a welcome change to the United
   States?

``nationalpride``
   a dummy that equals 1 if the respondent is very proud to be an
   American.

Details
~~~~~~~

Data come from the World Values Survey. Note that the college education
variable is curiously ``NA`` until the third survey wave. The child
autonomy index ranges from -2 to 2 where increasing values indicate that
children should learn determination and independence over obedience and
religious faith. The ``respectauthority`` variable is coded where -1
means the respondent believes greater respect for authority in the
United States as a future change to the country would be a bad thing. 0
means the respondent doesn't mind such a change. 1 = the respondent
believes it would be a good thing.
