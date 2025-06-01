.. container::

   .. container::

      ======= ===============
      strikes R Documentation
      ======= ===============

      .. rubric:: Strikes duration
         :name: strikes-duration

      .. rubric:: Description
         :name: description

      Data set on 566 contract strikes in U.S. manufacturing for the
      period 1968-76. The data has been used by Kennan (1985), Jaggia
      (1991), and others, and was originally published by the U.S.
      Department of Labor. Cameron and Trivedi (2005).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         strikes

      .. rubric:: Format
         :name: format

      A data frame with 566 observations and 2 variables:

      dur
         duration of the strike, number of days from the start of the
         strike.

      gdp
         measure of business cycle stage, deviation of monthly log
         industrial production in manufacturing.

      .. rubric:: Section in Text
         :name: section-in-text

      17.2 Duration Models, pp. 574-5, 582

      .. rubric:: Source
         :name: source

      http://cameron.econ.ucdavis.edu/mmabook/mmadata.html

      .. rubric:: References
         :name: references

      Cameron, A. and Trivedi, P. (2005), "Microeconometrics: Methods
      and Applications," Cambridge University Press, New York.

      Kennan, J. (1985), "The Duration of Contract strikes in U.S.
      Manufacturing," Journal of Econometrics, 28, 5-28.

      Jaggia, S. (1991), "Specification Tests Based on the Heterogeneous
      Generalized Gamma Model of Duration: With an Application to
      Kennan's Strike Data," Journal of Applied Econometrics, 6,
      169–180.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         summary(strikes)
