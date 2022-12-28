.. container::

   ========== ===============
   anesthetic R Documentation
   ========== ===============

   .. rubric:: Anesthetic Effectiveness
      :name: anesthetic-effectiveness

   .. rubric:: Description
      :name: description

   Thirty patients were given an anesthetic agent maintained at a
   predetermined level (conc) for 15 minutes before making an incision.
   It was then noted whether the patient moved, i.e. jerked or twisted.

   .. rubric:: Usage
      :name: usage

   ::

      anesthetic

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   move
      a binary numeric vector coded for patient movement (0 = no
      movement, 1 = movement)

   conc
      anesthetic concentration

   logconc
      logarithm of concentration

   nomove
      the complement of move

   .. rubric:: Details
      :name: details

   The interest is in estimating how the probability of jerking or
   twisting varies with increasing concentration of the anesthetic
   agent.

   .. rubric:: Source
      :name: source

   unknown

   .. rubric:: Examples
      :name: examples

   ::

      print("Logistic Regression - Example 8.1.4")

      z <- table(anesthetic$nomove, anesthetic$conc)
      tot <- apply(z, 2, sum)         # totals at each concentration
      prop <- z[2,  ]/(tot)           # proportions at each concentration
      oprop <- sum(z[2,  ])/sum(tot)  # expected proportion moving if concentration had no effect
      conc <- as.numeric(dimnames(z)[[2]])
      plot(conc, prop, xlab = "Concentration", ylab = "Proportion", xlim = c(.5,2.5),
          ylim = c(0, 1), pch = 16)
      chw <- par()$cxy[1]
      text(conc - 0.75 * chw, prop, paste(tot), adj = 1)
      abline(h = oprop, lty = 2)

      pause()

      anes.logit <- glm(nomove ~ conc, family = binomial(link = logit),
        data = anesthetic)
      anova(anes.logit)
      summary(anes.logit)
