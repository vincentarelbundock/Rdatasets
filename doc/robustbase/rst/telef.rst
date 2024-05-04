.. container::

   .. container::

      ===== ===============
      telef R Documentation
      ===== ===============

      .. rubric:: Number of International Calls from Belgium
         :name: number-of-international-calls-from-belgium

      .. rubric:: Description
         :name: description

      Number of international calls from Belgium, taken from the Belgian
      Statistical Survey, published by the Ministry of Economy.

      .. rubric:: Usage
         :name: usage

      ::

         data(telef, package="robustbase")

      .. rubric:: Format
         :name: format

      A data frame with 24 observations on the following 2 variables.

      ``Calls``
         Number of Calls (in tens of millions)

      ``Year``
         Year (1950 - 1973)

      .. rubric:: Source
         :name: source

      P. J. Rousseeuw and A. M. Leroy (1987) *Robust Regression and
      Outlier Detection*; Wiley, page 26, table 2.

      .. rubric:: Examples
         :name: examples

      ::

         data(telef)
         summary(lm.telef <- lm(Year~., data=telef))
