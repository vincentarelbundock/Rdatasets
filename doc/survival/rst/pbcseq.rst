.. container::

   ====== ===============
   pbcseq R Documentation
   ====== ===============

   .. rubric:: Mayo Clinic Primary Biliary Cirrhosis, sequential data
      :name: pbcseq

   .. rubric:: Description
      :name: description

   This data is a continuation of the PBC data set, and contains the
   follow-up laboratory data for each study patient. An analysis based
   on the data can be found in Murtagh, et. al.

   The primary PBC data set contains only baseline measurements of the
   laboratory parameters. This data set contains multiple laboratory
   results, but only on the 312 randomized patients. Some baseline data
   values in this file differ from the original PBC file, for instance,
   the data errors in prothrombin time and age which were discovered
   after the original analysis (see Fleming and Harrington, figure
   4.6.7).

   One "feature" of the data deserves special comment. The last
   observation before death or liver transplant often has many more
   missing covariates than other data rows. The original clinical
   protocol for these patients specified visits at 6 months, 1 year, and
   annually thereafter. At these protocol visits lab values were
   obtained for a large pre-specified battery of tests. "Extra" visits,
   often undertaken because of worsening medical condition, did not
   necessarily have all this lab work. The missing values are thus
   potentially informative.

   .. rubric:: Usage
      :name: usage

   ::

      pbcseq
      data(pbc, package="survival")

   .. rubric:: Format
      :name: format

   ========= =============================================================
   id:       case number
   age:      in years
   sex:      m/f
   trt:      1/2/NA for D-penicillmain, placebo, not randomised
   time:     number of days between registration and the earlier of death,
   \         transplantion, or study analysis in July, 1986
   status:   status at endpoint, 0/1/2 for censored, transplant, dead
   day:      number of days between enrollment and this visit date
   \         all measurements below refer to this date
   albumin:  serum albumin (mg/dl)
   alk.phos: alkaline phosphotase (U/liter)
   ascites:  presence of ascites
   ast:      aspartate aminotransferase, once called SGOT (U/ml)
   bili:     serum bilirunbin (mg/dl)
   chol:     serum cholesterol (mg/dl)
   copper:   urine copper (ug/day)
   edema:    0 no edema, 0.5 untreated or successfully treated
   \         1 edema despite diuretic therapy
   hepato:   presence of hepatomegaly or enlarged liver
   platelet: platelet count
   protime:  standardised blood clotting time
   spiders:  blood vessel malformations in the skin
   stage:    histologic stage of disease (needs biopsy)
   trig:     triglycerides (mg/dl)
   \         
   ========= =============================================================

   .. rubric:: Source
      :name: source

   T Therneau and P Grambsch, "Modeling Survival Data: Extending the Cox
   Model", Springer-Verlag, New York, 2000. ISBN: 0-387-98784-3.

   .. rubric:: References
      :name: references

   Murtaugh PA. Dickson ER. Van Dam GM. Malinchoc M. Grambsch PM.
   Langworthy AL. Gips CH. "Primary biliary cirrhosis: prediction of
   short-term survival based on repeated patient visits." Hepatology.
   20(1.1):126-34, 1994.

   Fleming T and Harrington D., "Counting Processes and Survival
   Analysis", Wiley, New York, 1991.

   .. rubric:: See Also
      :name: see-also

   ``pbc``

   .. rubric:: Examples
      :name: examples

   ::

      # Create the start-stop-event triplet needed for coxph
      first <- with(pbcseq, c(TRUE, diff(id) !=0)) #first id for each subject
      last  <- c(first[-1], TRUE)  #last id

      time1 <- with(pbcseq, ifelse(first, 0, day))
      time2 <- with(pbcseq, ifelse(last,  futime, c(day[-1], 0)))
      event <- with(pbcseq, ifelse(last,  status, 0))

      fit1 <- coxph(Surv(time1, time2, event) ~ age + sex + log(bili), pbcseq)
