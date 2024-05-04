.. container::

   .. container::

      ========= ===============
      arbuthnot R Documentation
      ========= ===============

      .. rubric:: Male and female births in London
         :name: male-and-female-births-in-london

      .. rubric:: Description
         :name: description

      Arbuthnot's data describes male and female christenings (births)
      for London from 1629-1710.

      .. rubric:: Usage
         :name: usage

      ::

         arbuthnot

      .. rubric:: Format
         :name: format

      A tbl_df with with 82 rows and 3 variables:

      year
         year, ranging from 1629 to 1710

      boys
         number of male christenings (births)

      girls
         number of female christenings (births)

      .. rubric:: Details
         :name: details

      John Arbuthnot (1710) used these time series data to carry out the
      first known significance test. During every one of the 82 years,
      there were more male christenings than female christenings. As
      Arbuthnot wondered, we might also wonder if this could be due to
      chance, or whether it meant the birth ratio was not actually 1:1.

      .. rubric:: Source
         :name: source

      These data are excerpted from the ``Arbuthnot`` data set in the
      `HistData <https://CRAN.R-project.org/package=HistData>`__
      package.

      .. rubric:: Examples
         :name: examples

      ::

         library(ggplot2)
         library(tidyr)

         # All births
         ggplot(arbuthnot, aes(x = year, y = boys + girls, group = 1)) +
           geom_line()

         # Boys and girls
         arbuthnot %>%
           pivot_longer(cols = -year, names_to = "sex", values_to = "n") %>%
           ggplot(aes(x = year, y = n, color = sex, group = sex)) +
           geom_line()
