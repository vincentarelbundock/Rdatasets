======== ===============
Spengler R Documentation
======== ===============

Project Talent data set from Marion Spengler and Rodica Damian
--------------------------------------------------------------

Description
~~~~~~~~~~~

Project Talent gave 440,000 US high school students a number of
personality and ability tests. Of these, the data fror 346,000 were
available for followup. Subsequent followups were collected 11 and 50
years later. Marion Spengler and her colleagues Rodica Damian, and Brent
Roberts reported on the stability and change across 50 years of
personality and ability. Here is the correlation matrix of 25 of their
variables (Spengler) as well as a slightly different set of 19 variables
(Damian). This is a nice example of mediation and regression from a
correlation matrix. (Temporarily copied from psychTools to pass CRAN
checks. )

Usage
~~~~~

::

   data("Damian")

Format
~~~~~~

A 25 x 25 correlation matrix of demographic, personality, and ability
variables, based upon 346,660 participants.

``Race/Ethnicity``
   1 = other, 2 = white/caucasian

``Sex``
   1=Male, 2=Female

``Age``
   Cohort =9th grade, 10th grade, 11th grade, 12th grade

``Parental``
   Parental SES based upon 9 questions of home value, family income,
   etc.

``IQ``
   Standardized composite of Verbal, Spatial and Mathematical

``Sociability etc.``
   10 scales based upon prior work by Damian and Roberts

``Maturity``
   A higher order factor from the prior 10 scales

``Extraversion``
   The second higher order factor

``Interest``
   Self reported interest in school

``Reading``
   Self report reading skills

``Writing``
   Self report writing skills

``Responsible``
   Self reported responsibility scale

``Ed.11``
   Education level at 11 year followup

``Educ.50``
   Education level at 50 year followup

``OccPres.11``
   Occupational Prestige at 11 year followup

``OccPres.50``
   Occupational Prestige at 50 year followup

``Income.11``
   Income at 11 year followup

``Income.50``
   Income at 50 year followup

Details
~~~~~~~

Data from Project Talent was collected in 1960 on a representative
sample of American high school students. Subsequent follow up 11 and 50
years later are reported by Spengler et al (2018) and others.

Source
~~~~~~

Marion Spengler, supplementary material to Damian et al. and Spengler et
al.

References
~~~~~~~~~~

Rodica Ioana Damian and Marion Spengler and Andreea Sutu and Brent W.
Roberts, 2018, Sixteen going on sixty-six: A longitudinal study of
personality stability and change across 50 years Journal of Personality
and Social Psychology

Marian Spengler and Rodica Ioana Damian and Brent W. Roberts (2018), How
you behave in school predicts life success above and beyond family
background, broad traits, and cognitive ability Journal of Personality
and Social Psychology, 114 (4) 600-636

Examples
~~~~~~~~

::

   data(Damian)
   Spengler.stat #show the basic descriptives of the original data set
   psych::lowerMat(Spengler[psych::cs(IQ,Parental,Ed.11,OccPres.50),
                           psych::cs(IQ,Parental,Ed.11,OccPres.50)])
   psych::setCor(OccPres.50 ~ IQ + Parental + (Ed.11),data=Spengler)
   #we reduce the number of subjects for faster replication in this example
   mod <- psych::mediate(OccPres.50 ~ IQ + Parental + (Ed.11),data=Spengler,
          n.iter=50,n.obs=1000) #for speed
   summary(mod)
