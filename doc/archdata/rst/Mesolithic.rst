.. container::

   .. container::

      ========== ===============
      Mesolithic R Documentation
      ========== ===============

      .. rubric:: British Mesolithic assemblages
         :name: british-mesolithic-assemblages

      .. rubric:: Description
         :name: description

      Counts of 5 different stone artifact types from 33 Mesolithic
      sites in Britain.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("Mesolithic")

      .. rubric:: Format
         :name: format

      A data frame with 33 observations on the following 5 variables.

      ``Microliths``
         Number of microliths

      ``Scrapers``
         Number of scrapers

      ``Burins``
         Number of burins

      ``Axes``
         Number of axes

      ``Saws``
         Number of saws

      .. rubric:: Details
         :name: details

      Data on 33 Mesolithic (9000 - 4000 BCE) assemblages are a subset
      Pitts (1979) extracted from a set published by Mellars (1976). The
      data were scanned from Table A3 (Appendix A) in Baxter (1994).

      .. rubric:: Source
         :name: source

      Baxter, M. J. 1994. *Exploratory Multivariate Analysis in
      Archaeology*. Edinburgh University Press. Edinburgh.

      Mellars, P. 1976. Settlement Patterns and Industrial Variability
      in the British Mesolithic. In *Problems in Economic and Social
      Archaeology*, edited by Sieveking, G de G., I. H. Longworth, and
      K. E. Wilson, pp 375-99. Duckworth, London.

      Pitts, M. W. 1979. Hides and Antlers: A New Look at the
      Gatherer-Hunter Site at Star Carr, North Yorkshire, England.
      *World Archaeology* 11: 32-44.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Mesolithic)
         Mesolithic.pct <- prop.table(as.matrix(Mesolithic), 1)*100
         apply(Mesolithic.pct, 2, quantile)
         cor(Mesolithic.pct)
