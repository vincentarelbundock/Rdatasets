======== ===============
SampleFG R Documentation
======== ===============

Field Goal Attempts in the NFL
------------------------------

Description
~~~~~~~~~~~

A sample of 30 field goal attempts in the National Football League

Format
~~~~~~

A dataset with 30 observations on the following 13 variables.

============== ==============================================
``ID``         ID number
``PlayerID``   Code for player
``LastName``   Last name
``FirstName``  First name
``Year``       Year
``Team``       Abbreviation for team name
``Date``       Code for date: mmddyy
``FGAttempts`` Field goals attempted by the kicker that game
``FGMade``     Field goals made by the kicker that game
``Attempt``    Which attempt during the game?
``Result``     ``1``\ =made the field goal or ``0``\ =missed
``Yards``      Number of yards for the field goal attempt
``Block``      ``1``\ =attempt blocked or ``0``\ =not blocked
\              
============== ==============================================

Details
~~~~~~~

This is a subset of just 30 field goal attempts selected at random from
the larger sample of attempts made by NFL kickers that is summarized in
FGByDistance.

Source
~~~~~~

We thank Sean Forman and Doug Drinen of Sports Reference LLC for
providing us with the NFL field goal data set.
