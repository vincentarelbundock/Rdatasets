============= ===============
close_college R Documentation
============= ===============

Data from Card (1995) to estimate the effect of college education on earnings
-----------------------------------------------------------------------------

Description
~~~~~~~~~~~

Data from the National Longitudinal Survey Young Men Cohort. This data
is used to estimate the effect of college education on earnings, using
the presence of a nearby (in-county) college as an instrument for
college attendance.

Usage
~~~~~

::

   close_college

Format
~~~~~~

A data frame with 3010 rows and 8 variables

lwage
   Log wages

educ
   Years of education

exper
   Years of work experience

black
   Race: Black

south
   In the southern United States

married
   Is married

smsa
   In a Standard Metropolitan Statistical Area (urban)

nearc4
   There is a four-year college in the county

Details
~~~~~~~

This data is used in the *Instrumental Variables* chapter of *Causal
Inference: The Mixtape* by Cunningham.

Source
~~~~~~

Card, David. 1995. “Aspects of Labour Economics: Essays in Honour of
John Vanderkamp.” In. University of Toronto Press.

References
~~~~~~~~~~

Cunningham. 2021. Causal Inference: The Mixtape. Yale Press.
https://mixtape.scunning.com/index.html.
