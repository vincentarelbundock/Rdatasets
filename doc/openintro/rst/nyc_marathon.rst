.. container::

   .. container::

      ============ ===============
      nyc_marathon R Documentation
      ============ ===============

      .. rubric:: New York City Marathon Times
         :name: new-york-city-marathon-times

      .. rubric:: Description
         :name: description

      Marathon times of runners in the Men and Women divisions of the
      New York City Marathon, 1970 - 2023.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         nyc_marathon

      .. rubric:: Format
         :name: format

      A data frame with 108 observations on the following 7 variables.

      year
         Year of marathom.

      name
         Name of winner.

      country
         Country of winner.

      time
         Running time (HH:MM:SS).

      time_hrs
         Running time (in hours).

      division
         Division: ``Men`` or ``Women``.

      note
         Note about the race or the winning time.

      .. rubric:: Source
         :name: source

      Wikipedia, `List of winners of the New York City
      Marathon <https://en.wikipedia.org/wiki/List_of_winners_of_the_New_York_City_Marathon>`__.
      Retrieved 6 November, 2023.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(ggplot2)

         ggplot(nyc_marathon, aes(x = year, y = time_hrs, color = division, shape = division)) +
           geom_point()
