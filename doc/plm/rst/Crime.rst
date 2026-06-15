===== ===============
Crime R Documentation
===== ===============

Crime in North Carolina
-----------------------

Description
~~~~~~~~~~~

a panel of 90 observational units (counties) from 1981 to 1987

Format
~~~~~~

A data frame containing :

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
   people per square mile

taxpc
   tax revenue per capita

region
   factor. One of 'other', 'west' or 'central'.

smsa
   factor. (Also called "urban".) Does the individual reside in a SMSA
   (standard metropolitan statistical area)?

pctmin
   percentage minority in 1980

wcon
   weekly wage in construction

wtuc
   weekly wage in transportation, utilities, communications

wtrd
   weekly wage in wholesale and retail trade

wfir
   weekly wage in finance, insurance and real estate

wser
   weekly wage in service industry

wmfg
   weekly wage in manufacturing

wfed
   weekly wage in federal government

wsta
   weekly wage in state government

wloc
   weekly wage in local government

mix
   offence mix: face-to-face/other

pctymle
   percentage of young males (between ages 15 to 24)

lcrmrte
   log of crimes committed per person

lprbarr
   log of 'probability' of arrest

lprbconv
   log of 'probability' of conviction

lprbpris
   log of 'probability' of prison sentence

lavgsen
   log of average sentence, days

lpolpc
   log of police per capita

ldensity
   log of people per square mile

ltaxpc
   log of tax revenue per capita

lpctmin
   log of percentage minority in 1980

lwcon
   log of weekly wage in construction

lwtuc
   log of weekly wage in transportation, utilities, communications

lwtrd
   log of weekly wage in wholesale and retail trade

lwfir
   log of weekly wage in finance, insurance and real estate

lwser
   log of weekly wage in service industry

lwmfg
   log of weekly wage in manufacturing

lwfed
   log of weekly wage in federal government

lwsta
   log of weekly wage in state government

lwloc
   log of weekly wage in local government

lmix
   log of offence mix: face-to-face/other

lpctymle
   log of percentage of young males (between ages 15 to 24)

Details
~~~~~~~

*total number of observations* : 630

*observation* : regional

*country* : United States

The variables l\* (lcrmrte, lprbarr, ...) contain the pre-computed
logarithms of the base variables as found in the original data set. Note
that these values slightly differ from what R's log() function yields
for the base variables. In order to reproduce examples from the
literature, the pre-computed logs need to be used, otherwise the results
differ slightly.

Source
~~~~~~

Journal of Applied Econometrics Data Archive (complements Baltagi
(2006)):

http://qed.econ.queensu.ca/jae/2006-v21.4/baltagi/

Online complements to Baltagi (2001):

https://www.wiley.com/legacy/wileychi/baltagi/

Online complements to Baltagi (2013):

https://bcs.wiley.com/he-bcs/Books?action=resource&bcsId=4338&itemId=1118672321&resourceId=13452

See also Journal of Applied Econometrics data archive entry for Baltagi
(2006) at http://qed.econ.queensu.ca/jae/2006-v21.4/baltagi/.

References
~~~~~~~~~~

Cornwell C, Trumbull WN (1994). “Estimating the economic model of crime
with panel data.” *Review of Economics and Statistics*, **76**, 360–366.

Baltagi BH (2006). “Estmating an economic model of crime using panel
data from North Carolina.” *Journal of Applied Econometrics*,
**21**\ (4).

Baltagi BH (2001). *Econometric Analysis of Panel Data*, 3rd edition.
John Wiley and Sons ltd.

Baltagi BH (2013). *Econometric Analysis of Panel Data*, 5th edition.
John Wiley and Sons ltd.
