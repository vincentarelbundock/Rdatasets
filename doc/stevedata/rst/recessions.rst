========== ===============
recessions R Documentation
========== ===============

United States Recessions, 1855-present
--------------------------------------

Description
~~~~~~~~~~~

Data on U.S. recessions, past to present. Data include information on
contraction, expansion, and cycle.

Usage
~~~~~

::

   recessions

Format
~~~~~~

A data frame with 35 observations on the following 8 variables.

``peak``
   the year-month of the peak, as a date

``trough``
   the year-month of the trough, as a date

``peakq``
   the peak quarter

``troughq``
   the trough quarter

``p2t``
   peak to trough (in months)

``prev_t2p``
   previous trough to this peak (in months)

``tfpt``
   trough from previous trough (in months)

``pfpp``
   peak from previous peak (in months)

Details
~~~~~~~

Data come from via scraping job of
https://www.nber.org/research/data/us-business-cycle-expansions-and-contractions

Source
~~~~~~

National Bureau of Economic Research (NBER)
