.. container::

   ======== ===============
   bacteria R Documentation
   ======== ===============

   .. rubric:: Presence of Bacteria after Drug Treatments
      :name: presence-of-bacteria-after-drug-treatments

   .. rubric:: Description
      :name: description

   Tests of the presence of the bacteria *H. influenzae* in children
   with otitis media in the Northern Territory of Australia.

   .. rubric:: Usage
      :name: usage

   ::

      bacteria

   .. rubric:: Format
      :name: format

   This data frame has 220 rows and the following columns:

   y
      presence or absence: a factor with levels ``n`` and ``y``.

   ap
      active/placebo: a factor with levels ``a`` and ``p``.

   hilo
      hi/low compliance: a factor with levels ``hi`` amd ``lo``.

   week
      numeric: week of test.

   ID
      subject ID: a factor.

   trt
      a factor with levels ``placebo``, ``drug`` and ``drug+``, a
      re-coding of ``ap`` and ``hilo``.

   .. rubric:: Details
      :name: details

   Dr A. Leach tested the effects of a drug on 50 children with a
   history of otitis media in the Northern Territory of Australia. The
   children were randomized to the drug or the a placebo, and also to
   receive active encouragement to comply with taking the drug.

   The presence of *H. influenzae* was checked at weeks 0, 2, 4, 6 and
   11: 30 of the checks were missing and are not included in this data
   frame.

   .. rubric:: Source
      :name: source

   Dr Amanda Leach *via* Mr James McBroom.

   .. rubric:: References
      :name: references

   Menzies School of Health Research 1999–2000 Annual Report. p.20.
   http://www.menzies.edu.au/icms_docs/172302_2000_Annual_report.pdf.

   Venables, W. N. and Ripley, B. D. (2002) *Modern Applied Statistics
   with S.* Fourth edition. Springer.

   .. rubric:: Examples
      :name: examples

   ::

      contrasts(bacteria$trt) <- structure(contr.sdif(3),
           dimnames = list(NULL, c("drug", "encourage")))
      ## fixed effects analyses
      summary(glm(y ~ trt * week, binomial, data = bacteria))
      summary(glm(y ~ trt + week, binomial, data = bacteria))
      summary(glm(y ~ trt + I(week > 2), binomial, data = bacteria))

      # conditional random-effects analysis
      library(survival)
      bacteria$Time <- rep(1, nrow(bacteria))
      coxph(Surv(Time, unclass(y)) ~ week + strata(ID),
            data = bacteria, method = "exact")
      coxph(Surv(Time, unclass(y)) ~ factor(week) + strata(ID),
            data = bacteria, method = "exact")
      coxph(Surv(Time, unclass(y)) ~ I(week > 2) + strata(ID),
            data = bacteria, method = "exact")

      # PQL glmm analysis
      library(nlme)
      summary(glmmPQL(y ~ trt + I(week > 2), random = ~ 1 | ID,
                      family = binomial, data = bacteria))
