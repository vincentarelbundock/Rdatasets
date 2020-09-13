==================== ===============
ProgramEffectiveness R Documentation
==================== ===============

Program Effectiveness Data
--------------------------

Description
~~~~~~~~~~~

Data used to study the effectiveness of a program.

Usage
~~~~~

::

   data("ProgramEffectiveness")

Format
~~~~~~

A data frame containing 32 cross-section observations on 4 variables.

grade
   Factor with levels ``"increase"`` and ``"decrease"``.

average
   Grade-point average.

testscore
   Test score on economics test.

participation
   Factor. Did the individual participate in the program?

Details
~~~~~~~

The data are taken form Spencer and Mazzeo (1980) who examined whether a
new method of teaching economics significantly influenced performance in
later economics courses.

Source
~~~~~~

Online complements to Greene (2003).

http://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

References
~~~~~~~~~~

Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper Saddle
River, NJ: Prentice Hall.

Spector, L. and Mazzeo, M. (1980). Probit Analysis and Economic
Education. *Journal of Economic Education*, **11**, 37–44.

See Also
~~~~~~~~

``Greene2003``

Examples
~~~~~~~~

::

   data("ProgramEffectiveness")

   ## Greene (2003), Table 21.1, col. "Probit"
   fm_probit <- glm(grade ~ average + testscore + participation,
     data = ProgramEffectiveness, family = binomial(link = "probit"))
   summary(fm_probit)
