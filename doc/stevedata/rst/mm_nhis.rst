======= ===============
mm_nhis R Documentation
======= ===============

Data from the 2009 National Health Interview Survey (NHIS)
----------------------------------------------------------

Description
~~~~~~~~~~~

These are data from the 2009 NHIS survey. People who have read
*Mastering 'Metrics* should recognize these data. They're featured
prominently in that book and the authors' discussion of random
assignment and experiments.

Usage
~~~~~

::

   mm_nhis

Format
~~~~~~

A data frame with 18790 observations on the following 10 variables.

``fml``
   is the respondent a woman?

``hi``
   a numeric vector for whether respondent has at least some health
   insurance

``hlth``
   a numeric vector for a health index, broadly understood

``nwhite``
   is the respondent not white?

``age``
   the respondent's age in years

``yedu``
   the respondent's total years of education

``famsize``
   the size of the respondent's family

``empl``
   is the respondent employed

``inc``
   the respondent's household/family income

``perweight``
   a numeric vector for weight

Details
~~~~~~~

Data are already cleaned in a way that facilitates an easy replication
of Table 1.1 in *Mastering 'Metrics*. Check
http://www.masteringmetrics.com for more information.

Source
~~~~~~

National Health Interview Survey (2009).
