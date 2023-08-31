.. container::

   ==================== ===============
   ProgramEffectiveness R Documentation
   ==================== ===============

   .. rubric:: Program Effectiveness Data
      :name: ProgramEffectiveness

   .. rubric:: Description
      :name: description

   Data used to study the effectiveness of a program.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("ProgramEffectiveness")

   .. rubric:: Format
      :name: format

   A data frame containing 32 cross-section observations on 4 variables.

   grade
      Factor with levels ``"increase"`` and ``"decrease"``.

   average
      Grade-point average.

   testscore
      Test score on economics test.

   participation
      Factor. Did the individual participate in the program?

   .. rubric:: Details
      :name: details

   The data are taken form Spencer and Mazzeo (1980) who examined
   whether a new method of teaching economics significantly influenced
   performance in later economics courses.

   .. rubric:: Source
      :name: source

   Online complements to Greene (2003).

   https://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

   .. rubric:: References
      :name: references

   Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper
   Saddle River, NJ: Prentice Hall.

   Spector, L. and Mazzeo, M. (1980). Probit Analysis and Economic
   Education. *Journal of Economic Education*, **11**, 37–44.

   .. rubric:: See Also
      :name: see-also

   ``Greene2003``

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data("ProgramEffectiveness")

      ## Greene (2003), Table 21.1, col. "Probit"
      fm_probit <- glm(grade ~ average + testscore + participation,
        data = ProgramEffectiveness, family = binomial(link = "probit"))
      summary(fm_probit)
