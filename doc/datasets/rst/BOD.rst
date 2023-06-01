.. container::

   === ===============
   BOD R Documentation
   === ===============

   .. rubric:: Biochemical Oxygen Demand
      :name: BOD

   .. rubric:: Description
      :name: description

   The ``BOD`` data frame has 6 rows and 2 columns giving the
   biochemical oxygen demand versus time in an evaluation of water
   quality.

   .. rubric:: Usage
      :name: usage

   ::

      BOD

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   ``Time``
      A numeric vector giving the time of the measurement (days).

   ``demand``
      A numeric vector giving the biochemical oxygen demand (mg/l).

   .. rubric:: Source
      :name: source

   Bates, D.M. and Watts, D.G. (1988), *Nonlinear Regression Analysis
   and Its Applications*, Wiley, Appendix A1.4.

   Originally from Marske (1967), *Biochemical Oxygen Demand Data
   Interpretation Using Sum of Squares Surface* M.Sc. Thesis, University
   of Wisconsin – Madison.

   .. rubric:: Examples
      :name: examples

   ::

      require(stats)
      # simplest form of fitting a first-order model to these data
      fm1 <- nls(demand ~ A*(1-exp(-exp(lrc)*Time)), data = BOD,
                 start = c(A = 20, lrc = log(.35)))
      coef(fm1)
      fm1
      # using the plinear algorithm  (trace o/p differs by platform)
      ## IGNORE_RDIFF_BEGIN
      fm2 <- nls(demand ~ (1-exp(-exp(lrc)*Time)), data = BOD,
                 start = c(lrc = log(.35)), algorithm = "plinear", trace = TRUE)
      ## IGNORE_RDIFF_END
      # using a self-starting model
      fm3 <- nls(demand ~ SSasympOrig(Time, A, lrc), data = BOD)
      summary(fm3)
