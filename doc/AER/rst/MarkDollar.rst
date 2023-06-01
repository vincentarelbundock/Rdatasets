.. container::

   ========== ===============
   MarkDollar R Documentation
   ========== ===============

   .. rubric:: DEM/USD Exchange Rate Returns
      :name: MarkDollar

   .. rubric:: Description
      :name: description

   A time series of intra-day percentage returns of Deutsche mark/US
   dollar (DEM/USD) exchange rates, consisting of two observations per
   day from 1992-10-01 through 1993-09-29.

   .. rubric:: Usage
      :name: usage

   ::

      data("MarkDollar")

   .. rubric:: Format
      :name: format

   A univariate time series of 518 returns (exact dates unknown) for the
   DEM/USD exchange rate.

   .. rubric:: Source
      :name: source

   Journal of Business & Economic Statistics Data Archive.

   ``⁠http://www.amstat.org/publications/jbes/upload/index.cfm?fuseaction=ViewArticles&pub=JBES&issue=96-2-APR⁠``

   .. rubric:: References
      :name: references

   Bollerslev, T., and Ghysels, E. (1996). Periodic Autoregressive
   Conditional Heteroskedasticity. *Journal of Business & Economic
   Statistics*, **14**, 139–151.

   .. rubric:: See Also
      :name: see-also

   ``MarkPound``

   .. rubric:: Examples
      :name: examples

   ::

      library("tseries")
      data("MarkDollar")

      ## GARCH(1,1)
      fm <- garch(MarkDollar, grad = "numerical")
      summary(fm)
      logLik(fm)  
