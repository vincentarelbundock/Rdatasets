.. container::

   .. container::

      ==== ===============
      Hoyt R Documentation
      ==== ===============

      .. rubric:: Minnesota High School Graduates
         :name: minnesota-high-school-graduates

      .. rubric:: Description
         :name: description

      Minnesota high school graduates of June 1930 were classified with
      respect to (a) ``Rank`` by thirds in their graduating class, (b)
      post-high school ``Status`` in April 1939 (4 levels), (c) ``Sex``,
      (d) father's ``Occupation``\ al status (7 levels, from 1=High to
      7=Low).

      The data were first presented by Hoyt et al. (1959) and have been
      analyzed by Fienberg(1980), Plackett(1974) and others.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Hoyt)

      .. rubric:: Format
         :name: format

      A 4-dimensional array resulting from cross-tabulating 4 variables
      for 13968 observations. The variable names and their levels are:

      == ============== =======================================
      No Name           Levels
      1  ``Status``     ``"College", "School", "Job", "Other"``
      2  ``Rank``       ``"Low", "Middle", "High"``
      3  ``Occupation`` ``"1", "2", "3", "4", "5", "6", "7"``
      4  ``Sex``        ``"Male", "Female"``
      \                 
      == ============== =======================================

      .. rubric:: Details
         :name: details

      Post high-school ``Status`` is natural to consider as the
      response. ``Rank`` and father's ``Occupation`` are ordinal
      variables.

      .. rubric:: Source
         :name: source

      Fienberg, S. E. (1980). *The Analysis of Cross-Classified
      Categorical Data*. Cambridge, MA: MIT Press, p. 91-92.

      R. L. Plackett, (1974). *The Analysis of Categorical Data*.
      London: Griffin.

      .. rubric:: References
         :name: references

      Hoyt, C. J., Krishnaiah, P. R. and Torrance, E. P. (1959) Analysis
      of complex contingency tables, *Journal of Experimental Education*
      27, 187-194.

      .. rubric:: See Also
         :name: see-also

      ``minn38`` provides the same data as a data frame.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Hoyt)

         # display the table
         structable(Status + Sex ~ Rank + Occupation, data=Hoyt)

         # mosaic for independence model
         plot(Hoyt, shade=TRUE)

         # examine all pairwise mosaics
         pairs(Hoyt, shade=TRUE)

         # collapse Status to College vs. Non-College
         Hoyt1 <- collapse.table(Hoyt, Status=c("College", rep("Non-College",3)))
         plot(Hoyt1, shade=TRUE)

         #################################################
         # fitting models with loglm, plotting with mosaic
         #################################################

         # fit baseline log-linear model for Status as response
         require(MASS)
         hoyt.mod0 <- loglm(~ Status + (Sex*Rank*Occupation), 
           data=Hoyt1)
         hoyt.mod0

         mosaic(hoyt.mod0, 
           gp=shading_Friendly, 
           main="Baseline model: Status + (Sex*Rank*Occ)")

         # add one-way association of Status with factors
         hoyt.mod1 <- loglm(~ Status * (Sex + Rank + Occupation) + (Sex*Rank*Occupation), 
           data=Hoyt1)
         hoyt.mod1

         mosaic(hoyt.mod1, 
           gp=shading_Friendly, 
           main="Status * (Sex + Rank + Occ)")

         # can we drop any terms?
         drop1(hoyt.mod1, test="Chisq")

         # assess model fit
         anova(hoyt.mod0, hoyt.mod1)

         # what terms to add?
         add1(hoyt.mod1, ~.^2, test="Chisq")

         # add interaction of Sex:Occupation on Status
         hoyt.mod2 <- update(hoyt.mod1, ~ . + Status:Sex:Occupation)

         mosaic(hoyt.mod2, 
           gp=shading_Friendly, 
           main="Adding Status:Sex:Occupation")

         # compare model fits
         anova(hoyt.mod0, hoyt.mod1, hoyt.mod2)

         # Alternatively, try stepwise analysis, heading toward the saturated model
         steps <- step(hoyt.mod0, 
           direction="forward", 
           scope=~Status*Sex*Rank*Occupation)

         # display anova
         steps$anova
