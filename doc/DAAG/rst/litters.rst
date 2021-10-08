.. container::

   ======= ===============
   litters R Documentation
   ======= ===============

   .. rubric:: Mouse Litters
      :name: mouse-litters

   .. rubric:: Description
      :name: description

   Data on the body and brain weights of 20 mice, together with the size
   of the litter. Two mice were taken from each litter size.

   .. rubric:: Usage
      :name: usage

   ::

      litters

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   lsize
      litter size

   bodywt
      body weight

   brainwt
      brain weight

   .. rubric:: Source
      :name: source

   Wainright P, Pelkman C and Wahlsten D 1989. The quantitative
   relationship between nutritional effects on preweaning growth and
   behavioral development in mice. Developmental Psychobiology 22:
   183-193.

   .. rubric:: Examples
      :name: examples

   ::

      print("Multiple Regression - Example 6.2")

      pairs(litters, labels=c("lsize\n\n(litter size)", "bodywt\n\n(Body Weight)",
                              "brainwt\n\n(Brain Weight)"))
        # pairs(litters) gives a scatterplot matrix with less adequate labeling

      mice1.lm <- lm(brainwt ~ lsize, data = litters) # Regress on lsize
      mice2.lm <- lm(brainwt ~ bodywt, data = litters) #Regress on bodywt
      mice12.lm <- lm(brainwt ~ lsize + bodywt, data = litters) # Regress on lsize & bodywt

      summary(mice1.lm)$coef # Similarly for other coefficients.
      # results are consistent with the biological concept of brain sparing

      pause()

      hat(model.matrix(mice12.lm))  # hat diagonal
      pause()

      plot(lm.influence(mice12.lm)$hat, residuals(mice12.lm))

      print("Diagnostics - Example 6.3")

      mice12.lm <- lm(brainwt ~ bodywt+lsize, data=litters)
      oldpar <-par(mfrow = c(1,2))
      bx <- mice12.lm$coef[2]; bz <- mice12.lm$coef[3]
      res <- residuals(mice12.lm)
      plot(litters$bodywt, bx*litters$bodywt+res, xlab="Body weight",
        ylab="Component + Residual")
      panel.smooth(litters$bodywt, bx*litters$bodywt+res) # Overlay
      plot(litters$lsize, bz*litters$lsize+res, xlab="Litter size", 
        ylab="Component + Residual")
      panel.smooth(litters$lsize, bz*litters$lsize+res)
      par(oldpar)
