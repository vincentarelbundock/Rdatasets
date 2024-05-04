.. container::

   .. container::

      === ===============
      htv R Documentation
      === ===============

      .. rubric:: htv
         :name: htv

      .. rubric:: Description
         :name: description

      Wooldridge Source: J.J. Heckman, J.L. Tobias, and E. Vytlacil
      (2003), “Simple Estimators for Treatment Parameters in a
      Latent-Variable Framework,” Review of Economics and Statistics 85,
      748-755. Professor Tobias kindly provided the data, which were
      obtained from the 1991 National Longitudinal Survey of Youth. All
      people in the sample are males age 26 to 34. For confidentiality
      reasons, I have included only a subset of the variables used by
      the authors. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      ::

         data('htv')

      .. rubric:: Format
         :name: format

      A data.frame with 1230 observations on 23 variables:

      -  **wage:** hourly wage, 1991

      -  **abil:** abil. measure, not standardized

      -  **educ:** highest grade completed by 1991

      -  **ne:** =1 if in northeast, 1991

      -  **nc:** =1 if in nrthcntrl, 1991

      -  **west:** =1 if in west, 1991

      -  **south:** =1 if in south, 1991

      -  **exper:** potential experience

      -  **motheduc:** highest grade, mother

      -  **fatheduc:** highest grade, father

      -  **brkhme14:** =1 if broken home, age 14

      -  **sibs:** number of siblings

      -  **urban:** =1 if in urban area, 1991

      -  **ne18:** =1 if in NE, age 18

      -  **nc18:** =1 if in NC, age 18

      -  **south18:** =1 if in south, age 18

      -  **west18:** =1 if in west, age 18

      -  **urban18:** =1 if in urban area, age 18

      -  **tuit17:** college tuition, age 17

      -  **tuit18:** college tuition, age 18

      -  **lwage:** log(wage)

      -  **expersq:** exper^2

      -  **ctuit:** tuit18 - tuit17

      .. rubric:: Notes
         :name: notes

      Because an ability measure is included in this data set, it can be
      used as another illustration of including proxy variables in
      regression models. See Chapter 9. Also, one can try the IV
      procedure with the ability measure included as an exogenous
      explanatory variable.

      Used in Text: pages 550, 628

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      ::

          str(htv)
