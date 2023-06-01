.. container::

   ======== ===============
   indo_rct R Documentation
   ======== ===============

   .. rubric:: RCT of Indomethacin for Prevention of Post-ERCP
      Pancreatitis
      :name: indo_rct

   .. rubric:: Description
      :name: description

   Results of a randomized, placebo-controlled, prospective 2-arm trial
   of rectal indomethacin (100 mg) vs. placebo prevent post-ERCP
   pancreatitis in 602 participants, as reported by Elmunzer, Higgins,
   et al. in 2012 in the New England Journal of Medicine (more details
   available below the variable definitions).

   .. rubric:: Usage
      :name: usage

   ::

      indo_rct

   .. rubric:: Format
      :name: format

   A data frame with 602 observations and 33 variables

   id
      subject id, first integer indicates center, integer,
      range:1001-4003

   site
      study site (center), factor, 1 = University of Michigan, 2=
      Indiana University, 3 = University of Kentucky, 4 = Case Western

   age
      age in years, numeric, range: 19-90

   risk
      risk score, numeric, range: 1-5.5

   gender
      male or female, factor, levels: 1_female, 2_male

   sod
      sphincter of oddi dysfunction was present, a risk factor favoring
      post-ERCP pancreatitis, factor, levels: 0_no, 1_yes

   pep
      previous post-ERCP pancreatitis (PEP), a risk factor for future
      PEP, factor, levels: 0_no, 1_yes

   recpanc
      Recurrent Pancreatitis, a risk factor for future PEP, factor,
      levels: 0_no, 1_yes

   psphinc
      a Pancreatic Sphincterotomy was performed, a risk factor for PEP,
      factor, levels: 0_no, 1_yes

   precut
      a sphincter pre-cut was needed to enter the papilla, a risk factor
      for PEP, factor, levels: 0_no, 1_yes

   difcan
      Cannulation of the papilla was difficult, a risk factor for PEP,
      factor, levels: 0_no, 1_yes

   pneudil
      Pneumatic dilation of the papilla was performed, a risk factor for
      PEP, factor, levels: 0_no, 1_yes

   amp
      An Ampullectomy was performed for dysplasia or cancer, which could
      be a risk factor for PEP, factor, levels: 0_no, 1_yes

   paninj
      Contrast was injected into the pancreas during the procedure, a
      risk factor for PEP, factor, levels: 0_no, 1_yes

   acinar
      The pancreas appeared to have acinarization on imaging, which
      could be a risk factor for PEP, factor, levels: 0_no, 1_yes

   brush
      Brushings were taken from the pancreatic duct, a possible risk
      factor favoring post-ERCP pancreatitis. factor, levels: 0_no,
      1_yes

   asa81
      Aspirin was used at a dose of 81 mg per day, which may increase
      the risk of bleeding. factor, levels: 0_no, 1_yes

   asa325
      Aspirin was used at a dose of 325 mg per day, which may increase
      the risk of bleeding. factor, levels: 0_no, 1_yes

   asa
      Aspirin was used (at a dose of 325 mg per day(at any dose), which
      may increase the risk of bleeding. factor, levels: 0_no, 1_yes

   prophystent
      A pancreatic duct stent was placed at the end of the procedure per
      the judgement of the endoscopist (more often in high-risk cases),
      a potential protective effect against PEP, factor, levels: 0_no,
      1_yes

   therastent
      A pancreatic duct stent was placed in order to treat a clinically
      significant narrowing of the pancreatic duct, a potential
      protective effect against PEP, factor, levels: 0_no, 1_yes

   pdstent
      A pancreatic duct stent was placed at the end of the procedure for
      any reason, a potential protective effect against PEP, factor,
      levels: 0_no, 1_yes

   sodsom
      Sphincter of oddi manometry was performed during the procedure for
      SOD, a risk factor for PEP, factor, levels: 0_no, 1_yes

   bsphinc
      A biliary sphincterotomy was performed, which could be a risk
      factor for PEP, factor, levels: 0_no, 1_yes

   bstent
      A biliary stent was placed to relieve significant biliary
      obstruction, factor, levels: 0_no, 1_yes

   chole
      Choledocholithiasis (gallstones blocking the biliary duct) was
      present, factor, levels: 0_no, 1_yes

   pbmal
      Malignancy of the biliary duct or pancreas was found, factor,
      levels: 0_no, 1_yes

   train
      A trainee participated in the ERCP, which could be a risk factor
      for PEP, factor, levels: 0_no, 1_yes

   outcome
      outcome of post-ercp pancreatitis, factor, levels: 0_no, 1_yes

   status
      outpatient status, factor, levels: 0_inpatient, 1_outpatient

   type
      Sphincter of Oddi dysfunction type/level - higher numbers are more
      severe with greater association with PEP, factor, levels: 0_no
      SOC, 1_type 1, 2_type 2, 3_type 3

   rx
      treatment arm, factor, levels: 0_placebo, 1_indomethacin

   bleed
      A gastrointestinal bleed occurred (which could be a complication
      of indomethacin therapy), factor, levels: 1. no, 2. yes

   .. rubric:: Details
      :name: details

   | ERCP, or endoscopic retrograde cholangio-pancreatogram, is a
     procedure performed by threading an endoscope through the mouth to
     the opening in the duodenum where bile and pancreatic digestive
     juices are released into the intestine. ERCP is helpful for
     treating blockages of flow of bile (gallstones, cancer), or
     diagnosing cancers of the pancreas, but has a high rate of
     complications (15-25%).
   | The occurrence of post-ERCP pancreatitis is a common and feared
     complication, as pancreatitis can result in multisystem organ
     failure and death, and can occur in ~ 16% of ERCP procedures.
   | The inflammatory cytokine storm that can result from this
     procedural complication can be quite severe. Several small
     randomized trials suggested that anti-inflammatory NSAID therapies
     at the time of ERCP could reduce the rate of this complication, but
     all were rather small single-center studies, and were not
     sufficiently convincing to change practice.
   | Elmunzer, Higgins, and colleagues performed a
     `meta-analysis <https://pubmed.ncbi.nlm.nih.gov/18375470/>`__ of
     these small trials, which suggested that this was a significant
     effect, and that indomethacin could result in a 64% reduction in
     post-ERCP pancreatitis.
   | The investigators took this as a possible over-estimate of the
     effect (due to publication bias), and designed a multicenter RCT of
     a planned 948 patients to see a reduction of 50% from a placebo
     rate of 10% to an indomethacin rate of 5%. Two interim analyses
     were performed, after 400 and 600 patients were enrolled, using an
     alpha spending function. The Data and Safety Monitoring Board
     stopped the study after 602 participants were enrolled because of
     the significantly positive effect of indomethacin, which reduced
     post-ERCP pancreatitis from 16% in the placebo group to 9% in the
     indomethacin group.
   | You can find the manuscript at `Indomethacin to Prevent Post-ERCP
     Pancreatitis <https://www.nejm.org/doi/full/10.1056/NEJMoa1111103>`__.

   .. rubric:: Source
      :name: source

   This data set is sourced from the authors of the 2012 manuscript in
   the New England Journal of Medicine, entitled, A Randomized Trial of
   Rectal Indomethacin to Prevent Post-ERCP Pancreatitis, pages
   1414-1422 volume 366, in the April 12, 2012 edition, authored by the
   Elmunzer, BJ, Higgins PDR, et al. You can find the manuscript at
   `Indomethacin to Prevent Post-ERCP
   Pancreatitis <https://www.nejm.org/doi/full/10.1056/NEJMoa1111103>`__.
