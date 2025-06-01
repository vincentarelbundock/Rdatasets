.. container::

   .. container::

      ============== ===============
      laborpanelprec R Documentation
      ============== ===============

      .. rubric:: Hours worked and wages (more precision)
         :name: hours-worked-and-wages-more-precision

      .. rubric:: Description
         :name: description

      Data on 532 males over 10 years (1979-1988) from Ziliak (1997),
      with more significant digits (seven decimals) than the data
      originally posted on JBES website with two decimal places (Cameron
      and Trivedi, 2005).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         laborpanelprec

      .. rubric:: Format
         :name: format

      A data frame with 5320 observations and 8 variables:

      lnhr
         log of annual hours worked

      lnwg
         log of of hourly wage

      kids
         number of children

      ageh
         age

      agesq
         quadratic age

      disab
         = 1 if bad health

      id
         identification code

      year
         interview year

      ...

      .. rubric:: Section in Text
         :name: section-in-text

      22.3 Panel GMM Example: Hours and Wages, pp. 754-6

      .. rubric:: Source
         :name: source

      http://cameron.econ.ucdavis.edu/mmabook/mmadata.html

      .. rubric:: References
         :name: references

      Cameron, A. and Trivedi, P. (2005), "Microeconometrics: Methods
      and Applications," Cambridge University Press, New York.

      Ziliak, J. (1997), "Efficient Estimation With Panel Data when
      Instruments are Predetermined: An Empirical Comparison of
      Moment-Condition Estimators," Journal of Business and Economic
      Statistics, 15, 419-431.
      https://amstat.tandfonline.com/doi/abs/10.1080/07350015.1997.10524720

      Panel Study of Income Dynamics (PSID),
      https://psidonline.isr.umich.edu

      .. rubric:: Examples
         :name: examples

      .. code:: R

         summary(laborpanelprec)
