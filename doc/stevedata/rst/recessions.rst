.. container::

   .. container::

      ========== ===============
      recessions R Documentation
      ========== ===============

      .. rubric:: United States Recessions, 1855-present
         :name: united-states-recessions-1855-present

      .. rubric:: Description
         :name: description

      Data on U.S. recessions, past to present. Data include information
      on contraction, expansion, and cycle.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         recessions

      .. rubric:: Format
         :name: format

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

      .. rubric:: Details
         :name: details

      Data come from via scraping job of
      https://www.nber.org/research/data/us-business-cycle-expansions-and-contractions

      .. rubric:: Source
         :name: source

      National Bureau of Economic Research (NBER)
