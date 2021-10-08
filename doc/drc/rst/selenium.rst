.. container::

   ======== ===============
   selenium R Documentation
   ======== ===============

   .. rubric:: Data from toxicology experiments with selenium
      :name: data-from-toxicology-experiments-with-selenium

   .. rubric:: Description
      :name: description

   Comparison of toxicity of four types of selenium by means of
   dose-response analysis

   .. rubric:: Usage
      :name: usage

   ::

      data(selenium)

   .. rubric:: Format
      :name: format

   A data frame with 25 observations on the following 4 variables.

   ``type``
      a numeric vector indicating the form of selenium applied

   ``conc``
      a numeric vector of (total) selenium concentrations

   ``total``
      a numeric vector containing the total number of flies

   ``dead``
      a numeric vector containing the number of dead flies

   .. rubric:: Details
      :name: details

   The experiment is described in more details by Jeske et al. (2009).

   .. rubric:: Source
      :name: source

   Jeske, D. R., Xu, H. K., Blessinger, T., Jensen, P. and Trumble, J.
   (2009) Testing for the Equality of EC50 Values in the Presence of
   Unequal Slopes With Application to Toxicity of Selenium Types,
   *Journal of Agricultural, Biological, and Environmental Statistics*,
   **14**, 469–483

   .. rubric:: Examples
      :name: examples

   ::


      ## Analysis similar to what is proposed in Jeske et al (2009)
      ##  but simply using existing functionality in "drc"

      ## Fitting the two-parameter log-logistic model with unequal ED50 and slope
      sel.m1 <- drm(dead/total~conc, type, weights=total, data=selenium, fct=LL.2(), 
      type="binomial")
      #sel.m1b <- drm(dead/total~conc, type, weights=total, data=selenium, fct=LN.2(), 
      # type="binomial", start=c(1,1,1,1,50,50,50,50))
      plot(sel.m1, ylim = c(0, 1.3))
      summary(sel.m1)

      ## Testing for equality of slopes
      sel.m2 <- drm(dead/total~conc, type, weights=total, data=selenium, fct=LL.2(), 
      type="binomial", pmodels=list(~1, ~factor(type)-1))
      sel.m2b <- drm(dead/total~conc, type, weights=total, data=selenium, fct=LN.2(), 
      type="binomial", pmodels=list(~1, ~factor(type)-1))
      plot(sel.m2, ylim = c(0, 1.3))
      summary(sel.m2)
      anova(sel.m2, sel.m1)  # 48.654
      #anova(sel.m2b, sel.m1b)
      # close to the value 48.46 reported in the paper

      ## Testing for equality of ED50
      sel.m3<-drm(dead/total~conc, type, weights=total, data=selenium, fct=LL.2(), 
      type="binomial", pmodels=list(~factor(type)-1, ~1))
      #sel.m3b<-drm(dead/total~conc, type, weights=total, data=selenium, fct=LN.2(), 
      # type="binomial", pmodels=list(~factor(type)-1, ~1), start=c(1,1,1,1,50))
      plot(sel.m3, ylim = c(0, 1.3))
      summary(sel.m3)

      anova(sel.m3, sel.m1)  # 123.56
      #anova(sel.m3b, sel.m1b) 
      # not too far from the value 138.45 reported in the paper
      # (note that the estimation procedure is not exactly the same)
      # (and we use the log-logistic model instead of the log-normal model)
