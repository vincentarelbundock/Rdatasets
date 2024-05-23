.. container::

   .. container::

      ==== ===============
      Dyke R Documentation
      ==== ===============

      .. rubric:: Sources of Knowledge of Cancer
         :name: sources-of-knowledge-of-cancer

      .. rubric:: Description
         :name: description

      Observational data on a sample of 1729 individuals,
      cross-classified in a 2^5 table according to their sources of
      information (read newspapers, listen to the radio, do 'solid'
      reading, attend lectures) and whether they have good or poor
      knowledge regarding cancer. Knowledge of cancer is often treated
      as the response.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Dyke)

      .. rubric:: Format
         :name: format

      A 5-dimensional array resulting from cross-tabulating 5 variables
      for 1729 observations. The variable names and their levels are:

      == ============= ==================
      No Name          Levels
      1  ``Knowledge`` ``"Good", "Poor"``
      2  ``Reading``   ``"No", "Yes"``
      3  ``Radio``     ``"No", "Yes"``
      4  ``Lectures``  ``"No", "Yes"``
      5  ``Newspaper`` ``"No", "Yes"``
      \                
      == ============= ==================

      .. rubric:: Source
         :name: source

      Fienberg, S. E. (1980). *The Analysis of Cross-Classified
      Categorical Data* Cambridge, MA: MIT Press, p. 85, Table 5-6.

      .. rubric:: References
         :name: references

      Dyke, G. V. and Patterson, H. D. (1952). Analysis of factorial
      arrangements when the data are proportions. *Biometrics*, 8, 1-12.

      Lindsey, J. K. (1993). *Models for Repeated Measurements* Oxford,
      UK: Oxford University Press, p. 57.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Dyke)

         # independence model
         mosaic(Dyke, shade=TRUE)

         # null model, Knowledge as response, independent of others
         require(MASS)
         dyke.mod0 <- loglm(~ Knowledge + (Reading * Radio * Lectures * Newspaper), data=Dyke)
         dyke.mod0
         mosaic(dyke.mod0)

         # view as doubledecker plot
         Dyke <- Dyke[2:1,,,,]    # make Good the highlighted value of Knowledge
         doubledecker(Knowledge ~ ., data=Dyke)

         # better version, with some options
         doubledecker(Knowledge ~ Lectures + Reading + Newspaper + Radio, 
           data=Dyke,
             margins = c(1,6, length(dim(Dyke)) + 1, 1), 
             fill_boxes=list(rep(c("white", gray(.90)),4))
             )

         # separate (conditional) plots for those who attend lectures and those who do not
         doubledecker(Knowledge ~ Reading + Newspaper + Radio, 
           data=Dyke[,,,1,],
             main="Do not attend lectures",
             margins = c(1,6, length(dim(Dyke)) + 1, 1), 
             fill_boxes=list(rep(c("white", gray(.90)),3))
             )
         doubledecker(Knowledge ~ Reading + Newspaper + Radio, 
           data=Dyke[,,,2,],
             main="Attend lectures",
             margins = c(1,6, length(dim(Dyke)) + 1, 1), 
             fill_boxes=list(rep(c("white", gray(.90)),3))
             )


         drop1(dyke.mod0, test="Chisq")
