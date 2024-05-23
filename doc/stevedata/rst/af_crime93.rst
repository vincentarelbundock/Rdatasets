.. container::

   .. container::

      ========== ===============
      af_crime93 R Documentation
      ========== ===============

      .. rubric:: Statewide Crime Data (1993)
         :name: statewide-crime-data-1993

      .. rubric:: Description
         :name: description

      These data are in Table 9.1 of the 3rd edition of Agresti and
      Finlay's *Statistical Methods for the Social Sciences*. The data
      are from *Statistical Abstract of the United States* and most
      variables were measured in 1993.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         af_crime93

      .. rubric:: Format
         :name: format

      A data frame with 51 observations on the following 8 variables.

      ``state``
         a character vector for the state

      ``violent``
         a numeric vector for the violent crime rate (per 100,000 people
         in population)

      ``murder``
         a numeric vector for the murder rate (per 100,000 people in
         population)

      ``poverty``
         a numeric vector for the percent with income below the poverty
         level

      ``single``
         a numeric vector for the percent of families headed by a single
         parent

      ``metro``
         a numeric vector for the percent of population in metropolitan
         areas

      ``white``
         a numeric vector for the percentage of the state that is white

      ``highschool``
         a numeric vector for the percent of state that graduated from
         high school

      .. rubric:: Details
         :name: details

      The data are from Statistical Abstract of the United States and
      most variables were measured in 1993. These data should result in
      regressions that would flunk a Breusch-Pagan test for
      heteroskedasticity.

      .. rubric:: References
         :name: references

      Agresti, Alan and Barbara Finley. 1997. *Statistical Methods for
      the Social Sciences*. Prentice Hall. (3rd Edition)
