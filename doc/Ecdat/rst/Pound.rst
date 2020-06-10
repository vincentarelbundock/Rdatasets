===== ===============
Pound R Documentation
===== ===============

Pound-dollar Exchange Rate
--------------------------

Description
~~~~~~~~~~~

weekly observations from 1975 to 1989

*number of observations* : 778

*observation* : country

*country* : Germany

Usage
~~~~~

::

   data(Pound)

Format
~~~~~~

A dataframe containing :

date
   the date of the observation (19850104 is January, 4, 1985)

s
   the ask price of the dollar in units of Pound in the spot market on
   Friday of the current week

f
   the ask price of the dollar in units of Pound in the 30-day forward
   market on Friday of the current week

s30
   the bid price of the dollar in units of Pound in the spot market on
   the delivery date on a current forward contract

Source
~~~~~~

Bekaert, G. and R. Hodrick (1993) “On biases in the measurement of
foreign exchange risk premiums”, *Journal of International Money and
Finance*, **12**, 115-138.

References
~~~~~~~~~~

Hayashi, F. (2000) *Econometrics*, Princeton University Press,
http://fhayashi.fc2web.com/hayashi_econometrics.htm, chapter 6, 438-443.

See Also
~~~~~~~~

``DM``, ``Yen``, ``Index.Source``, ``Index.Economics``,
``Index.Econometrics``, ``Index.Observations``, ``Index.Time.Series``
