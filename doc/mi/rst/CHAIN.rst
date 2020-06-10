===== ===============
CHAIN R Documentation
===== ===============

Subset of variables from the CHAIN project
------------------------------------------

Description
~~~~~~~~~~~

The CHAIN project was a longitudinal cohort study of people living with
HIV in New York City, which was recruited in 1994 from a large number of
medical care and social service agencies serving HIV in New York City.
This subset of data pertain to the sixth round of interviews.

Usage
~~~~~

::

   data(CHAIN)

Format
~~~~~~

A ``data.frame`` with 532 observations on the following 8 variables.

``log_virus``
   log of self reported viral load level, where zero represents an
   undetectable level.

``age``
   age at time of the interview

``income``
   annual family income in 10 intervals

``healthy``
   a continuous scale of physical health with a theoretical range
   between 0 and 100 where better health is associated with higher scale
   values

``mental``
   a binary measure of poor mental health ( 1=Yes, 0=No )

``damage``
   ordered interval for the CD4 count, which is an indicator of how much
   damage HIV has caused to the immune system

``treatment``
   a three-level ordered variable: 0=Not currently taking HAART (Highly
   Active AntiretRoviral Therapy) 1=taking HAART but nonadherent,
   2=taking HAART and adherent

Details
~~~~~~~

A missing value in the log virus load level was assigned to individuals
who either could not recall their viral load level, did not have a viral
load test in the six month preceding the interview, or reported their
viral loads as "good" or "bad".

Source
~~~~~~

http://cchps.columbia.edu/research.cfm

References
~~~~~~~~~~

Messeri P, Lee G, Abramson DA, Aidala A, Chiasson MA, Jones JD. (2003).
“Antiretroviral therapy and declining AIDS mortality in New York City”.
*Medical Care* 41:512–521.
