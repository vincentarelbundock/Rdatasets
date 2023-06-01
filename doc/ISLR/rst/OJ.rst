.. container::

   == ===============
   OJ R Documentation
   == ===============

   .. rubric:: Orange Juice Data
      :name: OJ

   .. rubric:: Description
      :name: description

   The data contains 1070 purchases where the customer either purchased
   Citrus Hill or Minute Maid Orange Juice. A number of characteristics
   of the customer and product are recorded.

   .. rubric:: Usage
      :name: usage

   ::

      OJ

   .. rubric:: Format
      :name: format

   A data frame with 1070 observations on the following 18 variables.

   ``Purchase``
      A factor with levels ``CH`` and ``MM`` indicating whether the
      customer purchased Citrus Hill or Minute Maid Orange Juice

   ``WeekofPurchase``
      Week of purchase

   ``StoreID``
      Store ID

   ``PriceCH``
      Price charged for CH

   ``PriceMM``
      Price charged for MM

   ``DiscCH``
      Discount offered for CH

   ``DiscMM``
      Discount offered for MM

   ``SpecialCH``
      Indicator of special on CH

   ``SpecialMM``
      Indicator of special on MM

   ``LoyalCH``
      Customer brand loyalty for CH

   ``SalePriceMM``
      Sale price for MM

   ``SalePriceCH``
      Sale price for CH

   ``PriceDiff``
      Sale price of MM less sale price of CH

   ``Store7``
      A factor with levels ``No`` and ``Yes`` indicating whether the
      sale is at Store 7

   ``PctDiscMM``
      Percentage discount for MM

   ``PctDiscCH``
      Percentage discount for CH

   ``ListPriceDiff``
      List price of MM less list price of CH

   ``STORE``
      Which of 5 possible stores the sale occured at

   .. rubric:: Source
      :name: source

   Stine, Robert A., Foster, Dean P., Waterman, Richard P. Business
   Analysis Using Regression (1998). Published by Springer.

   .. rubric:: References
      :name: references

   James, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) *An
   Introduction to Statistical Learning with applications in R*,
   https://www.statlearning.com, Springer-Verlag, New York

   .. rubric:: Examples
      :name: examples

   ::

      summary(OJ)
      plot(OJ$Purchase,OJ$PriceCH)
