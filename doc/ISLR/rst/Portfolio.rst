.. container::

   .. container::

      ========= ===============
      Portfolio R Documentation
      ========= ===============

      .. rubric:: Portfolio Data
         :name: portfolio-data

      .. rubric:: Description
         :name: description

      A simple simulated data set containing 100 returns for each of two
      assets, X and Y. The data is used to estimate the optimal fraction
      to invest in each asset to minimize investment risk of the
      combined portfolio. One can then use the Bootstrap to estimate the
      standard error of this estimate.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         Portfolio

      .. rubric:: Format
         :name: format

      A data frame with 100 observations on the following 2 variables.

      ``X``
         Returns for Asset X

      ``Y``
         Returns for Asset Y

      .. rubric:: Source
         :name: source

      Simulated data

      .. rubric:: References
         :name: references

      James, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) *An
      Introduction to Statistical Learning with applications in R*,
      https://www.statlearning.com, Springer-Verlag, New York

      .. rubric:: Examples
         :name: examples

      .. code:: R

         summary(Portfolio)
         attach(Portfolio)
         plot(X,Y)
