.. container::

   ================ ===============
   Iwasaki_Big_Five R Documentation
   ================ ===============

   .. rubric:: Personality Traits of Cultural Groups
      :name: Iwasaki_Big_Five

   .. rubric:: Description
      :name: description

   This dataset, from Grice & Iwasaki (2007), gives scores on the five
   personality scales of the NEO PI-r (Costa & McCrae, 1992), called the
   "Big Five" personality traits: Neuroticism, Extraversion,
   Openness-to-Experience, Agreeableness, and Conscientiousness.

   .. rubric:: Usage
      :name: usage

   ::

      data("Iwasaki_Big_Five")

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
      European Americans (Caucasians living in the United States their
      entire lives)

   Asian_Amer
      Asian Americans (Asians living in the United States since before
      the age of 6 years)

   Asian_Intl
      Asian Internationals (Asians who moved to the United States after
      their 6th birthday)

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

   ::

      data(Iwasaki_Big_Five)
      str(Iwasaki_Big_Five)

      mod <- lm(cbind(N, E, O, A, C) ~ Group, data=Iwasaki_Big_Five)

      Anova(mod)

      # heplots
      labs <- c("Neuroticism", "Extraversion", "Openness", "Agreeableness", "Consientiousness" )

      heplot(mod,
             fill = TRUE, fill.alpha = 0.2, 
             cex.lab = 1.5,
             xlab = labs[1], ylab = labs[2])

      heplot(mod, variables = c(2,5),
             fill = TRUE, fill.alpha = 0.2,
             cex.lab = 1.5,
             xlab = labs[2], ylab = labs[5])

      pairs(mod, 
            fill = TRUE, fill.alpha = 0.2, var.labels = labs)
