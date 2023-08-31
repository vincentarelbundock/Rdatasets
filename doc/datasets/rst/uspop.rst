.. container::

   ===== ===============
   uspop R Documentation
   ===== ===============

   .. rubric:: Populations Recorded by the US Census
      :name: uspop

   .. rubric:: Description
      :name: description

   This data set gives the population of the United States (in millions)
   as recorded by the decennial census for the period 1790–1970.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      uspop

   .. rubric:: Format
      :name: format

   A time series of 19 values.

   .. rubric:: Source
      :name: source

   McNeil, D. R. (1977) *Interactive Data Analysis*. New York: Wiley.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      require(graphics)
      plot(uspop, log = "y", main = "uspop data", xlab = "Year",
           ylab = "U.S. Population (millions)")
