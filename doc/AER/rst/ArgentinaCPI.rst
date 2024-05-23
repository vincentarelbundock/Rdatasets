.. container::

   .. container::

      ============ ===============
      ArgentinaCPI R Documentation
      ============ ===============

      .. rubric:: Consumer Price Index in Argentina
         :name: consumer-price-index-in-argentina

      .. rubric:: Description
         :name: description

      Time series of consumer price index (CPI) in Argentina (index with
      1969(4) = 1).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("ArgentinaCPI")

      .. rubric:: Format
         :name: format

      A quarterly univariate time series from 1970(1) to 1989(4).

      .. rubric:: Source
         :name: source

      Online complements to Franses (1998).

      .. rubric:: References
         :name: references

      De Ruyter van Steveninck, M.A. (1996). *The Impact of Capital
      Imports; Argentina 1970–1989*. Amsterdam: Thesis Publishers.

      Franses, P.H. (1998). *Time Series Models for Business and
      Economic Forecasting*. Cambridge, UK: Cambridge University Press.

      .. rubric:: See Also
         :name: see-also

      ``Franses1998``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data("ArgentinaCPI")
         plot(ArgentinaCPI)
         plot(log(ArgentinaCPI))

         library("dynlm")
         ## estimation sample 1970.3-1988.4 means
         acpi <- window(ArgentinaCPI, start = c(1970,1), end = c(1988,4)) 

         ## eq. (3.90), p.54
         acpi_ols <- dynlm(d(log(acpi)) ~ L(d(log(acpi))))
         summary(acpi_ols)

         ## alternatively
         ar(diff(log(acpi)), order.max = 1, method = "ols") 
