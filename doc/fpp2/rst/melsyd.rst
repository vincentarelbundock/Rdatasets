.. container::

   .. container::

      ====== ===============
      melsyd R Documentation
      ====== ===============

      .. rubric:: Total weekly air passenger numbers on Ansett airline
         flights between Melbourne and Sydney, 1987–1992.
         :name: total-weekly-air-passenger-numbers-on-ansett-airline-flights-between-melbourne-and-sydney-19871992.

      .. rubric:: Description
         :name: description

      Air traffic numbers are in thousands, and divided into first
      class, business class and economy class. There was a major pilots'
      industrial dispute during the data period resulting in some weeks
      with zero traffic. There was also at least two changes in the
      definitions of passenger classes.

      .. rubric:: Format
         :name: format

      Multiple time series of class ``mts``.

      .. rubric:: Source
         :name: source

      Ansett Airlines (which no longer exists).

      .. rubric:: Examples
         :name: examples

      ::

         autoplot(melsyd, facets=TRUE)
