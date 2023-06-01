.. container::

   === ===============
   ICU R Documentation
   === ===============

   .. rubric:: ICU data set
      :name: ICU

   .. rubric:: Description
      :name: description

   The ICU data set consists of a sample of 200 subjects who were part
   of a much larger study on survival of patients following admission to
   an adult intensive care unit (ICU), derived from Hosmer, Lemeshow and
   Sturdivant (2013) and Friendly (2000).

   The major goal of this study was to develop a logistic regression
   model to predict the probability of survival to hospital discharge of
   these patients and to study the risk factors associated with ICU
   mortality. The clinical details of the study are described in
   Lemeshow, Teres, Avrunin, and Pastides (1988).

   This data set is often used to illustrate model selection methods for
   logistic regression.

   .. rubric:: Usage
      :name: usage

   ::

      data(ICU)

   .. rubric:: Format
      :name: format

   A data frame with 200 observations on the following 22 variables.

   ``died``
      Died before discharge?, a factor with levels ``No`` ``Yes``

   ``age``
      Patient age, a numeric vector

   ``sex``
      Patient sex, a factor with levels ``Female`` ``Male``

   ``race``
      Patient race, a factor with levels ``Black`` ``Other`` ``White``.
      Also represented here as ``white``.

   ``service``
      Service at ICU Admission, a factor with levels ``Medical``
      ``Surgical``

   ``cancer``
      Cancer part of present problem?, a factor with levels ``No``
      ``Yes``

   ``renal``
      History of chronic renal failure?, a factor with levels ``No``
      ``Yes``

   ``infect``
      Infection probable at ICU admission?, a factor with levels ``No``
      ``Yes``

   ``cpr``
      Patient received CPR prior to ICU admission?, a factor with levels
      ``No`` ``Yes``

   ``systolic``
      Systolic blood pressure at admission (mm Hg), a numeric vector

   ``hrtrate``
      Heart rate at ICU Admission (beats/min), a numeric vector

   ``previcu``
      Previous admission to an ICU within 6 Months?, a factor with
      levels ``No`` ``Yes``

   ``admit``
      Type of admission, a factor with levels ``Elective`` ``Emergency``

   ``fracture``
      Admission with a long bone, multiple, neck, single area, or hip
      fracture? a factor with levels ``No`` ``Yes``

   ``po2``
      PO2 from initial blood gases, a factor with levels ``>60``
      ``<=60``

   ``ph``
      pH from initial blood gases, a factor with levels ``>=7.25``
      ``<7.25``

   ``pco``
      PCO2 from initial blood gases, a factor with levels ``<=45``
      ``>45``

   ``bic``
      Bicarbonate (HCO3) level from initial blood gases, a factor with
      levels ``>=18`` ``<18``

   ``creatin``
      Creatinine, from initial blood gases, a factor with levels ``<=2``
      ``>2``

   ``coma``
      Level of unconsciousness at admission to ICU, a factor with levels
      ``None`` ``Stupor`` ``Coma``

   ``white``
      a recoding of ``race``, a factor with levels ``White``
      ``Non-white``

   ``uncons``
      a recoding of ``coma`` a factor with levels ``No`` ``Yes``

   .. rubric:: Details
      :name: details

   Patient ID numbers are the rownames of the data frame.

   Note that the last two variables ``white`` and ``uncons`` are a
   recoding of respectively ``race`` and ``coma`` to binary variables.

   .. rubric:: Source
      :name: source

   M. Friendly (2000), *Visualizing Categorical Data*, Appendix B.4. SAS
   Institute, Cary, NC.

   Hosmer, D. W. Jr., Lemeshow, S. and Sturdivant, R. X. (2013) *Applied
   Logistic Regression*, NY: Wiley, Third Edition.

   .. rubric:: References
      :name: references

   Lemeshow, S., Teres, D., Avrunin, J. S., Pastides, H. (1988).
   Predicting the Outcome of Intensive Care Unit Patients. *Journal of
   the American Statistical Association*, 83, 348-356.

   .. rubric:: Examples
      :name: examples

   ::

      data(ICU)
      # remove redundant variables (race, coma)
      ICU1 <- ICU[,-c(4,20)]

      # fit full model
      icu.full <- glm(died ~ ., data=ICU1, family=binomial)
      summary(icu.full)

      # simpler model (found from a "best" subsets procedure)
      icu.mod1 <- glm(died ~ age + sex + cancer + systolic + admit + uncons, 
        data=ICU1, 
        family=binomial)
      summary(icu.mod1)

      # even simpler model
      icu.mod2 <- glm(died ~ age + cancer  + admit + uncons, 
        data=ICU1, 
        family=binomial)
      summary(icu.mod2)

      anova(icu.mod2, icu.mod1, icu.full, test="Chisq")

      ## Reproduce Fig 6.12 from VCD

      icu.fit <- data.frame(ICU, prob=predict(icu.mod2, type="response"))

      # combine categorical risk factors to a single string
      risks <- ICU[, c("cancer", "admit", "uncons")]
      risks[,1] <- ifelse(risks[,1]=="Yes", "Cancer", "")
      risks[,2] <- ifelse(risks[,2]=="Emergency", "Emerg", "")
      risks[,3] <- ifelse(risks[,3]=="Yes", "Uncons", "")
      risks <- apply(risks, 1, paste, collapse="")
      risks[risks==""] <- "(none)"
      icu.fit$risks <- risks

      library(ggplot2)
      ggplot(icu.fit, aes(x=age, y=prob, color=risks)) +
          geom_point(size=2) +
          geom_line(size=1.25, alpha=0.5) +
          theme_bw() + ylab("Probability of death")
