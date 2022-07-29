.. container::

   ====== ===============
   nhtemp R Documentation
   ====== ===============

   .. rubric:: Average Yearly Temperatures in New Haven
      :name: average-yearly-temperatures-in-new-haven

   .. rubric:: Description
      :name: description

   The mean annual temperature in degrees Fahrenheit in New Haven,
   Connecticut, from 1912 to 1971.

   .. rubric:: Usage
      :name: usage

   ::

      nhtemp

   .. rubric:: Format
      :name: format

   A time series of 60 observations.

   .. rubric:: Source
      :name: source

   Vaux, J. E. and Brinker, N. B. (1972) *Cycles*, **1972**, 117–121.

   .. rubric:: References
      :name: references

   McNeil, D. R. (1977) *Interactive Data Analysis*. New York: Wiley.

   .. rubric:: Examples
      :name: examples

   ::

      require(stats); require(graphics)
      plot(nhtemp, main = "nhtemp data",
        ylab = "Mean annual temperature in New Haven, CT (deg. F)")
