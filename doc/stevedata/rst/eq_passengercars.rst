.. container::

   ================ ===============
   eq_passengercars R Documentation
   ================ ===============

   .. rubric:: Export Quality Data for Passenger Cars, 1963-2014
      :name: eq_passengercars

   .. rubric:: Description
      :name: description

   Data from the International Monetary Fund for the export quality and
   unit/trade value of passenger cars for all available countries and
   years from 1963 to 2014.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      eq_passengercars

   .. rubric:: Format
      :name: format

   A data frame with 60424 observations on the following 6 variables.

   ``country``
      a character vector for the country/area.

   ``ccode``
      a numeric vector for the Correlates of War country code.

   ``category``
      a factor with levels ``Export Quality Index``,
      ``Export quality 95 percent interval - lower bound``,
      ``Export quality 95 percent interval - upper bound``
      ``Unit value of exports``,
      ``Unit value 95 percent interval - lower bound``,
      ``Unit value 95 percent interval - upper bound``,
      ``Trade value of exports``

   ``type``
      a factor with levels ``51. Transport equipment, Passenger cars``.
      This is a constant. I just felt like making it a factor.

   ``year``
      a numeric vector for the year

   ``value``
      a numeric vector for the value of the particular category.
