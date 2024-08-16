.. container::

   .. container::

      ==== ===============
      soda R Documentation
      ==== ===============

      .. rubric:: soda
         :name: soda

      .. rubric:: Description
         :name: description

      A randomly generated dataset of soda preference (cola or orange)
      based on location.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         soda

      .. rubric:: Format
         :name: format

      A data frame with 60 observations on the following 2 variables.

      drink
         Soda preference, cola or orange.

      location
         Is the person from the West coast or East coast?

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(dplyr)

         soda |>
           count(location, drink)
