.. container::

   ====== ===============
   morley R Documentation
   ====== ===============

   .. rubric:: Michelson Speed of Light Data
      :name: morley

   .. rubric:: Description
      :name: description

   A classical data of Michelson (but not this one with Morley) on
   measurements done in 1879 on the speed of light. The data consists of
   five experiments, each consisting of 20 consecutive ‘runs’. The
   response is the speed of light measurement, suitably coded (km/sec,
   with ``299000`` subtracted).

   .. rubric:: Usage
      :name: usage

   .. code:: R

      morley

   .. rubric:: Format
      :name: format

   A data frame with 100 observations on the following 3 variables.

   ``Expt``
      The experiment number, from 1 to 5.

   ``Run``
      The run number within each experiment.

   ``Speed``
      Speed-of-light measurement.

   .. rubric:: Details
      :name: details

   The data is here viewed as a randomized block experiment with
   ‘experiment’ and ‘run’ as the factors. ‘run’ may also be considered a
   quantitative variate to account for linear (or polynomial) changes in
   the measurement over the course of a single experiment.

   .. rubric:: Note
      :name: note

   This is the same dataset as ``michelson`` in package
   `MASS <https://CRAN.R-project.org/package=MASS>`__.

   .. rubric:: Source
      :name: source

   A. J. Weekes (1986) *A Genstat Primer*. London: Edward Arnold.

   S. M. Stigler (1977) Do robust estimators work with real data?
   *Annals of Statistics* **5**, 1055–1098. (See Table 6.)

   A. A. Michelson (1882) Experimental determination of the velocity of
   light made at the United States Naval Academy, Annapolis. *Astronomic
   Papers* **1** 135–8. U.S. Nautical Almanac Office. (See Table 24.)

   .. rubric:: Examples
      :name: examples

   .. code:: R

      require(stats); require(graphics)
      michelson <- transform(morley,
                             Expt = factor(Expt), Run = factor(Run))
      xtabs(~ Expt + Run, data = michelson)  # 5 x 20 balanced (two-way)
      plot(Speed ~ Expt, data = michelson,
           main = "Speed of Light Data", xlab = "Experiment No.")
      fm <- aov(Speed ~ Run + Expt, data = michelson)
      summary(fm)
      fm0 <- update(fm, . ~ . - Run)
      anova(fm0, fm)
