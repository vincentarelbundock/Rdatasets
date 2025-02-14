.. container::

   .. container::

      ======= ===============
      dogfood R Documentation
      ======= ===============

      .. rubric:: Dogfood Preferences
         :name: dogfood-preferences

      .. rubric:: Description
         :name: description

      A tiny hypothetical dataset to illustrate one-way MANOVA.

      A dogfood manufacturer wanted to study preference for different
      dogfood formulas, two of their own ("Old", "New") and two from
      other manufacturers ("Major", "Alps"). In a between-dog design, 4
      dogs were presented with a bowl of one ``formula`` and the time to
      ``start`` eating and ``amount`` eaten were recorded.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("dogfood")

      .. rubric:: Format
         :name: format

      A data frame with 16 observations on the following 3 variables.

      ``formula``
         factor, a factor with levels ``Old``, ``New``, ``Major``,
         ``Alps``

      ``start``
         numeric, time to start eating

      ``amount``
         numeric, amount eaten

      .. rubric:: Details
         :name: details

      In addition to testing the overall effects of ``formula``, three
      useful (and orthogonal) contrasts can specified for this 3-df
      factor:

      -  ``Ours`` vs. ``Theirs``, with weights ``c(1, 1, -1, -1)``

      -  ``Major`` vs. ``Alps``, with weights ``c(0, 0, 1, -1)``

      -  ``Old`` vs. ``New``, with weights ``c(1, -1, 0, 0)``

      Because these are orthogonal contrasts, they fully decompose the
      main effect of ``formula``, in that their sum of squares add to
      the overall sum of squares.

      .. rubric:: Source
         :name: source

      Used in my Psych 6140 lecture notes,
      http://friendly.apps01.yorku.ca/psy6140/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(dogfood)
         library(car)
         library(candisc)

         # make some boxplots
         op <- par(mfrow = c(1,2))
         boxplot(start ~ formula, data = dogfood)
         points(start ~ formula, data = dogfood, pch=16, cex = 1.2)

         boxplot(amount ~ formula, data = dogfood)
         points(amount ~ formula, data = dogfood, pch=16, cex = 1.2)
         par(op)

         # setup contrasts to test interesting comparisons
         C <- matrix(
                c( 1,  1, -1, -1,         #Ours vs. Theirs
                   0,  0,  1, -1,           #Major vs. Alps
                   1, -1,  0,  0),             #New vs. Old
                nrow=4, ncol=3)
         # assign these to the formula factor
         contrasts(dogfood$formula) <- C
         # re-fit the model
         dogfood.mod <- lm(cbind(start, amount) ~ formula, data=dogfood)

         dogfood.mod <- lm(cbind(start, amount) ~ formula, data=dogfood)
         Anova(dogfood.mod)

         # data ellipses
         covEllipses(cbind(start, amount) ~ formula, data=dogfood,
           fill = TRUE, fill.alpha = 0.1)

         # test these contrasts with multivariate tests 
         linearHypothesis(dogfood.mod, "formula1", title="Ours vs. Theirs")
         linearHypothesis(dogfood.mod, "formula2", title="Old vs. New")
         linearHypothesis(dogfood.mod, "formula3", title="Alps vs. Major")

         heplot(dogfood.mod, fill = TRUE, fill.alpha = 0.1)

         # display contrasts in the heplot 
         hyp <- list("Ours/Theirs" = "formula1",
                     "Old/New" = "formula2")
         heplot(dogfood.mod, hypotheses = hyp,
                fill = TRUE, fill.alpha = 0.1)

         dogfood.can <- candisc(dogfood.mod, data=dogfood)
         heplot(dogfood.can, 
                fill = TRUE, fill.alpha = 0.1, 
                lwd = 2, var.lwd = 2, var.cex = 2)
