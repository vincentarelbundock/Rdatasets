.. container::

   .. container::

      ======= ===============
      Hernior R Documentation
      ======= ===============

      .. rubric:: Recovery from Elective Herniorrhaphy
         :name: recovery-from-elective-herniorrhaphy

      .. rubric:: Description
         :name: description

      A data set on measures of post-operative recovery of 32 patients
      undergoing an elective herniorrhaphy operation, in relation to
      pre-operative measures.

      .. rubric:: Format
         :name: format

      A data frame with 32 observations on the following 9 variables.

      ``age``
         patient age

      ``sex``
         patient sex, a factor with levels ``f`` ``m``

      ``pstat``
         physical status (ignoring that associated with the operation).
         A 1-5 scale, with 1=perfect health, 5=very poor health.

      ``build``
         body build, a 1-5 scale, with 1=emaciated, 2=thin, 3=average,
         4=fat, 5=obese.

      ``cardiac``
         preoperative complications with heart, 1-4 scale, with 1=none,
         2=mild, 3=moderate, 4=severe.

      ``resp``
         preoperative complications with respiration, 1-4 scale, with
         1=none, 2=mild, 3=moderate, 4=severe.

      ``leave``
         condition upon leaving the recovery room, a 1-4 scale, with
         1=routine recovery, 2=intensive care for observation overnight,
         3=intensive care, with moderate care required, 4=intensive
         care, with moderate care required.

      ``los``
         length of stay in hospital after operation (days)

      ``nurse``
         level of nursing required one week after operation, a 1-5
         scale, with 1=intense, 2=heavy, 3=moderate, 4=light, 5=none
         (?); see Details

      .. rubric:: Details
         :name: details

      ``leave``, ``nurse`` and ``los`` are outcome measures; the
      remaining variables are potential predictors of recovery status.

      The variable ``nurse`` is recorded as 1-4, with remaining (20)
      entries entered as "-" in both sources. It is not clear whether
      this means "none" or NA. The former interpretation was used in
      constructing the R data frame, so ``nurse==5`` for these
      observations. Using ``Hernior$nurse[Hernior$nurse==5] <- NA``
      would change to the other interpretation, but render ``nurse``
      useless in a multivariate analysis.

      The ordinal predictors could instead be treated as factors, and
      there are also potential interactions to be explored.

      .. rubric:: Source
         :name: source

      Mosteller, F. and Tukey, J. W. (1977), *Data analysis and
      regression*, Reading, MA: Addison-Wesley. Data Exhibit 8, 567-568.
      Their source: A study by B. McPeek and J. P. Gilbert of the
      Harvard Anesthesia Center.

      .. rubric:: References
         :name: references

      Hand, D. J., Daly, F., Lunn, A. D., McConway, K. J. and Ostrowski,
      E. (1994), *A Handbook of Small Data Sets*, Number 484, 390-391.

      .. rubric:: Examples
         :name: examples

      ::

         library(car)
         data(Hernior)
         str(Hernior)
         Hern.mod <- lm(cbind(leave, nurse, los) ~ 
                        age + sex +  pstat +  build + cardiac + resp, data=Hernior)
         car::Anova(Hern.mod, test="Roy") # actually, all tests are identical

         # test overall regression
         print(linearHypothesis(Hern.mod, c("age", "sexm", "pstat", "build", "cardiac", "resp")), SSP=FALSE)

         # joint test of age, sex & caridac
         print(linearHypothesis(Hern.mod, c("age", "sexm", "cardiac")), SSP=FALSE)

         # HE plots
         clr <- c("red", "darkgray", "blue", "darkgreen", "magenta", "brown", "black")
         heplot(Hern.mod, col=clr)
         pairs(Hern.mod, col=clr)

         ## Enhancing the pairs plot ...
         # create better variable labels
         vlab <- c("LeaveCondition\n(leave)", 
                   "NursingCare\n(nurse)", 
                   "LengthOfStay\n(los)")
         # Add ellipse to test all 5 regressors simultaneously
         hyp <- list("Regr" = c("age", "sexm", "pstat", "build", "cardiac", "resp"))
         pairs(Hern.mod, hypotheses=hyp, col=clr, var.labels=vlab)

         ## Views in canonical space for the various predictors
         if (require(candisc)) {
             Hern.canL <- candiscList(Hern.mod)
             plot(Hern.canL, term="age")
             plot(Hern.canL, term="sex")
             plot(Hern.canL, term="pstat")  # physical status
         }
