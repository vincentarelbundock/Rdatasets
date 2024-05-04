.. container::

   .. container::

      =============== ===============
      birthdeathrates R Documentation
      =============== ===============

      .. rubric:: Birth and Death Rates Data
         :name: birth-and-death-rates-data

      .. rubric:: Description
         :name: description

      Birth and death rates for 69 countries.

      .. rubric:: Usage
         :name: usage

      ::

         data("birthdeathrates")

      .. rubric:: Format
         :name: format

      A data frame with 69 observations on the following 2 variables.

      ``birth``
         birth rate.

      ``death``
         death rate.

      .. rubric:: Source
         :name: source

      J. A. Hartigan (1975), *Clustering Algorithms*. John Wiley & Sons,
      New York.

      .. rubric:: Examples
         :name: examples

      ::

           data("birthdeathrates", package = "HSAUR")
           plot(birthdeathrates)
