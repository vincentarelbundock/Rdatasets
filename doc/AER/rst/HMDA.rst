.. container::

   .. container::

      ==== ===============
      HMDA R Documentation
      ==== ===============

      .. rubric:: Home Mortgage Disclosure Act Data
         :name: home-mortgage-disclosure-act-data

      .. rubric:: Description
         :name: description

      Cross-section data on the Home Mortgage Disclosure Act (HMDA).

      .. rubric:: Usage
         :name: usage

      ::

         data("HMDA")

      .. rubric:: Format
         :name: format

      A data frame containing 2,380 observations on 14 variables.

      deny
         Factor. Was the mortgage denied?

      pirat
         Payments to income ratio.

      hirat
         Housing expense to income ratio.

      lvrat
         Loan to value ratio.

      chist
         Factor. Credit history: consumer payments.

      mhist
         Factor. Credit history: mortgage payments.

      phist
         Factor. Public bad credit record?

      unemp
         1989 Massachusetts unemployment rate in applicant's industry.

      selfemp
         Factor. Is the individual self-employed?

      insurance
         Factor. Was the individual denied mortgage insurance?

      condomin
         Factor. Is the unit a condominium?

      afam
         Factor. Is the individual African-American?

      single
         Factor. Is the individual single?

      hschool
         Factor. Does the individual have a high-school diploma?

      .. rubric:: Details
         :name: details

      Only includes variables used by Stock and Watson (2007), some of
      which had to be generated from the raw data.

      .. rubric:: Source
         :name: source

      Online complements to Stock and Watson (2007).

      .. rubric:: References
         :name: references

      Munnell, A. H., Tootell, G. M. B., Browne, L. E. and McEneaney, J.
      (1996). Mortgage Lending in Boston: Interpreting HMDA Data.
      *American Economic Review*, **86**, 25–53.

      Stock, J. H. and Watson, M. W. (2007). *Introduction to
      Econometrics*, 2nd ed. Boston: Addison Wesley.

      .. rubric:: See Also
         :name: see-also

      ``StockWatson2007``

      .. rubric:: Examples
         :name: examples

      ::

         data("HMDA")

         ## Stock and Watson (2007)
         ## Equations 11.1, 11.3, 11.7, 11.8 and 11.10, pp. 387--395
         fm1 <- lm(I(as.numeric(deny) - 1) ~ pirat, data = HMDA)
         fm2 <- lm(I(as.numeric(deny) - 1) ~ pirat + afam, data = HMDA)
         fm3 <- glm(deny ~ pirat, family = binomial(link = "probit"), data = HMDA)
         fm4 <- glm(deny ~ pirat + afam, family = binomial(link = "probit"), data = HMDA)
         fm5 <- glm(deny ~ pirat + afam, family = binomial(link = "logit"), data = HMDA)

         ## More examples can be found in:
         ## help("StockWatson2007")
