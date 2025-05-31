.. container::

   .. container::

      ====== ===============
      Rohwer R Documentation
      ====== ===============

      .. rubric:: Rohwer Data Set
         :name: rohwer-data-set

      .. rubric:: Description
         :name: description

      Data from an experiment by William D. Rohwer on kindergarten
      children designed to examine how well performance on a set of
      paired-associate (PA) tasks can predict performance on some
      measures of aptitude and achievement.

      .. rubric:: Format
         :name: format

      A data frame with 69 observations on the following 10 variables.

      ``group``
         a numeric vector, corresponding to SES

      ``SES``
         Socioeconomic status, a factor with levels ``Hi`` ``Lo``

      ``SAT``
         a numeric vector: score on a Student Achievement Test

      ``PPVT``
         a numeric vector: score on the Peabody Picture Vocabulary Test

      ``Raven``
         a numeric vector: score on the Raven Progressive Matrices Test

      ``n``
         a numeric vector: performance on a 'named' PA task

      ``s``
         a numeric vector: performance on a 'still' PA task

      ``ns``
         a numeric vector: performance on a 'named still' PA task

      ``na``
         a numeric vector: performance on a 'named action' PA task

      ``ss``
         a numeric vector: performance on a 'sentence still' PA task

      .. rubric:: Details
         :name: details

      The variables ``SAT``, ``PPVT`` and ``Raven`` are responses to be
      potentially explained by performance on the paired-associate (PA)
      learning tasks, ``n``, ``s``, ``ns``, ``na``, and ``ss``, which
      differed in the syntactic and semantic relationship between the
      stimulus and response words in each pair.

      Timm (1975) does not give a source, but the most relevant studies
      are Rowher & Ammons (1968) and Rohwer & Levin (1971). The
      paired-associate tasks are described as:

      ``n``
         (named): Simple paired-associate task where participants learn
         pairs of nouns with no additional context

      ``s``
         (sentence): Participants learn pairs embedded within a sentence

      ``ns``
         (named sentence): A combination where participants learn noun
         pairs with sentence context

      ``na``
         (named action): Pairs are learned with an action relationship
         between them

      ``ss``
         (sentence still): Similar to the sentence condition but with
         static presentation

      .. rubric:: Source
         :name: source

      Timm, N.H. 1975). *Multivariate Analysis with Applications in
      Education and Psychology*. Wadsworth (Brooks/Cole), Examples 4.3
      (p. 281), 4.7 (p. 313), 4.13 (p. 344).

      .. rubric:: References
         :name: references

      Friendly, M. (2007). HE plots for Multivariate General Linear
      Models. *Journal of Computational and Graphical Statistics*,
      **16**\ (2) 421–444. http://datavis.ca/papers/jcgs-heplots.pdf

      Rohwer, W.D., Jr., & Levin, J.R. (1968). Action, meaning and
      stimulus selection in paired-associate learning. *Journal of
      Verbal Learning and Verbal Behavior*, **7**: 137-141.

      Rohwer, W. D., Jr., & Ammons, M. S. (1971). Elaboration training
      and paired-associate learning efficiency in children. *Journal of
      Educational Psychology*, **62**\ (5), 376-383.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         str(Rohwer)

         # Plot responses against each predictor
         library(tidyr)
         library(dplyr)
         library(ggplot2)

         yvars <- c("SAT", "PPVT", "Raven" )
         xvars <- c("n", "s", "ns", "na", "ss")
         Rohwer_long <- Rohwer %>%
           pivot_longer(cols = all_of(xvars), names_to = "xvar", values_to = "x") |>
           pivot_longer(cols = all_of(yvars), names_to = "yvar", values_to = "y") |>
           mutate(xvar = factor(xvar, xvars), yvar = factor(yvar, yvars))

         ggplot(Rohwer_long, aes(x, y, color = SES, shape = SES, fill = SES)) +
           geom_point() +
           geom_smooth(method = "lm", se = FALSE, formula = y ~ x) +
           stat_ellipse(geom = "polygon", level = 0.68, alpha = 0.1) +
           facet_grid(yvar ~ xvar, scales = "free") +
           labs(x = "predictor", y = "response") +
           theme_bw(base_size = 14)


         ## ANCOVA, assuming equal slopes
         rohwer.mod <- lm(cbind(SAT, PPVT, Raven) ~ SES + n + s + ns + na + ss, data=Rohwer)
         car::Anova(rohwer.mod)

         # Visualize the ANCOVA model
         heplot(rohwer.mod)
         # Add ellipse to test all 5 regressors
         heplot(rohwer.mod, hypotheses=list("Regr" = c("n", "s", "ns", "na", "ss")))
         # View all pairs
         pairs(rohwer.mod, hypotheses=list("Regr" = c("n", "s", "ns", "na", "ss")))

         # or 3D plot
         ## Not run: 
         col <- c("red", "green3", "blue", "cyan", "magenta", "brown", "gray")
         heplot3d(rohwer.mod, hypotheses=list("Regr" = c("n", "s", "ns", "na", "ss")), 
                              col=col, wire=FALSE)

         ## End(Not run)

         ## fit separate, independent models for Lo/Hi SES
         rohwer.ses1 <- lm(cbind(SAT, PPVT, Raven) ~ n + s + ns + na + ss, data=Rohwer, subset=SES=="Hi")
         rohwer.ses2 <- lm(cbind(SAT, PPVT, Raven) ~ n + s + ns + na + ss, data=Rohwer, subset=SES=="Lo")

         # overlay the separate HE plots
         heplot(rohwer.ses1, ylim=c(40,110),col=c("red", "black"))
         heplot(rohwer.ses2, add=TRUE, col=c("blue", "black"), grand.mean=TRUE, error.ellipse=TRUE)
