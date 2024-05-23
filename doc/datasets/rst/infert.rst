.. container::

   .. container::

      ====== ===============
      infert R Documentation
      ====== ===============

      .. rubric:: Infertility after Spontaneous and Induced Abortion
         :name: infertility-after-spontaneous-and-induced-abortion

      .. rubric:: Description
         :name: description

      This is a matched case-control study dating from before the
      availability of conditional logistic regression.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         infert

      .. rubric:: Format
         :name: format

      == ===================== ====================
      1. Education             0 = 0-5 years
      \                        1 = 6-11 years
      \                        2 = 12+ years
      2. age                   age in years of case
      3. parity                count
      4. number of prior       0 = 0
      \  induced abortions     1 = 1
      \                        2 = 2 or more
      5. case status           1 = case
      \                        0 = control
      6. number of prior       0 = 0
      \  spontaneous abortions 1 = 1
      \                        2 = 2 or more
      7. matched set number    1-83
      8. stratum number        1-63
      == ===================== ====================

      .. rubric:: Note
         :name: note

      One case with two prior spontaneous abortions and two prior
      induced abortions is omitted.

      .. rubric:: Source
         :name: source

      Trichopoulos, D., Handanos, N., Danezis, J., Kalandidi, A., &
      Kalapothaki, V. (1976). Induced abortion and secondary
      infertility. *British Journal of Obstetrics and Gynaecology*,
      **83**, 645–650.
      `doi:10.1111/j.1471-0528.1976.tb00904.x <https://doi.org/10.1111/j.1471-0528.1976.tb00904.x>`__.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         require(stats)
         model1 <- glm(case ~ spontaneous+induced, data = infert, family = binomial())
         summary(model1)
         ## adjusted for other potential confounders:
         summary(model2 <- glm(case ~ age+parity+education+spontaneous+induced,
                              data = infert, family = binomial()))
         ## Really should be analysed by conditional logistic regression
         ## which is in the survival package
         if(require(survival)){
           model3 <- clogit(case ~ spontaneous+induced+strata(stratum), data = infert)
           print(summary(model3))
           detach()  # survival (conflicts)
         }
