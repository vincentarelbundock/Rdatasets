.. container::

   .. container::

      ====== ===============
      Caesar R Documentation
      ====== ===============

      .. rubric:: Risk Factors for Infection in Caesarian Births
         :name: risk-factors-for-infection-in-caesarian-births

      .. rubric:: Description
         :name: description

      Data from infection from birth by Caesarian section, classified by
      ``Risk`` (two levels), whether ``Antibiotics`` were used (two
      levels) and whether the Caesarian section was ``Planned`` or not.
      The outcome is ``Infection`` (three levels).

      .. rubric:: Usage
         :name: usage

      ::

         data(Caesar)

      .. rubric:: Format
         :name: format

      A 4-dimensional array resulting from cross-tabulating 4 variables
      for 251 observations. The variable names and their levels are:

      == =============== ============================================
      No Name            Levels
      1  ``Infection``   ``"Type 1", "Type 2", "None"``
      2  ``Risk``        ``"Yes", "No"`` (presence of risk factors)
      3  ``Antibiotics`` ``"Yes", "No"`` (were antibiotics given?)
      4  ``Planned``     ``"Yes", "No"`` (was the C section planned?)
      \                  
      == =============== ============================================

      .. rubric:: Details
         :name: details

      ``Infection`` is regarded as the response variable here. There are
      quite a few 0 cells here, particularly when ``Risk`` is absent and
      the Caesarian section was unplanned. Should these be treated as
      structural or sampling zeros?

      .. rubric:: Source
         :name: source

      Fahrmeir, L. & Tutz, G. (1994). Multivariate Statistical Modelling
      Based on Generalized Linear Models New York: Springer Verlag,
      Table 1.1.

      .. rubric:: See Also
         :name: see-also

      ``caesar`` for the same data recorded as a frequency data frame
      with other variables.

      .. rubric:: Examples
         :name: examples

      ::

         data(Caesar)
         #display table;  note that there are quite a few 0 cells
         structable(Caesar)
         require(MASS)

         # baseline model, Infection as response
         Caesar.mod0 <- loglm(~Infection + (Risk*Antibiotics*Planned), 
                              data=Caesar)

         # NB: Pearson chisq cannot be computed due to the 0 cells
         Caesar.mod0

         mosaic(Caesar.mod0, main="Baseline model")

         # Illustrate handling structural zeros
         zeros <- 0+ (Caesar >0)
         zeros[1,,1,1] <- 1
         structable(zeros)

         # fit model excluding possible structural zeros
         Caesar.mod0s <- loglm(~Infection + (Risk*Antibiotics*Planned), 
                               data=Caesar, 
                                 start=zeros)
         Caesar.mod0s

         anova(Caesar.mod0, Caesar.mod0s, test="Chisq")

         mosaic (Caesar.mod0s)

         # what terms to add?
         add1(Caesar.mod0, ~.^2, test="Chisq")

         # add Association of Infection:Antibiotics
         Caesar.mod1 <- update(Caesar.mod0, ~ . + Infection:Antibiotics)
         anova(Caesar.mod0, Caesar.mod1, test="Chisq")

         mosaic(Caesar.mod1, 
                gp=shading_Friendly, 
                main="Adding Infection:Antibiotics")
