.. container::

   ======== ===============
   Mortgage R Documentation
   ======== ===============

   .. rubric:: Fixed versus Adjustable Mortgages
      :name: Mortgage

   .. rubric:: Description
      :name: description

   Cross-section data about fixed versus adjustable mortgages for 78
   households.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("Mortgage")

   .. rubric:: Format
      :name: format

   A data frame containing 78 observations on 16 variables.

   rate
      Factor with levels ``"fixed"`` and ``"adjustable"``.

   age
      Age of the borrower.

   school
      Years of schooling for the borrower.

   networth
      Net worth of the borrower.

   interest
      Fixed interest rate.

   points
      Ratio of points paid on adjustable to fixed rate mortgages.

   maturities
      Ratio of maturities on adjustable to fixed rate mortgages.

   years
      Years at the present address.

   married
      Factor. Is the borrower married?

   first
      Factor. Is the borrower a first-time home buyer?

   selfemp
      Factor. Is the borrower self-employed?

   tdiff
      The difference between the 10-year treasury rate less the 1-year
      treasury rate.

   margin
      The margin on the adjustable rate mortgage.

   coborrower
      Factor. Is there a co-borrower?

   liability
      Short-term liabilities.

   liquid
      Liquid assets.

   .. rubric:: Source
      :name: source

   The data is from Baltagi (2002).

   .. rubric:: References
      :name: references

   Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

   Dhillon, U.S., Shilling, J.D. and Sirmans, C.F. (1987). Choosing
   Between Fixed and Adjustable Rate Mortgages. *Journal of Money,
   Credit and Banking*, **19**, 260–267.

   .. rubric:: See Also
      :name: see-also

   ``Baltagi2002``

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data("Mortgage")
      plot(rate ~ interest, data = Mortgage, breaks = fivenum(Mortgage$interest))
      plot(rate ~ margin, data = Mortgage, breaks = fivenum(Mortgage$margin))
      plot(rate ~ coborrower, data = Mortgage)
