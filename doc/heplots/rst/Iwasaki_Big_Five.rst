.. container::

   .. container::

      ================ ===============
      Iwasaki_Big_Five R Documentation
      ================ ===============

      .. rubric:: Personality Traits of Cultural Groups
         :name: personality-traits-of-cultural-groups

      .. rubric:: Description
         :name: description

      This dataset, from Grice & Iwasaki (2007), gives scores on the
      five personality scales of the NEO PI-r (Costa & McCrae, 1992),
      called the "Big Five" personality traits: Neuroticism,
      Extraversion, Openness-to-Experience, Agreeableness, and
      Conscientiousness.

      .. rubric:: Format
         :name: format

      A data frame with 203 observations on the following 7 variables.

      ``ID``
         ID number

      ``Group``
         a factor with levels ``Eur`` ``Asian_Amer`` ``Asian_Intl``

      ``N``
         Neuroticism score

      ``E``
         Extraversion score

      ``O``
         Openness score

      ``A``
         Agreeableness score

      ``C``
         Conscientiousness score

      .. rubric:: Details
         :name: details

      The groups are:

      Eur
         European Americans (Caucasians living in the United States
         their entire lives)

      Asian_Amer
         Asian Americans (Asians living in the United States since
         before the age of 6 years)

      Asian_Intl
         Asian Internationals (Asians who moved to the United States
         after their 6th birthday)

      The factor ``Group`` is set up to compare E vs. Asian and the two
      Asian groups

      .. rubric:: Source
         :name: source

      Grice, J., & Iwasaki, M. (2007). A truly multivariate approach to
      MANOVA. *Applied Multivariate Research*, **12**, 199-226.
      https://doi.org/10.22329/amr.v12i3.660.

      .. rubric:: References
         :name: references

      Costa Jr, P. T., & McCrae, R. R. (1992). *Revised NEO Personality
      Inventory (NEO PI-R) and NEO Five-Factor Inventory (NEOFFI)
      professional manual*. Psychological Assessment Resources.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Iwasaki_Big_Five)
         # use Helmert contrasts for groups
         contrasts(Iwasaki_Big_Five$Group) <- 
            matrix(c(2, -1, -1,
                     0, -1,  1), ncol=2)

         str(Iwasaki_Big_Five)

         Big5.mod <- lm(cbind(N, E, O, A, C) ~ Group, data=Iwasaki_Big_Five)
         coef(Big5.mod)

         car::Anova(Big5.mod)

         # test contrasts
         car::linearHypothesis(Big5.mod, "Group1", title = "Eur vs Asian")
         car::linearHypothesis(Big5.mod, "Group2", title = "Asian: Amer vs Inter")

         # heplots
         labs <- c("Neuroticism", "Extraversion", "Openness", "Agreeableness", "Conscientiousness" )

         heplot(Big5.mod,
                fill = TRUE, fill.alpha = 0.2, 
                cex.lab = 1.5,
                xlab = labs[1], ylab = labs[2])

         heplot(Big5.mod, variables = c(2,5),
                fill = TRUE, fill.alpha = 0.2,
                cex.lab = 1.5,
                xlab = labs[2], ylab = labs[5])

         pairs(Big5.mod, 
               fill = TRUE, fill.alpha = 0.2, var.labels = labs)


         # canonical discriminant analysis
         if (require(candisc)) { 
         library(candisc)
         Big5.can <- candisc(Big5.mod)
         Big5.can
         heplot(Big5.can, fill = TRUE, fill.alpha = 0.1)
         }
