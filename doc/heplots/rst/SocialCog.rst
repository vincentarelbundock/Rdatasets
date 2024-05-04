.. container::

   .. container::

      ========= ===============
      SocialCog R Documentation
      ========= ===============

      .. rubric:: Social Cognitive Measures in Psychiatric Groups
         :name: social-cognitive-measures-in-psychiatric-groups

      .. rubric:: Description
         :name: description

      The general purpose of the study (Hartman, 2016, Heinrichs et al.
      (2015)) was to evaluate patterns and levels of performance on
      neurocognitive measures among individuals with schizophrenia and
      schizoaffective disorder using a well-validated, comprehensive
      neurocognitive battery specifically designed for individuals with
      psychosis (Heinrichs et al. (2008))

      .. rubric:: Format
         :name: format

      A data frame with 139 observations on the following 5 variables.

      ``Dx``
         Diagnostic group, a factor with levels ``Schizophrenia``,
         ``Schizoaffective``, ``Control``

      ``MgeEmotions``
         Score on the Managing emotions test, a numeric vector

      ``ToM``
         Score on the The Reading the Mind in the Eyes test (theory of
         mind), a numeric vector

      ``ExtBias``
         Externalizing Bias score, a numeric vector

      ``PersBias``
         Personal Bias score, a numeric vector

      .. rubric:: Details
         :name: details

      The data here are for a subset of the observations in ``NeuroCog``
      for which measures on various scales of social cognition were also
      available. Interest here is on whether the schizophrenia group can
      be distinguished from the schizoaffective group on these measures.

      The Social Cognitive measures were designed to tap various aspects
      of the perception and cognitive procession of emotions of others.
      Emotion perception was assessed using a Managing Emotions
      (``MgeEmotions``) score from the MCCB. A "theory of mind"
      (``ToM``) score assessed ability to read the emotions of others
      from photographs of the eye region of male and female faces. Two
      other measures, externalizing bias (``ExtBias``) and personalizing
      bias (``PersBias``) were calculated from a scale measuring the
      degree to which individuals attribute internal, personal or
      situational causal attributions to positive and negative social
      events.

      See ``NeuroCog`` for a description of the sample. Only those with
      complete data on all the social cognitive measures are included in
      this data set.

      There is one extreme outlier in the schizophrenia group and other
      possible outliers in the control group, left in here for tutorial
      purposes.

      .. rubric:: Source
         :name: source

      Hartman, L. I. (2016). Schizophrenia and Schizoaffective Disorder:
      One Condition or Two? Unpublished PhD dissertation, York
      University.

      Heinrichs, R.W., Pinnock, F., Muharib, E., Hartman, L.I.,
      Goldberg, J.O., & McDermid Vaz, S. (2015). Neurocognitive
      normality in schizophrenia revisited. *Schizophrenia Research:
      Cognition*, **2** (4), 227-232. doi: 10.1016/j.scog.2015.09.001

      .. rubric:: Examples
         :name: examples

      ::

         library(car)
         data(SocialCog)
         SC.mod <- lm(cbind(MgeEmotions, ToM, ExtBias, PersBias) ~ Dx, data=SocialCog)
         SC.mod
         car::Anova(SC.mod)

         # test hypotheses of interest in terms of contrasts
         print(linearHypothesis(SC.mod, "Dx1"), SSP=FALSE)
         print(linearHypothesis(SC.mod, "Dx2"), SSP=FALSE)

         #' ## HE plots

         heplot(SC.mod, hypotheses=list("Dx1"="Dx1", "Dx2"="Dx2"),
             fill=TRUE, fill.alpha=.1)
             
         pairs(SC.mod, fill=c(TRUE,FALSE), fill.alpha=.1) 
