===== ===============
tobin R Documentation
===== ===============

Tobin's Tobit data
------------------

Description
~~~~~~~~~~~

Economists fit a parametric censored data model called the ‘tobit’.
These data are from Tobin's original paper.

Usage
~~~~~

.. code:: R

   tobin
   data(tobin, package="survival")

Format
~~~~~~

A data frame with 20 observations on the following 3 variables.

durable
   Durable goods purchase

age
   Age in years

quant
   Liquidity ratio (x 1000)

Source
~~~~~~

J Tobin (1958), Estimation of relationships for limited dependent
variables. *Econometrica* **26**, 24–36.

Examples
~~~~~~~~

.. code:: R

   tfit <- survreg(Surv(durable, durable>0, type='left') ~age + quant,
                   data=tobin, dist='gaussian')

   predict(tfit,type="response")
