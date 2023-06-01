.. container::

   === ===============
   pbc R Documentation
   === ===============

   .. rubric:: Mayo Clinic Primary Biliary Cholangitis Data
      :name: pbc

   .. rubric:: Description
      :name: description

   Primary sclerosing cholangitis is an autoimmune disease leading to
   destruction of the small bile ducts in the liver. Progression is slow
   but inexhortable, eventually leading to cirrhosis and liver
   decompensation. The condition has been recognised since at least 1851
   and was named "primary biliary cirrhosis" in 1949. Because cirrhosis
   is a feature only of advanced disease, a change of its name to
   "primary biliary cholangitis" was proposed by patient advocacy groups
   in 2014.

   This data is from the Mayo Clinic trial in PBC conducted between 1974
   and 1984. A total of 424 PBC patients, referred to Mayo Clinic during
   that ten-year interval, met eligibility criteria for the randomized
   placebo controlled trial of the drug D-penicillamine. The first 312
   cases in the data set participated in the randomized trial and
   contain largely complete data. The additional 112 cases did not
   participate in the clinical trial, but consented to have basic
   measurements recorded and to be followed for survival. Six of those
   cases were lost to follow-up shortly after diagnosis, so the data
   here are on an additional 106 cases as well as the 312 randomized
   participants.

   A nearly identical data set found in appendix D of Fleming and
   Harrington; this version has fewer missing values.

   .. rubric:: Usage
      :name: usage

   ::

      pbc
      data(pbc, package="survival")

   .. rubric:: Format
      :name: format

   ========= =============================================================
   age:      in years
   albumin:  serum albumin (g/dl)
   alk.phos: alkaline phosphotase (U/liter)
   ascites:  presence of ascites
   ast:      aspartate aminotransferase, once called SGOT (U/ml)
   bili:     serum bilirunbin (mg/dl)
   chol:     serum cholesterol (mg/dl)
   copper:   urine copper (ug/day)
   edema:    0 no edema, 0.5 untreated or successfully treated
   \         1 edema despite diuretic therapy
   hepato:   presence of hepatomegaly or enlarged liver
   id:       case number
   platelet: platelet count
   protime:  standardised blood clotting time
   sex:      m/f
   spiders:  blood vessel malformations in the skin
   stage:    histologic stage of disease (needs biopsy)
   status:   status at endpoint, 0/1/2 for censored, transplant, dead
   time:     number of days between registration and the earlier of death,
   \         transplantion, or study analysis in July, 1986
   trt:      1/2/NA for D-penicillmain, placebo, not randomised
   trig:     triglycerides (mg/dl)
   \         
   ========= =============================================================

   .. rubric:: Source
      :name: source

   T Therneau and P Grambsch (2000), *Modeling Survival Data: Extending
   the Cox Model*, Springer-Verlag, New York. ISBN: 0-387-98784-3.

   .. rubric:: See Also
      :name: see-also

   ``pbcseq``
