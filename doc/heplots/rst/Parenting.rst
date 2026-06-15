========= ===============
Parenting R Documentation
========= ===============

Father Parenting Competence
---------------------------

Description
~~~~~~~~~~~

The data, from an exercise given by Meyers et al. (2006) relates to 60
fathers assessed on three subscales of a Perceived Parenting Competence
Scale. The fathers were selected from three groups: (a) fathers of a
child with no disabilities; (b) fathers with a physically disabled
child; (c) fathers with a mentally disabled child.

Format
~~~~~~

A data frame with 60 observations on the following 4 variables.

``group``
   a factor with levels ``Normal`` ``⁠Physical Disability⁠``
   ``⁠Mental Disability⁠``

``caring``
   caretaking responsibilities, a numeric vector

``emotion``
   emotional support provided to the child, a numeric vector

``play``
   recreational time spent with the child, a numeric vector

Details
~~~~~~~

The scores on the response variables are discrete.

Source
~~~~~~

Meyers, L. S., Gamst, G, & Guarino, A. J. (2006). *Applied Multivariate
Research: Design and Interpretation*, Thousand Oaks, CA: Sage
Publications, https://study.sagepub.com/meyers3e, Exercises 10B.

Examples
~~~~~~~~

.. code:: R


   data(Parenting)
   require(car)

   # fit the MLM
   parenting.mod <- lm(cbind(caring, emotion, play) ~ group, data=Parenting)
   car::Anova(parenting.mod)

   # Box's M test
   boxM(parenting.mod)
   plot(boxM(parenting.mod))

   parenting.mod <- lm(cbind(caring, emotion, play) ~ group, data=Parenting)
   car::Anova(parenting.mod)
   # test contrasts
   print(linearHypothesis(parenting.mod, "group1"), SSP=FALSE)
   print(linearHypothesis(parenting.mod, "group2"), SSP=FALSE)


   heplot(parenting.mod)
   # display tests of contrasts
   hyp <- list("N:MP" = "group1", "M:P" = "group2")
   heplot(parenting.mod, hypotheses=hyp)

   # make a prettier plot
   heplot(parenting.mod, hypotheses=hyp, asp=1,
          fill=TRUE, fill.alpha=c(0.3,0.1), 
          col=c("red", "blue"), 
          lty=c(0,0,1,1), label.pos=c(1,1,3,2),
          cex=1.4, cex.lab=1.4, lwd=3)

   pairs(parenting.mod, fill=TRUE, fill.alpha=c(0.3, 0.1))

   ## Not run: 
   heplot3d(parenting.mod, wire=FALSE)

   ## End(Not run)
