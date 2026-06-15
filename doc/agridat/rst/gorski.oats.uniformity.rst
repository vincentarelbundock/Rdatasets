====================== ===============
gorski.oats.uniformity R Documentation
====================== ===============

Uniformity trial of oats in Poland
----------------------------------

Description
~~~~~~~~~~~

Uniformity trial of oats in Poland

Usage
~~~~~

.. code:: R

   data("gorski.oats.uniformity")

Format
~~~~~~

A data frame with 500 observations on the following 4 variables.

``row``
   row ordinate

``col``
   column ordinate

``yield``
   yield, kg

``field``
   field

Details
~~~~~~~

The authors were from Agricultural University of Dublany near Lemberg.
(Originally Poland, but now Ukraine.) The experiments were carried out
on the fields of the Dublany estate.

Gorski & Stefaniow (1917) does not show the layout of the plots. They
say more details are given in the journal "Roczniki nauk rolniczych".
(Not yet found) Kotowski (1924) does shows the layout of the plots.

Field F1

The loamy field was sown with early oats "Rychlik mikulicki". There were
measured 200 plots of 9 square meters each and harvested them in one day
with a sickle. Two days later, the harvest yield from each plot was
determined. We were unable to determine the harvest from plots no. 161,
163, 182, so only the harvest from 197 (instead of 200) plots was
processed.

Field width: 10 plots x 3 m = 30 m

Field length: 20 plots x 3 m = 60 m

Field F2

The loess field used "Ligowo" oats on 300 9 sq m plots.

Transcription details: Data were typed and checked by K.Wright
2024.12.11. Text translation via Google Translate. The actual plot
dimensions are not given, but 3m by 3m is a good approximation or may be
exact.

Source
~~~~~~

Gorski, M. and Stefaniow, M. (1917). Die Anwendbarkeit der
Wahrscheinlichkeits-rechnung bei Feldversuchen. Die Landwirtschaflichen
Versuchsstationen, 90, 225-240.
https://www.google.com/books/edition/Die_Landwirtschaftlichen_versuchs_statio/qr8jAQAAMAAJ?hl=en&gbpv=1&pg=RA1-PA225

References
~~~~~~~~~~

Kotowski, Feliks. (1924). A criterion of field homegenity and its value
in field trials. (English title). Roczniki Nauk Rolniczych, 11, 26-35.
https://www.google.com/books/edition/Roczniki_nauk_rolniczych/mz0iAQAAIAAJ
Polish version on page 26. English abstract on page 35.

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
   libs(agridat)
   data(gorski.oats.uniformity)
   dat <- gorski.oats.uniformity

   libs(desplot)
   desplot(dat, yield~col*row, subset=field=="F1",
           flip=TRUE, tick=TRUE, aspect=(20)/(10),
           main="gorski.oats.uniformity - field F1")
   desplot(dat, yield~col*row, subset=field=="F2",
           flip=TRUE, tick=TRUE, aspect=(20)/(15),
           main="gorski.oats.uniformity - field F2")

   ## End(Not run)
