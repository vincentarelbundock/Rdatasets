======= ===============
CRSPday R Documentation
======= ===============

Daily Returns from the CRSP Database
------------------------------------

Description
~~~~~~~~~~~

daily observations from 1969-1-03 to 1998-12-31

*number of observations* : 2528

*observation* : production units

*country* : United States

Usage
~~~~~

::

   data(CRSPday)

Format
~~~~~~

A dataframe containing :

year
   the year

month
   the month

day
   the day

ge
   the return for General Electric,
   `PERMNO <http://www.crsp.org/products/documentation/crsp-link>`__
   12060

ibm
   the return for IBM, PERMNO 12490

mobil
   the return for Mobil Corporation, PERMNO 15966

crsp
   the return for the CRSP value-weighted index, including dividends

Source
~~~~~~

Center for Research in Security Prices, Graduate School of Business,
University of Chicago, 725 South Wells - Suite 800, Chicago, Illinois
60607, http://www.crsp.org.

References
~~~~~~~~~~

Davidson, R. and James G. MacKinnon (2004) *Econometric Theory and
Methods*, New York, Oxford University Press, chapter 7, 9 and 15.

See Also
~~~~~~~~

``Index.Source``, ``Index.Economics``, ``Index.Econometrics``,
``Index.Observations``,

``Index.Time.Series``
