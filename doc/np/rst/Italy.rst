.. container::

   .. container::

      ===== ===============
      Italy R Documentation
      ===== ===============

      .. rubric:: Italian GDP Panel
         :name: italian-gdp-panel

      .. rubric:: Description
         :name: description

      Italian GDP growth panel for 21 regions covering the period
      1951-1998 (millions of Lire, 1990=base). There are 1008
      observations in total.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("Italy")

      .. rubric:: Format
         :name: format

      A data frame with 2 columns, and 1008 rows.

      year
         the first column, of type ``ordered``

      gdp
         the second column, of type ``numeric``: millions of Lire,
         1990=base

      .. rubric:: Source
         :name: source

      Giovanni Baiocchi

      .. rubric:: References
         :name: references

      Baiocchi, G. (2006), “Economic Applications of Nonparametric
      Methods,” Ph.D. Thesis, University of York.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data("Italy")
         attach(Italy)

         plot(ordered(year), gdp, xlab="Year (ordered factor)",
              ylab="GDP (millions of Lire, 1990=base)")

         detach(Italy)
