==== ===============
cgd0 R Documentation
==== ===============

Chronic Granulotomous Disease data
----------------------------------

Description
~~~~~~~~~~~

Data are from a placebo controlled trial of gamma interferon in chronic
granulotomous disease (CGD). Contains the data on time to serious
infections observed through end of study for each patient.

Usage
~~~~~

.. code:: R

   cgd0

Format
~~~~~~

id
   subject identification number

center
   enrolling center

random
   date of randomization

treatment
   placebo or gamma interferon

sex
   sex

age
   age in years, at study entry

height
   height in cm at study entry

weight
   weight in kg at study entry

inherit
   pattern of inheritance

steroids
   use of steroids at study entry,1=yes

propylac
   use of prophylactic antibiotics at study entry

hos.cat
   a categorization of the centers into 4 groups

futime
   days to last follow-up

etime1-etime7
   up to 7 infection times for the subject

Details
~~~~~~~

The ``cgdraw`` data set (this one) is in the form found in the
references, with one line per patient and no recoding of the variables.

The ``cgd`` data set has been further processed so as to have one line
per event, with covariates such as center recoded as factors to include
meaningful labels.

Source
~~~~~~

Fleming and Harrington, Counting Processes and Survival Analysis,
appendix D.2.

See Also
~~~~~~~~

``cgd``
