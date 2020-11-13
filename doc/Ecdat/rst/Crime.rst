===== ===============
Crime R Documentation
===== ===============

Crime in North Carolina
-----------------------

Description
~~~~~~~~~~~

a panel of 90 observations from 1981 to 1987

*number of observations* : 630

*observation* : regional

*country* : United States

Usage
~~~~~

::

   data(Crime)

Format
~~~~~~

A dataframe containing :

county
   county identifier

year
   year from 1981 to 1987

crmrte
   crimes committed per person

prbarr
   'probability' of arrest

prbconv
   'probability' of conviction

prbpris
   'probability' of prison sentence

avgsen
   average sentence, days

polpc
   police per capita

density
   hundreds of people per square mile

taxpc
   tax revenue per capita

region
   one of 'other', 'west' or 'central'

smsa
   'yes' or 'no' if in SMSA

pctmin
   percentage minority in 1980

wcon
   weekly wage in construction

wtuc
   weekly wage in ``trns, util, commun``

wtrd
   weekly wage in whole sales and retail trade

wfir
   weekly wage in finance, insurance and real estate

wser
   weekly wage in service industry

wmfg
   weekly wage in manufacturing

wfed
   weekly wage of federal employees

wsta
   weekly wage of state employees

wloc
   weekly wage of local governments employees

mix
   offense mix: face-to-face/other

pctymle
   percentage of young males

Note
~~~~

Thanks to Yungfong "Frank" Tang for identifying an error in the
description of "density", previously documented erroneously as only
"people per square mile".

Source
~~~~~~

Cornwell, C. and W.N. Trumbull (1994) “Estimating the economic model of
crime with panel data”, *Review of Economics and Statistics*, **76**,
360–366.

Baltagi, B. H. (2006) “Estimating an economic model of crime using panel
data from North Carolina”, *Journal of Applied Econometrics*, 21(4),
May/June 2006, pp. 543-547.

See also:
```CRIME4.DES`` <http://fmwww.bc.edu/ec-p/data/wooldridge/crime4.des>`__
and Baltagi in `JAE Data
Archive <http://qed.econ.queensu.ca/jae/datasets/baltagi003/>`__.

References
~~~~~~~~~~

Baltagi, Badi H. (2003) *Econometric analysis of panel data*, John Wiley
and sons, https://www.wiley.com/legacy/wileychi/baltagi/.

See Also
~~~~~~~~

``Index.Source``, ``Index.Economics``, ``Index.Econometrics``,
``Index.Observations``, ``Index.Time.Series``, ``Crime``
