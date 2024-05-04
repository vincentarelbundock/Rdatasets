.. container::

   .. container::

      ===== ===============
      Wages R Documentation
      ===== ===============

      .. rubric:: Panel Data of Individual Wages
         :name: panel-data-of-individual-wages

      .. rubric:: Description
         :name: description

      | A panel of 595 individuals from 1976 to 1982, taken from the
        Panel Study of Income Dynamics (PSID).
      | The data are organized as a stacked time series/balanced panel,
        see **Examples** on how to convert to a ``pdata.frame``.

      .. rubric:: Format
         :name: format

      A data frame containing:

      exp
         years of full-time work experience.

      wks
         weeks worked.

      bluecol
         blue collar?

      ind
         works in a manufacturing industry?

      south
         resides in the south?

      smsa
         resides in a standard metropolitan statistical area?

      married
         married?

      sex
         a factor with levels ``"male"`` and ``"female"``

      union
         individual's wage set by a union contract?

      ed
         years of education.

      black
         is the individual black?

      lwage
         logarithm of wage.

      .. rubric:: Details
         :name: details

      *total number of observations* : 4165

      *observation* : individuals

      *country* : United States

      .. rubric:: Source
         :name: source

      Online complements to Baltagi (2001):

      https://www.wiley.com/legacy/wileychi/baltagi/

      Online complements to Baltagi (2013):

      https://bcs.wiley.com/he-bcs/Books?action=resource&bcsId=4338&itemId=1118672321&resourceId=13452

      .. rubric:: References
         :name: references

      Baltagi BH (2001). *Econometric Analysis of Panel Data*, 3rd
      edition. John Wiley and Sons ltd.

      Baltagi BH (2013). *Econometric Analysis of Panel Data*, 5th
      edition. John Wiley and Sons ltd.

      Cornwell C, Rupert P (1988). “Efficient Estimation With Panel
      Data: an Empirical Comparison of Instrumental Variables
      Estimators.” *Journal of Applied Econometrics*, **3**, 149–155.

      .. rubric:: Examples
         :name: examples

      ::

         # data set 'Wages' is organized as a stacked time series/balanced panel
         data("Wages", package = "plm")
         Wag <- pdata.frame(Wages, index=595)
