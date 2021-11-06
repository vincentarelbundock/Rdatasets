.. container::

   ===== ===============
   tobin R Documentation
   ===== ===============

   .. rubric:: Tobin's Tobit data
      :name: tobins-tobit-data

   .. rubric:: Description
      :name: description

   Economists fit a parametric censored data model called the ‘tobit’.
   These data are from Tobin's original paper.

   .. rubric:: Usage
      :name: usage

   ::

      tobin
      data(tobin, package="survival")

   .. rubric:: Format
      :name: format

   A data frame with 20 observations on the following 3 variables.

   durable
      Durable goods purchase

   age
      Age in years

   quant
      Liquidity ratio (x 1000)

   .. rubric:: Source
      :name: source

   J Tobin (1958), Estimation of relationships for limited dependent
   variables. *Econometrica* **26**, 24–36.

   .. rubric:: Examples
      :name: examples

   ::

      tfit <- survreg(Surv(durable, durable>0, type='left') ~age + quant,
                      data=tobin, dist='gaussian')

      predict(tfit,type="response")

