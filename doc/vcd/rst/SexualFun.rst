.. container::

   ========= ===============
   SexualFun R Documentation
   ========= ===============

   .. rubric:: Sex is Fun
      :name: sex-is-fun

   .. rubric:: Description
      :name: description

   Data from Hout et al. (1987) given by Agresti (1990) summarizing the
   responses of married couples to the questionnaire item: Sex is fun
   for me and my partner: (a) never or occasionally, (b) fairly often,
   (c) very often, (d) almost always.

   .. rubric:: Usage
      :name: usage

   ::

      data("SexualFun")

   .. rubric:: Format
      :name: format

   A 2-dimensional array resulting from cross-tabulating the ratings of
   91 married couples. The variables and their levels are as follows:

   == ======= ===============================================
   No Name    Levels
   1  Husband Never Fun, Fairly Often, Very Often, Always Fun
   2  Wife    Never Fun, Fairly Often, Very Often, Always Fun
   == ======= ===============================================

   .. rubric:: Source
      :name: source

   M. Friendly (2000), Visualizing Categorical Data, page 91.

   .. rubric:: References
      :name: references

   A. Agresti (1990), *Categorical Data Analysis*. Wiley-Interscience,
   New York.

   M. Hout, O. D. Duncan, M. E. Sobel (1987), Association and
   heterogeneity: Structural models of similarities and differences,
   *Sociological Methodology*, **17**, 145-184.

   M. Friendly (2000), *Visualizing Categorical Data*. SAS Institute,
   Cary, NC.

   .. rubric:: Examples
      :name: examples

   ::

      data("SexualFun")

      ## Kappa statistics
      Kappa(SexualFun)

      ## Agreement Chart
      agreementplot(t(SexualFun), weights = 1)
      ## Partial Agreement Chart and B-Statistics
      agreementplot(t(SexualFun),
                    xlab = "Husband's Rating",
                    ylab = "Wife's Rating",
                    main = "Husband's and Wife's Sexual Fun")
