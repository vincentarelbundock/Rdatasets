.. container::

   ============= ===============
   terbuthylazin R Documentation
   ============= ===============

   .. rubric:: The effect of terbuthylazin on growth rate
      :name: the-effect-of-terbuthylazin-on-growth-rate

   .. rubric:: Description
      :name: description

   Test on the effect of terbuthylazin on *Lemna minor*, performed on an
   aseptic culture according to the OECD-guidelines.

   .. rubric:: Usage
      :name: usage

   ::

      data(terbuthylazin)

   .. rubric:: Format
      :name: format

   A data frame with 30 observations on the following 2 variables.

   dose
      a numeric vector of dose values.

   rgr
      a numeric vector of relative growth rates.

   .. rubric:: Details
      :name: details

   Dose is

   *μ l^{-1}*

   and rgr is the relative growth rate of *Lemna*.

   .. rubric:: Source
      :name: source

   Cedergreen N. (2004). Unpublished bioassay data.

   .. rubric:: Examples
      :name: examples

   ::


      ## displaying first 6 rows of the data set
      head(terbuthylazin)

      ## Fitting log-logistic model
      terbuthylazin.m1 <- drm(rgr~dose, data = terbuthylazin, fct = LL.4())
      summary(terbuthylazin.m1)

      ## Fitting log-logistic model
      ##  with Box-Cox transformation
      terbuthylazin.m2 <- boxcox(terbuthylazin.m1, method = "anova")
      summary(terbuthylazin.m2)
