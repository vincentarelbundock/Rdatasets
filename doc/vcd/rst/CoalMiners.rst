.. container::

   ========== ===============
   CoalMiners R Documentation
   ========== ===============

   .. rubric:: Breathlessness and Wheeze in Coal Miners
      :name: CoalMiners

   .. rubric:: Description
      :name: description

   Data from Ashford & Sowden (1970) given by Agresti (1990) on the
   association between two pulmonary conditions, breathlessness and
   wheeze, in a large sample of coal miners who were smokers with no
   radiological evidence of pneumoconlosis, aged between 20–64 when
   examined. This data is frequently used as an example of fitting
   models for bivariate, binary responses.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("CoalMiners")

   .. rubric:: Format
      :name: format

   A 3-dimensional table of size 2 x 2 x 9 resulting from
   cross-tabulating variables for 18,282 coal miners. The variables and
   their levels are as follows:

   == ============== ===============================
   No Name           Levels
   1  Breathlessness B, NoB
   2  Wheeze         W, NoW
   3  Age            20-24, 25-29, 30-34, ..., 60-64
   == ============== ===============================

   .. rubric:: Details
      :name: details

   In an earlier version of this data set, the first group, aged 20-24,
   was inadvertently omitted from this data table and the breathlessness
   variable was called wheeze and vice versa.

   .. rubric:: Source
      :name: source

   Michael Friendly (2000), Visualizing Categorical Data, pages 82–83,
   319–322.

   .. rubric:: References
      :name: references

   A. Agresti (1990), *Categorical Data Analysis*. Wiley-Interscience,
   New York, Table 7.11, p. 237

   J. R. Ashford and R. D. Sowdon (1970), Multivariate probit analysis,
   *Biometrics*, **26**, 535–546.

   M. Friendly (2000), *Visualizing Categorical Data*. SAS Institute,
   Cary, NC.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data("CoalMiners")

      ftable(CoalMiners, row.vars = 3)

      ## Fourfold display, both margins equated
      fourfold(CoalMiners[,,2:9], mfcol = c(2,4))

      ## Fourfold display, strata equated
      fourfold(CoalMiners[,,2:9], std = "ind.max", mfcol = c(2,4))


      ## Log Odds Ratio Plot
      lor_CM <- loddsratio(CoalMiners)
      summary(lor_CM)
      plot(lor_CM)
      lor_CM_df <- as.data.frame(lor_CM)

      # fit linear models using WLS
      age <- seq(20, 60, by = 5)
      lmod <- lm(LOR ~ age, weights = 1 / ASE^2, data = lor_CM_df)
      grid.lines(age, fitted(lmod), gp = gpar(col = "blue"))
      qmod <- lm(LOR ~ poly(age, 2), weights = 1 / ASE^2, data = lor_CM_df)
      grid.lines(age, fitted(qmod), gp = gpar(col = "red"))
