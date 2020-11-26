============== ===============
anes_prochoice R Documentation
============== ===============

Abortion Attitudes (ANES, 2012)
-------------------------------

Description
~~~~~~~~~~~

A simple data set for in-class illustration about how to estimate and
interpret interactive relationships. The data here are deliberately
minimal for that end.

Usage
~~~~~

::

   anes_prochoice

Format
~~~~~~

A data frame with 5914 observations on the following 14 variables.

``version``
   version identifier from ANES

``caseid``
   time-series case identifier from ANES

``health``
   oppose/"NFNO"/favor [0:2] abortion if pregnancy would hurt woman

``fatal``
   oppose/"NFNO"/favor [0:2] abortion if pregnancy would cause woman to
   die

``incest``
   oppose/"NFNO"/favor [0:2] abortion if pregnancy was caused by incest

``rape``
   oppose/"NFNO"/favor [0:2] abortion if pregnancy was caused by rape

``bd``
   oppose/"NFNO"/favor [0:2] abortion if fetus would be born with
   serious birth defect

``fin``
   oppose/"NFNO"/favor [0:2] abortion if having child would impose
   financial hardship

``sex``
   oppose/"NFNO"/favor [0:2] abortion if the child will not be the sex
   the woman wants

``choice``
   oppose/"NFNO"/favor [0:2] abortion if woman chooses to have one

``pid``
   respondent's partisanship [0:2] (Democrat, Independent, Republican)

``knowspeaker``
   was the respondent able to correctly identify the Speaker of the
   House (John Boehner)

``addchoice``
   an additive scale of the abortion scores [0:16]

``lchoice``
   a continuous latent scale of pro-choice scores (from a simple graded
   response model)

Details
~~~~~~~

"NFNO" = "Neither Favor Nor Oppose"

Source
~~~~~~

Data come from ANES's (2012) time series.
