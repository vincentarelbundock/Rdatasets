.. container::

   .. container::

      ======= ===============
      Caravan R Documentation
      ======= ===============

      .. rubric:: The Insurance Company (TIC) Benchmark
         :name: the-insurance-company-tic-benchmark

      .. rubric:: Description
         :name: description

      The data contains 5822 real customer records. Each record consists
      of 86 variables, containing sociodemographic data (variables 1-43)
      and product ownership (variables 44-86). The sociodemographic data
      is derived from zip codes. All customers living in areas with the
      same zip code have the same sociodemographic attributes. Variable
      86 (``Purchase``) indicates whether the customer purchased a
      caravan insurance policy. Further information on the individual
      variables can be obtained at
      http://www.liacs.nl/~putten/library/cc2000/data.html

      .. rubric:: Usage
         :name: usage

      .. code:: R

         Caravan

      .. rubric:: Format
         :name: format

      A data frame with 5822 observations on 86 variables.

      .. rubric:: Source
         :name: source

      The data was originally supplied by Sentient Machine Research and
      was used in the CoIL Challenge 2000.

      .. rubric:: References
         :name: references

      | P. van der Putten and M. van Someren (eds) . CoIL Challenge
        2000: The Insurance Company Case. Published by Sentient Machine
        Research, Amsterdam. Also a Leiden Institute of Advanced
        Computer Science Technical Report 2000-09. June 22, 2000. See
        http://www.liacs.nl/~putten/library/cc2000/
      | P. van der Putten and M. van Someren. A Bias-Variance Analysis
        of a Real World Learning Problem: The CoIL Challenge 2000.
        Machine Learning, October 2004, vol. 57, iss. 1-2, pp. 177-195,
        Kluwer Academic Publishers
      | James, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) *An
        Introduction to Statistical Learning with applications in R*,
        https://www.statlearning.com, Springer-Verlag, New York

      .. rubric:: Examples
         :name: examples

      .. code:: R

         summary(Caravan)
         plot(Caravan$Purchase)
