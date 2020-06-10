============== ===============
KosteckiDillon R Documentation
============== ===============

Treatment of Migraine Headaches
-------------------------------

Description
~~~~~~~~~~~

Subset of data on migraine treatments collected by Tammy
Kostecki-Dillon.

Usage
~~~~~

::

   KosteckiDillon

Format
~~~~~~

A data frame with 4152 observations on 133 subjects for the following 9
variables.

``id``
   Patient id.

``time``
   time in days relative to the onset of treatment, which occurs at time
   0.

``dos``
   time in days from the start of the study, January 1 of the first year
   of the study.

``hatype``
   a factor with levels ``Aura`` ``Mixed`` ``No Aura``, the type of
   migraine experienced by a subject.

``age``
   at onset of treatment, in years.

``airq``
   a measure of air quality.

``medication``
   a factor with levels ``none`` ``reduced`` ``continuing``,
   representing subjects who discontinued their medication, who
   continued but at a reduced dose, or who continued at the previous
   dose.

``headache``
   a factor with levels ``no`` ``yes``.

``sex``
   a factor with levels ``female`` ``male``.

Details
~~~~~~~

The data consist of headache logs kept by 133 patients in a treatment
program in which bio-feedback was used to attempt to reduce migraine
frequency and severity. Patients entered the program at different times
over a period of about 3 years. Patients were encouraged to begin their
logs four weeks before the onset of treatment and to continue for one
month afterwards, but only 55 patients have data preceding the onset of
treatment.

Source
~~~~~~

Personal communication from Georges Monette (and adapted from his
description of the data).

References
~~~~~~~~~~

Kostecki-Dillon, T., Monette, G., and Wong, P. (1999). Pine trees,
comas, and migraines. *York University Institute for Social Research
Newsletter*, 14:2.

Examples
~~~~~~~~

::

   summary(KosteckiDillon)
