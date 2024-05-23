.. container::

   .. container::

      ======= ===============
      cattell R Documentation
      ======= ===============

      .. rubric:: 12 cognitive variables from Cattell (1963)
         :name: cognitive-variables-from-cattell-1963

      .. rubric:: Description
         :name: description

      Rindskopf and Rose (1988) use this data set to demonstrate
      confirmatory second order factor models. It is a nice example data
      set to explore hierarchical structure and alternative factor
      solutions. It contains measures of fluid and crystallized
      intelligence.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("cattell")

      .. rubric:: Format
         :name: format

      A correlation matrix of the following 12 variables from 277 7th
      and 8th graders

      Verbal
         A verbal ability test from Thurstone

      Verbal2
         A verbal ability test from Thurstone

      Space1
         A Spatial ability test from Thurstone

      Space2
         A Spatial ability test from Thurstone

      Reason1
         A reasoning test from Thurstone

      Reason2
         A reasoning test from Thurstone

      Number1
         A Numerical ability test from Thurstone

      Number2
         A Numerical ability test from Thurstone

      IPATSer
         A "culture fair" series from the IPAT

      IPATCLAS
         A "culture fair" classification test from the IPAT

      IPATMatr
         A "culture fair" matrix reasoning test from the IPAT

      IPATTop
         A "culture fair" topology test from the IPAT

      .. rubric:: Details
         :name: details

      Cattell (1963) reported on 8 cognitive variables from Thurstone
      and four from the Institute for Personality Assessment Test
      (IPAT). Rindskopf and Rose (1988) use this data set as an example
      of second order factor analysis. It is thus a nice set for
      examining alternative solutions such as bifactor rotation,
      ``omega`` hierarchical, as well as ``esem`` and ``interbattery``
      factor analysis.

      .. rubric:: Source
         :name: source

      David Rindskopf and Tedd Rose, (1988) Some Theory and Applications
      of Confirmatory Second- Order Factor Analysis, Multivariate
      Behavioral Research, 23, 51-67.

      .. rubric:: References
         :name: references

      Cattell, R. B. (1963).Theory of fluid and crystallized
      intelligence: A critical experiment. Journal of Educational
      Psychology, 54, 1-22.

      David Rindskopf and Tedd Rose, (1988) Some Theory and Applications
      of Confirmatory Second- Order Factor Analysis, Multivariate
      Behavioral Research, 23, 51-67.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(cattell)
         corPlot(cattell,numbers=TRUE,upper=FALSE,diag=FALSE,
                      main="12 cognitive variables from Cattell (1963)",xlas=2)
