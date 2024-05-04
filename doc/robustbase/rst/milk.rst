.. container::

   .. container::

      ==== ===============
      milk R Documentation
      ==== ===============

      .. rubric:: Daudin's Milk Composition Data
         :name: daudins-milk-composition-data

      .. rubric:: Description
         :name: description

      Daudin et al.(1988) give 8 readings on the composition of 86
      containers of milk. They speak about 85 observations, but this can
      be explained with the fact that observations 63 and 64 are
      identical (as noted by Rocke (1996)).

      The data set was used for analysing the stability of principal
      component analysis by the bootstrap method. In the same context,
      but using high breakdown point robust PCA, these data were
      analysed by Todorov et al. (1994). Atkinson (1994) used these data
      for ilustration of the forward search algorithm for identifying of
      multiple outliers.

      .. rubric:: Usage
         :name: usage

      ::

         data(milk, package="robustbase")

      .. rubric:: Format
         :name: format

      A data frame with 86 observations on the following 8 variables,
      all but the first measure units in *grams / liter*.

      ``X1``
         density

      ``X2``
         fat content

      ``X3``
         protein content

      ``X4``
         casein content

      ``X5``
         cheese dry substance measured in the factory

      ``X6``
         cheese dry substance measured in the laboratory

      ``X7``
         milk dry substance

      ``X8``
         cheese product

      .. rubric:: Source
         :name: source

      Daudin, J.J. Duby, C. and Trecourt, P. (1988) Stability of
      Principal Component Analysis Studied by the Bootstrap Method;
      *Statistics* **19**, 241–258.

      .. rubric:: References
         :name: references

      Todorov, V., Neyko, N., Neytchev, P. (1994) Stability of High
      Breakdown Point Robust PCA, in *Short Communications,
      COMPSTAT'94*; Physica Verlag, Heidelberg.

      Atkinson, A.C. (1994) Fast Very Robust Methods for the Detection
      of Multiple Outliers. *J. Amer. Statist. Assoc.* **89** 1329–1339.

      Rocke, D. M. and Woodruff, D. L. (1996) Identification of Outliers
      in Multivariate Data; *J. Amer. Statist. Assoc.* **91** (435),
      1047–1061.

      .. rubric:: Examples
         :name: examples

      ::

         data(milk)
         (c.milk <- covMcd(milk))
         summarizeRobWeights(c.milk $ mcd.wt)# 19..20 outliers
         umilk <- unique(milk) # dropping obs.64 (== obs.63)
         summary(cumilk <- covMcd(umilk, nsamp = "deterministic")) # 20 outliers
