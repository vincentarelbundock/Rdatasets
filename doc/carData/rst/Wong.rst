==== ===============
Wong R Documentation
==== ===============

Post-Coma Recovery of IQ
------------------------

Description
~~~~~~~~~~~

The ``Wong`` data frame has 331 row and 7 columns. The observations are
longitudinal data on recovery of IQ after comas of varying duration for
200 subjects.

Usage
~~~~~

::

   Wong

Format
~~~~~~

This data frame contains the following columns:

``id``
   patient ID number.

``days``
   number of days post coma at which IQs were measured.

``duration``
   duration of the coma in days.

``sex``
   a factor with levels ``Female`` and ``Male``.

``age``
   in years at the time of injury.

``piq``
   performance (i.e., mathematical) IQ.

``viq``
   verbal IQ.

Details
~~~~~~~

The data are from Wong, Monette, and Weiner (2001) and are for 200
patients who sustained traumatic brain injuries resulting in comas of
varying duration. After awakening from their comas, patients were
periodically administered a standard IQ test, but the average number of
measurements per patient is small (331/200 = 1.7).

Source
~~~~~~

Wong, P. P., Monette, G., and Weiner, N. I. (2001) Mathematical models
of cognitive recovery. *Brain Injury*, **15**, 519–530.

References
~~~~~~~~~~

Fox, J. (2016) *Applied Regression Analysis and Generalized Linear
Models*, Third Edition. Sage.

Examples
~~~~~~~~

::

   summary(Wong)
