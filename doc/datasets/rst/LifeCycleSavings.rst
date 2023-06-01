.. container::

   ================ ===============
   LifeCycleSavings R Documentation
   ================ ===============

   .. rubric:: Intercountry Life-Cycle Savings Data
      :name: LifeCycleSavings

   .. rubric:: Description
      :name: description

   Data on the savings ratio 1960–1970.

   .. rubric:: Usage
      :name: usage

   ::

      LifeCycleSavings

   .. rubric:: Format
      :name: format

   A data frame with 50 observations on 5 variables.

   ==== ===== ======= =================================
   [,1] sr    numeric aggregate personal savings
   [,2] pop15 numeric % of population under 15
   [,3] pop75 numeric % of population over 75
   [,4] dpi   numeric real per-capita disposable income
   [,5] ddpi  numeric % growth rate of dpi
   ==== ===== ======= =================================

   .. rubric:: Details
      :name: details

   Under the life-cycle savings hypothesis as developed by Franco
   Modigliani, the savings ratio (aggregate personal saving divided by
   disposable income) is explained by per-capita disposable income, the
   percentage rate of change in per-capita disposable income, and two
   demographic variables: the percentage of population less than 15
   years old and the percentage of the population over 75 years old. The
   data are averaged over the decade 1960–1970 to remove the business
   cycle or other short-term fluctuations.

   .. rubric:: Source
      :name: source

   The data were obtained from Belsley, Kuh and Welsch (1980). They in
   turn obtained the data from Sterling (1977).

   .. rubric:: References
      :name: references

   Sterling, Arnie (1977) Unpublished BS Thesis. Massachusetts Institute
   of Technology.

   Belsley, D. A., Kuh. E. and Welsch, R. E. (1980) *Regression
   Diagnostics*. New York: Wiley.

   .. rubric:: Examples
      :name: examples

   ::

      require(stats); require(graphics)
      pairs(LifeCycleSavings, panel = panel.smooth,
            main = "LifeCycleSavings data")
      fm1 <- lm(sr ~ pop15 + pop75 + dpi + ddpi, data = LifeCycleSavings)
      summary(fm1)
