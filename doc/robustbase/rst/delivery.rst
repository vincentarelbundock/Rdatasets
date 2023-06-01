.. container::

   ======== ===============
   delivery R Documentation
   ======== ===============

   .. rubric:: Delivery Time Data
      :name: delivery

   .. rubric:: Description
      :name: description

   Delivery Time Data, from Montgomery and Peck (1982). The aim is to
   explain the time required to service a vending machine (Y) by means
   of the number of products stocked (X1) and the distance walked by the
   route driver (X2).

   .. rubric:: Usage
      :name: usage

   ::

      data(delivery, package="robustbase")

   .. rubric:: Format
      :name: format

   A data frame with 25 observations on the following 3 variables.

   ``n.prod``
      Number of Products

   ``distance``
      Distance

   ``delTime``
      Delivery time

   .. rubric:: Source
      :name: source

   Montgomery and Peck (1982, p.116)

   .. rubric:: References
      :name: references

   P. J. Rousseeuw and A. M. Leroy (1987) *Robust Regression and Outlier
   Detection*; Wiley, page 155, table 23.

   .. rubric:: Examples
      :name: examples

   ::

      data(delivery)
      summary(lm.deli <- lm(delTime ~ ., data = delivery))

      delivery.x <- as.matrix(delivery[, 1:2])
      c_deli <- covMcd(delivery.x)
      c_deli
