========================== ===============
kotowski.potato.uniformity R Documentation
========================== ===============

Uniformity trial of potato in Poland.
-------------------------------------

Description
~~~~~~~~~~~

Uniformity trial of potato in Poland.

Usage
~~~~~

.. code:: R

   data("kotowski.potato.uniformity")

Format
~~~~~~

A data frame with 152 observations on the following 5 variables.

``field``
   field name

``row``
   row ordinate

``col``
   column ordinate

``yield``
   yield per plot, kg

``starch``
   starch content per plot, percent

Details
~~~~~~~

Kotowski (Google translate): I examined the experimental field of the
Vegetable Cultivation and Breeding Plant in Skierniewice. The material
was provided by "Wohltmany" Lochowa potatoes. They were planted on 5 May
1922 on two adjacent plots, combined into one complex; the soil was
strong, "even" on the surface, not supplied with manure or mineral
fertilizers for 3 years, the previous crop was two-year clover ploughed
in autumn. The development of potatoes, initially weak, due to drought,
later (from August) much better. They were dug on 12 Oct in such a way
that 48 plots were marked out on one plot (field 1), and 104 plots on
the other (field 2); the plot was 10 m long and 5 rows of potatoes wide,
50 cm apart, so the plot area should theoretically have been 25 sq m,
but in reality it could have had minor deviations. The entire number of
tufts (tubers?) was weighed from each plot, and then the starch was
determined twice on Reimann's scales immediately after the digging was
finished.

Field F1 width: 12 plots \* 2.5 m = 30 m

Field F1 length: 4 plots \* 10m = 40 m

Field F2 width: 26 plots \* 2.5 m = 67 m

Field F2 length: 4 plots \* 10m = 40 m

Transcription details: Data typed by K.Wright 2024.12.09. Text
translation via Google Translate.

Source
~~~~~~

Kotowski, Feliks. (1924). A criterion of field homegenity and its value
in field trials. (English title). Roczniki Nauk Rolniczych, 11, 26-35.
https://www.google.com/books/edition/Roczniki_nauk_rolniczych/mz0iAQAAIAAJ
Polish version on page 26. English abstract on page 35.

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
     libs(agridat)
     data(kotowski.potato.uniformity)
     dat <- kotowski.potato.uniformity
     libs(desplot)
      desplot(dat, yield~col*row|field, subset=field=="F1",
             tick=TRUE, flip=TRUE,
             aspect=(4*10)/(12*2.5),
             main="kotowski.potato.uniformity - yield, field F1")
     desplot(dat, yield~col*row|field, subset=field=="F2",
             tick=TRUE, flip=TRUE,
             aspect=(4*10)/(26*2.5),
             main="kotowski.potato.uniformity - yield, field F2")
     desplot(dat, starch~col*row|field, subset=field=="F1",
             tick=TRUE, flip=TRUE,
             aspect=(4*10)/(12*2.5),
             main="kotowski.potato.uniformity - starch, field F1")
     desplot(dat, starch~col*row|field, subset=field=="F2",
             tick=TRUE, flip=TRUE,
             aspect=(4*10)/(26*2.5),
             main="kotowski.potato.uniformity - starch, field F2")

   ## End(Not run)
