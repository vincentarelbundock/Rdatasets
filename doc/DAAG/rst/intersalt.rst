========= ===============
intersalt R Documentation
========= ===============

Blood pressure versus Salt; inter-population data
-------------------------------------------------

Description
~~~~~~~~~~~

Median blood pressure, as a fuction of salt intake, for each of 52 human
populations.

Usage
~~~~~

::

   intersalt

Format
~~~~~~

A data frame with 52 observations on the following 4 variables.

``b``
   a numeric vector

``bp``
   mean diastolic blood pressure (mm Hg)

``na``
   mean sodium excretion (mmol/24h)

``country``
   a character vector

Details
~~~~~~~

For each population took a sample of 25 males and 25 females from each
decade in the age range 20 - 50, i.e. 200 individuals in all.

Source
~~~~~~

Intersalt Cooperative Research Group. 1988. Intersalt: an international
study of electrolyte excretion and blood pressure: results for 24 hour
urinary sodium and potassium excretion. *British Medical Journal* 297:
319-328.

References
~~~~~~~~~~

Maindonald, J.H. *The Design of Research Studies ? A Statistical
Perspective*, viii + 109pp. Graduate School Occasional Paper 00/2,
Australian National University 2000.

Examples
~~~~~~~~

::

   data(intersalt)
   plot(bp ~ na, data=intersalt, xlab="Median sodium excretion (mmol/24h)",
        ylab="Median diatoluc blood pressure (mm Hg)")
