.. container::

   .. container::

      ====== ===============
      S.alba R Documentation
      ====== ===============

      .. rubric:: Potency of two herbicides
         :name: potency-of-two-herbicides

      .. rubric:: Description
         :name: description

      Data are from an experiment, comparing the potency of the two
      herbicides glyphosate and bentazone in white mustard *Sinapis
      alba*.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(S.alba)

      .. rubric:: Format
         :name: format

      A data frame with 68 observations on the following 3 variables.

      ``Dose``
         a numeric vector containing the dose in g/ha.

      ``Herbicide``
         a factor with levels ``Bentazone`` ``Glyphosate`` (the two
         herbicides applied).

      ``DryMatter``
         a numeric vector containing the response (dry matter in g/pot).

      .. rubric:: Details
         :name: details

      The lower and upper limits for the two herbicides can be assumed
      identical, whereas slopes and ED50 values are different (in the
      log-logistic model).

      .. rubric:: Source
         :name: source

      Christensen, M. G. and Teicher, H. B., and Streibig, J. C. (2003)
      Linking fluorescence induction curve and biomass in herbicide
      screening, *Pest Management Science*, **59**, 1303–1310.

      .. rubric:: See Also
         :name: see-also

      See the examples sections for ``drm`` and ``EDcomp``.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Fitting a log-logistic model with
         ##  common lower and upper limits
         S.alba.LL.4.1 <- drm(DryMatter~Dose, Herbicide, data=S.alba, fct = LL.4(),
         pmodels=data.frame(Herbicide,1,1,Herbicide)) 
         summary(S.alba.LL.4.1)

         ## Applying the optimal transform-both-sides Box-Cox transformation
         ## (using the initial model fit)  
         S.alba.LL.4.2 <- boxcox(S.alba.LL.4.1, method = "anova") 
         summary(S.alba.LL.4.2)

         ## Plotting fitted regression curves together with the data
         plot(S.alba.LL.4.2)
