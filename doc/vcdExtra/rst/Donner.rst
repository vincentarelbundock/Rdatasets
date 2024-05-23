.. container::

   .. container::

      ====== ===============
      Donner R Documentation
      ====== ===============

      .. rubric:: Survival in the Donner Party
         :name: survival-in-the-donner-party

      .. rubric:: Description
         :name: description

      This data frame contains information on the members of the Donner
      Party, a group of people who attempted to migrate to California in
      1846. They were trapped by an early blizzard on the eastern side
      of the Sierra Nevada mountains, and before they could be rescued,
      nearly half of the party had died.

      What factors affected who lived and who died?

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Donner)

      .. rubric:: Format
         :name: format

      A data frame with 90 observations on the following 5 variables.

      ``family``
         family name, a factor with 10 levels

      ``age``
         age of person, a numeric vector

      ``sex``
         a factor with levels ``Female`` ``Male``

      ``survived``
         a numeric vector, 0 or 1

      ``death``
         date of death for those who died before rescue, a POSIXct

      .. rubric:: Details
         :name: details

      This data frame uses the person's name as row labels. ``family``
      reflects a recoding of the last names of individuals to reduce the
      number of factor levels. The main families in the Donner party
      were: Donner, Graves, Breen and Reed. The families of Murphy,
      Foster and Pike are grouped as ``'MurFosPik'``, those of Fosdick
      and Wolfinger are coded as ``'FosdWolf'``, and all others as
      ``'Other'``.

      ``survived`` is the response variable. What kind of models should
      be used here?

      .. rubric:: Source
         :name: source

      D. K. Grayson, 1990, "Donner party deaths: A demographic
      assessment", *J. Anthropological Research*, **46**, 223-242.

      Johnson, K. (1996). *Unfortunate Emigrants: Narratives of the
      Donner Party*. Logan, UT: Utah State University Press. Additions,
      and dates of death from
      http://user.xmission.com/~octa/DonnerParty/Roster.htm.

      .. rubric:: References
         :name: references

      Ramsey, F.L. and Schafer, D.W. (2002). *The Statistical Sleuth: A
      Course in Methods of Data Analysis*, (2nd ed), Duxbury.

      Friendly, M. and Meyer, D. (2016). *Discrete Data Analysis with R:
      Visualization and Modeling Techniques for Categorical and Count
      Data*. Boca Raton, FL: Chapman & Hall/CRC. http://ddar.datavis.ca.

      .. rubric:: See Also
         :name: see-also

      ``donner`` in alr3, ``case2001`` in Sleuth2(adults only) provide
      similar data sets.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # conditional density plots
         op <- par(mfrow=c(1,2), cex.lab=1.5)
         cdplot(factor(survived) ~ age, 
                subset=sex=='Male', 
                data=Donner, 
                main="Donner party: Males", 
                ylevels=2:1, 
                ylab="Survived", 
                yaxlabels=c("yes", "no"))
         with(Donner, rug(jitter(age[sex=="Male"]), 
                          col="white", quiet=TRUE))

         cdplot(factor(survived) ~ age, 
                subset=sex=='Female', 
                data=Donner, 
                main="Donner party: Females", 
                ylevels=2:1, 
                ylab="Survived", 
                yaxlabels=c("yes", "no"))
         with(Donner, rug(jitter(age[sex=="Female"]), 
                          col="white", quiet=TRUE))
         par(op)


         # fit some models
         (mod1 <- glm(survived ~ age + sex, data=Donner, family=binomial))
         (mod2 <- glm(survived ~ age * sex, data=Donner, family=binomial))
         anova(mod2, test="Chisq")

         (mod3 <- glm(survived ~ poly(age,2) * sex, data=Donner, family=binomial))
         anova(mod3, test="Chisq")
         LRstats(glmlist(mod1, mod2, mod3))

         # plot fitted probabilities from mod2 and mod3
         # idea from: http://www.ling.upenn.edu/~joseff/rstudy/summer2010_ggplot2_intro.html
         library(ggplot2)

         # separate linear fits on age for M/F
         ggplot(Donner, aes(age, survived, color = sex)) +
           geom_point(position = position_jitter(height = 0.02, width = 0)) +
           stat_smooth(method = "glm", 
                       method.args = list(family = binomial), 
                       formula = y ~ x,
                       alpha = 0.2, 
                       size=2, 
                       aes(fill = sex))

         # separate quadratics
         ggplot(Donner, aes(age, survived, color = sex)) +
           geom_point(position = position_jitter(height = 0.02, width = 0)) +
           stat_smooth(method = "glm", 
                       method.args = list(family = binomial), 
                       formula = y ~ poly(x,2),
                       alpha = 0.2, 
                       size=2, 
                       aes(fill = sex))
