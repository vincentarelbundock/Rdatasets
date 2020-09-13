======== ===============
Mortgage R Documentation
======== ===============

Fixed versus Adjustable Mortgages
---------------------------------

Description
~~~~~~~~~~~

Cross-section data about fixed versus adjustable mortgages for 78
households.

Usage
~~~~~

::

   data("Mortgage")

Format
~~~~~~

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

Source
~~~~~~

The data is from Baltagi (2002).

References
~~~~~~~~~~

Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

Dhillon, U.S., Shilling, J.D. and Sirmans, C.F. (1987). Choosing Between
Fixed and Adjustable Rate Mortgages. *Journal of Money, Credit and
Banking*, **19**, 260–267.

See Also
~~~~~~~~

``Baltagi2002``

Examples
~~~~~~~~

::

   data("Mortgage")
   plot(rate ~ interest, data = Mortgage, breaks = fivenum(Mortgage$interest))
   plot(rate ~ margin, data = Mortgage, breaks = fivenum(Mortgage$margin))
   plot(rate ~ coborrower, data = Mortgage)
