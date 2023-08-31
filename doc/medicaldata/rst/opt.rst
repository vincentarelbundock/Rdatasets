.. container::

   === ===============
   opt R Documentation
   === ===============

   .. rubric:: Obstetrics and Periodontal Therapy Dataset
      :name: opt

   .. rubric:: Description
      :name: description

   | The objective of this randomized controlled trial was to determine
     whether treatment of maternal periodontal disease can reduce risk
     of preterm birth and low birth weight (**more details** available
     below the variable definitions).

   .. rubric:: Usage
      :name: usage

   .. code:: R

      opt

   .. rubric:: Format
      :name: format

   A data frame with 823 observations and 171 variables

   ``PID``
      Participant ID, First digit indicates enrollment center (1 = NY, 2
      = MN, 3 = KY, 4 = MS); Next 4 digits are sequential; Sixth digit
      is a check digit; There are no missing data, numeric, range:
      100034-402477

   ``Clinic``
      Enrollment Center, factor, NY = Harlem Hospital, MN = Hennepin
      County Center; KY = University of Kentucky; MS = University of
      Mississippi Medical Center; There are no missing data

   ``Group``
      Randomized treatment assignment, factor, T = Intervention; C =
      Control; There are no missing data

   ``Age``
      Age of participant at baseline (years), numeric, range: 16-44

   ``Black``
      Black participant (self-identified), factor; Yes, No

   ``White``
      White participant (self-identified), factor; Yes, No

   ``Nat.Am``
      Native American participant, incl. Latin Americans with aboriginal
      origin(self-identified), factor; Yes, No

   ``Asian``
      Asian participant (self-identified), factor; Yes, No

   ``Hisp``
      Hispanic participant (self-identified), factor; Yes, No

   ``Education``
      Education level of participant, factor; LT 8 yrs = Less than 8
      years; 8-12 yrs = 8 to 12 years; MT 12 yrs = More than 12 yrs;
      blank = Missing

   ``Public.Asstce``
      Public Assistance: Whether a government agency paid for the
      delivery, factor; Yes, No;

   ``Hypertension``
      Whether participant had chronic hypertension at baseline, factor;
      Yes, No

   ``Diabetes``
      Whether participant had diabetes at baseline (self-reported),
      factor; Yes, No

   ``BL.Diab.Type``
      Baseline Diabetes Type: Type of diabetes, for participants having
      diabetes at baseline (self-reported), factor; Type I; Type II;
      Blank = No diabetes at baseline (variable 13 = No)

   ``BMI``
      NA, numeric, range: 15.000-68.0

   ``Use.Tob``
      Self-reported participant history of tobacco use, factor; Yes, No;
      Blank = Missing

   ``BL.Cig.Day``
      Self-reported number of cigarettes per day for those with tobacco
      use history, numeric, range: 1-30; Blank = Missing (variable 16=
      Yes or blank) or non-smoker (variable 16 = No)

   ``Use.Alc``
      Self-reported participant history of alcohol use, factor; Yes, No;
      Blank = Missing

   ``BL.Drks.Day``
      , Blank = Missing (variable 18 = Yes or blank) or non-drinker
      (variable 18 = No)

   ``Drug.Add``
      Self-reported participant history of drug addiction, factor; Yes,
      No; Blank = Missing

   ``Prev.preg``
      Any previous pregnancy, factor; Yes, No; No missing data

   ``N.prev.preg``
      Number of previous pregnancies for those with any previous
      pregnancy, numeric, range: 1-11; Blank = Missing (variable 21 =
      Yes) or no previous pregnancies (variable 21 = No)

   ``Live.PTB``
      Previous live preterm birth for those with any previous pregnancy,
      factor; Yes; No = No previous live preterm birth (variable 21 =
      Yes) or no previous pregnancies (variable 21 = No)

   ``Any.stillbirth``
      Previous stillbirth, factor; Yes; No = No previous stillbirth
      (variable 21 = Yes) or no previous pregnancies (variable 21 = No)

   ``Spont.ab``
      Previous spontaneous abortion, factor; Yes; No; Blank = Missing
      (variable 21 = Yes) or no previous pregnancies (variable 21 = No)

   ``Induced.ab``
      Previous induced abortion, factor; Yes; No; Blank = Missing
      (variable 21 = Yes) or no previous pregnancies (variable 21 = No)

   ``Any.live.ptb.sb.sp.ab.in.ab``
      Any previous live pre-term birth, stillbirth, spontaneous
      abortion, or induced abortion, factor; Yes; No = No live pre-term
      birth/stillbirth/abortion (variable 21 = Yes) or no previous
      pregnancies (variable 21 = No)

   ``N.living.kids``
      Number of living children the subject had at baseline, numeric,
      range: 0-9; Blank = Missing (variable 21 = Yes) or no previous
      pregnancies (variable 21 = No)

   ``Tx.comp.``
      Whether treatment plans were completed by participants in
      treatment group, factor, Yes = Completed; No = Not completed; Und
      = Some therapy (unknown whether completed); Blank = Withdrew from
      treatment (variable 3 = T) or no periodontal therapy (variable 3 =
      C)

   ``Local.anes``
      Whether any local anesthetic used during periodontal therapy for
      participants in treatment group, factor, Yes; No = No local
      anesthetic used or withdrew from treatment (variable 3 = T); Blank
      = No periodontal therapy (variable 3 = C)

   ``Topical.Anest``
      Whether any topical anesthetic used during periodontal therapy for
      participants in treatment group, factor, Yes; No = No topical
      anesthetic used or withdrew from treatment (variable 3 = T); Blank
      = No periodontal therapy (variable 3 = C)

   ``Tx.time``
      Total treatment time for participants in treatment group (hours),
      numeric, range: 0.117-5.8; Blank = Withdrew from treatment
      (variable 3 = T and variable 29 = blank) or no periodontal therapy
      (variable 3 = C)

   ``EDC.necessary.``
      Whether patient required1 essential dental care (EDC), factor,
      Yes; No; Blank = Missing

   ``Completed.EDC``
      Did patient complete EDC before 20 weeks gestational age?, factor,
      Yes; No; Blank = Missing

   ``N.extractions``
      Number of teeth extracted during EDC, numeric, range: 0-20; Blank
      = Missing

   ``N.perm.restorations``
      Number of permanent restorations carried out as a part of EDC,
      numeric, range: 0-18; Blank = Missing

   ``N.qualifying.teeth``
      Number of teeth meeting OPT (Obstetrics and Periodontal Therapy
      Study) criteria for having periodontal disease at baseline,
      numeric, range: 3.000-28.0

   ``BL.GE``
      Whole-mouth average gingival index at baseline, numeric, range:
      0.429-3.0, Silness-Lowe Gingival Index: Higher value indicates
      more severe inflammation; 0 = Normal gingiva; There are no missing
      data

   ``BL..BOP``
      Percentage of sites bleeding on probing at baseline, numeric,
      range:33.951-100.0

   ``BL.PD.avg``
      Whole-mouth average pocket depth at baseline (mm), numeric, range:
      1.851-7.0

   ``BL..PD.4``
      Percentage of sites with pocket depth greater than or equal to 4mm
      at baseline, numeric, range: 3.571-99.2

   ``BL..PD.5``
      Percentage of sites with pocket depth greater than or equal to 5mm
      at baseline, numeric, range: 0-91.7

   ``BL.CAL.avg``
      Whole-mouth average clinical attachment level at baseline (mm),
      numeric, range: 0.185-5.1

   ``BL..CAL.2``
      Percentage of sites with clinical attachment level greater than or
      equal to 2 mm at baseline, numeric, range: 2.381-100.0

   ``BL..CAL.3``
      Percentage of site with clinical attachment level greater than or
      equal to 3 mm at baseline, numeric, range: 0-94.9

   ``BL.Calc.I``
      Whole-mouth average calculus index at baseline, Simplified Oral
      Hygiene Index (OHI-S): Higher value indicates more calculus; 0 =
      No calculus present; numeric, range: 0-3.0

   ``BL.Pl.I``
      Whole-mouth average plaque index at baseline, Silness-Lowe
      Gingival Index:Higher value indicates more severe inflammation, 0=
      normal gingiva, numeric, range: 0.056-3.0

   ``V3.GE``
      Whole-mouth average gingival index at Visit 3, numeric, range:
      0.030-3.0

   ``V3..BOP``
      Percentage of sites bleeding on probing at Visit 3, numeric,
      range: 0.725-100.0, Blank = Missing

   ``V3.PD.avg``
      Whole-mouth average pocket depth at Visit 3 (mm), numeric, range:
      1.601-5.5, Blank = Missing

   ``V3..PD.4``
      Percentage of sites with pocket depth greater than or equal to 4mm
      at Visit 3, numeric, range: 0-83.9, Blank = Missing

   ``V3..PD.5``
      Percentage of sites with pocket depth greater than or equal to 5mm
      at Visit 3, numeric, range: 0-77.4, Blank = Missing

   ``V3.CAL.avg``
      Whole-mouth average clinical attachment level at Visit 3 (mm),
      numeric, range: 0.036-3.9, Blank = Missing

   ``V3..CAL.2``
      Percentage of sites with clinical attachment level greater than or
      equal to 2 mm at visit 3, numeric, range: 0-97.8, Blank = Missing

   ``V3..CAL.3``
      Percentage of sites with clinical attachment level greater than or
      equal to 3 mm at visit 3, numeric, range: 0-85.7, Blank = Missing

   ``V3.Calc.I``
      Whole-mouth average calculus index at visit 3, numeric, range:
      0-2.6, Simplified Oral Hygiene Index (OHI-S): Higher value
      indicates more calculus; 0 = No calculus present; Blank = Missing

   ``V3.Pl.I``
      Whole-mouth average plaque index at visit 3, numeric, range:
      0-2.6, Silness-Lowe Plaque Index: Higher value indicates more
      abundant plaque; 0 = No plaque in gingival area; Blank = Missing

   ``V5.GE``
      Whole-mouth average gingival index at visit 5, numeric, range:
      0.190-2.7, Silness-Lowe Gingival Index: Higher value indicates
      more severe inflammation; 0 = Normal gingiva; Blank = Missing

   ``V5..BOP``
      Percentage of sites bleeding on probing at visit 5, numeric,
      range: 3.571-100.0, Blank = Missing

   ``V5.PD.avg``
      Whole-mouth average pocket depth at visit 5, numeric, range:
      1.536-5.4, Blank = Missing

   ``V5..PD.4``
      Percentage of sites with pocket depth greater than or equal to 4mm
      at Visit 5, numeric, range: 0-83, Blank = Missing

   ``V5..PD.5``
      Percentage of sites with pocket depth greater than or equal to 5mm
      at Visit 3, numeric, range: 0-75.6, Blank = Missing

   ``V5.CAL.avg``
      Whole-mouth average clinical attachment level at visit 5 (mm),
      numeric, range: 0.018-4.3, Blank = Missing

   ``V5..CAL.2``
      Percentage of sites with clinical attachment level greater than or
      equal to 2 mm at visit 5, numeric, range: 0.000-99.2, Blank =
      Missing

   ``V5..CAL.3``
      Percentage of sites with clinical attachment level greater than or
      equal to 3 mm at visit 5, numeric, range: 0.000-85.0, Blank =
      Missing

   ``V5.Calc.I``
      Whole-mouth average calculus index at visit 5, numeric, range:
      0.0-2.6, Simplified Oral Hygiene Index (OHI-S): Higher value
      indicates more calculus; 0 = No calculus present; Blank = Missing

   ``V5.Pl.I``
      Whole-mouth average plaque index at visit 5, numeric, range:
      0.0-2.5, Silness-Lowe Plaque Index: Higher value indicates more
      abundant plaque; 0 = No plaque in gingival area; Blank = Missing

   ``N.PAL.sites``
      Number of sites for which attachment loss increased from baseline
      by greater than or equal to 3 mm, numeric, range: 0-33, 0 = No
      sites; Blank = Missing

   ``Birth.outcome``
      Birth outcome, factor, Elective abortion; Live birth; Lost to FU =
      Lost to Follow-Up; Non-live birth = Stillbirth or spontaneous
      abortion; There are no missing data

   ``Preg.ended...37.wk``
      Whether the pregnancy ended before gestational age 37 weeks (259
      days), factor, Yes; No; Blank = Lost to Follow-Up

   ``GA.at.outcome``
      Gestational age at end of pregnancy, or at mother's last follow-up
      visit if lost to follow-up, numeric, range: 103-302

   ``Birthweight``
      Infant birth weight at time of birth, abstracted from obstetrical
      records (grams), numeric, range: 101-5160, Blank = Missing

   ``Fetal.congenital.anomaly``
      Fetal/congenital anomaly identified at birth or during pregnancy?,
      factor, Yes; No; There are no missing data

   ``Apgar1``
      Apgar score, a summary of a newborn infant's 'Appearance, Pulse,
      Grimace, Activity, Respiration' at 1 minute Score interpretation:
      less than or equal to 3: Critically low 4-6: Fairly low greater
      than or equal to 7: Normal, numeric, range: 0-10, Blank = Missing

   ``Apgar5``
      Apgar score at 5 minutes, numeric, range: 0-10, Blank = Missing

   ``Any.SAE.``
      Whether participant experienced any serious adverse events (e.g.
      lost pregnancies) factor, Yes; No; There are no missing data

   ``GA...1st.SAE``
      Gestational age of first SAE (serious adverse event), integer,
      range: 96-467, 259 = No SAE (variable 76 must = No); There are no
      missing data

   ``Bact.vag``
      Whether mother had bacterial vaginosis during pregnancy, factor,
      Yes; No; Blank = Missing

   ``Gest.diab``
      Whether mother had gestational diabetes during pregnancy, factor,
      Yes; No; Blank = Missing

   ``Oligo``
      Whether mother had oligohydramnios during pregnancy, factor, Yes;
      No; Blank = Missing

   ``Polyhyd``
      Whether mother had polyhydramnios during pregnancy, factor, Yes;
      No; Blank = Missing

   ``Gonorrhea``
      Whether mother had gonorrhea during pregnancy, factor, Yes; No;
      Blank = Missing

   ``Chlamydia``
      Whether mother had chlamydia during pregnancy, factor, Yes; No;
      Blank = Missing

   ``Strep.B``
      Whether mother had strep B colonization during pregnancy, factor,
      Yes; No; Blank = Missing

   ``Traumatic.Inj``
      Whether mother had a traumatic injury during pregnancy, factor,
      Yes; No; Blank = Missing

   ``UTI``
      Whether mother had a urinary tract infection during pregnancy,
      factor, Yes; No; Blank = Missing

   ``Pre.eclamp``
      Whether mother had pre-eclampsia, a pregnancy condition
      characterized by high blood pressure and associated with fetal
      growth restriction during pregnancy, factor, Yes; No; Blank =
      Missing

   ``Mom.HIV.status``
      HIV status of mother during pregnancy, factor, Yes = HIV-positive;
      No = HIV-negative or unknown (question answered but HIV status at
      delivery not recorded); Blank = Missing (question not answered)

   ``BL.Anti.inf``
      Did participant report use of antiinflammatory medication at or
      less than 6 months before baseline?, integer, 0 = No; 1 = Yes;
      There are no missing data

   ``BL.Cortico``
      Did participant report use of corticosteroids at or less than 6
      months before baseline?, integer, 0 = No; 1 = Yes; There are no
      missing data

   ``BL.Antibio``
      Did participant report use of antibiotics at or less than 6 months
      before baseline?, integer, 0 = No; 1 = Yes; There are no missing
      data

   ``BL.Bac.vag``
      Did participant report use of bacterial vaginitis treatments at or
      less than 6 months before baseline?, integer, 0 = No; 1 = Yes;
      There are no missing data

   ``V3.Anti.inf``
      Did participant report use of antiinflammatory medication between
      baseline and visit 3?,integer, 0 = No; 1 = Yes; There are no
      missing data

   ``V3.Cortico``
      Did participant report use of corticosteroids between baseline and
      visit 3?, integer, 0 = No; 1 = Yes; There are no missing data

   ``V3.Antibio``
      Did participant report use of antibiotics between baseline and
      visit 3?, integer, 0 = No; 1 = Yes; There are no missing data

   ``V3.Bac.vag``
      Did participant report use of bacterial vaginitis treatments
      between baseline and visit 3?, integer, 0 = No; 1 = Yes; There are
      no missing data

   ``V5.Anti.inf``
      Did participant report use of antiinflammatory medication between
      visit 3 and visit 5?, integer, 0 = No; 1 = Yes; There are no
      missing data

   ``V5.Cortico``
      Did participant report use of corticosteroids between visit 3 and
      visit 5?, integer, 0 = No; 1 = Yes; There are no missing data

   ``V5.Antibio``
      Did participant report use of antibiotics between visit 3 and
      visit 5?, integer, 0 = No; 1 = Yes; There are no missing data

   ``V5.Bac.vag``
      Did participant report use of bacterial vaginitis treatments
      between visit 3 and visit 5?, integer, 0 = No; 1 = Yes; There are
      no missing data

   ``X..Vis.Att``
      Visit attendance: Number of study visits attended AFTER baseline,
      integer, Range: 0-5

   ``X..Vis.Elig``
      Number of visits for which participant was eligible (could become
      ineligible after miscarriage or early delivery), integer, Range:
      0-5

   ``X1st.Miss.Vis``
      First missed visit. No one missed the baseline visit, so this
      variable takes values 2, 3, 4, 5, 6, and 100 (no eligible visits
      missed), integer, Range: 2-6, 100

   ``OAA1``
      Serum IgG (immunoglobulin) antibodies to A. actinomycetemcomitans
      at baseline, factor (actually numeric or missing), dot(.) =
      Missing

   ``OCR1``
      Serum IgG (immunoglobulin) antibodies to C. rectus at baseline,
      factor (actually numeric or missing), dot(.) = Missing

   ``OFN1``
      Serum IgG (immunoglobulin) antibodies to F. nucleatum at baseline,
      factor (actually numeric or missing), dot(.) = Missing

   ``OPG1``
      Serum IgG (immunoglobulin) antibodies to P. gingivalis at
      baseline, factor (actually numeric or missing), dot(.) = Missing

   ``OPI1``
      Serum IgG (immunoglobulin) antibodies to P. intermedia at
      baseline, factor (actually numeric or missing), dot(.) = Missing

   ``OTD1``
      Serum IgG (immunoglobulin) antibodies to T. denticola at baseline,
      factor (actually numeric or missing), dot(.) = Missing

   ``OTF1``
      Serum IgG (immunoglobulin) antibodies to T. forsythus at baseline,
      factor (actually numeric or missing), dot(.) = Missing

   ``OCRP1``
      Serum measure for C-reactive protein (CRP) at baseline, factor
      (actually numeric or missing), dot(.) = Missing

   ``O1B1``
      Serum measure for Interleukin(IL)-1b at baseline, factor (actually
      numeric or missing), dot(.) = Missing

   ``O61``
      Serum measure for Interleukin(IL)-6 at baseline, factor (actually
      numeric or missing), dot(.) = Missing

   ``O81``
      Serum measure forInterleukin(IL)-8 at baseline, factor (actually
      numeric or missing), dot(.) = Missing

   ``OPGE21``
      Serum measure for Prostaglandin E2 at baseline, factor (actually
      numeric or missing), dot(.) = Missing

   ``OTNF1``
      Serum measure for tumor necrosis factor (TNF)-alpha at baseline,
      factor (actually numeric or missing), dot(.) = Missing

   ``OMMP91``
      Serum measure for gelatinase (MMP9) at baseline, factor (actually
      numeric or missing), dot(.) = Missing

   ``ETXU_CAT1``
      Serum endotoxin level at baseline, factor (actually numeric or
      missing), dot(.) = Missing

   ``OFIBRIN1``
      Serum measure for fibrinogen at baseline, factor (actually numeric
      or missing), dot(.) = Missing

   ``OAA5``
      Serum IgG (immunoglobulin) antibodies to A. actinomycetemcomitans
      at visit 5, factor (actually numeric or missing), dot(.) = Missing

   ``OCR5``
      Serum IgG (immunoglobulin) antibodies to C. rectus at visit 5,
      factor (actually numeric or missing), dot(.) = Missing

   ``OFN5``
      Serum IgG (immunoglobulin) antibodies to F. nucleatum at visit 5,
      factor (actually numeric or missing), dot(.) = Missing

   ``OPG5``
      Serum IgG (immunoglobulin) antibodies to P. gingivalis at visit 5,
      factor (actually numeric or missing), dot(.) = Missing

   ``OPI5``
      Serum IgG (immunoglobulin) antibodies to P. intermedia at visit 5,
      factor (actually numeric or missing), dot(.) = Missing

   ``OTD5``
      Serum IgG (immunoglobulin) antibodies to T. denticola at visit 5,
      factor (actually numeric or missing), dot(.) = Missing

   ``OTF5``
      Serum IgG (immunoglobulin) antibodies to T. forsythus at visit 5,
      factor (actually numeric or missing), dot(.) = Missing

   ``OCRP5``
      Serum measure for C-reactive protein (CRP) at visit 5, factor
      (actually numeric or missing), dot(.) = Missing

   ``O1B5``
      Serum measure for Interleukin(IL)-1b at visit 5, factor (actually
      numeric or missing), dot(.) = Missing

   ``O65``
      Serum measure forInterleukin(IL)-6 at visit 5, factor (actually
      numeric or missing), dot(.) = Missing

   ``O85``
      Serum measure forInterleukin(IL)-8 at visit 5, factor (actually
      numeric or missing), dot(.) = Missing

   ``OPGE25``
      Serum measure for Prostaglandin E2 at visit 5, factor (actually
      numeric or missing), dot(.) = Missing

   ``OTNF5``
      Serum measure for tumor necrosis factor (TNF)-alpha at visit 5,
      factor (actually numeric or missing), dot(.) = Missing

   ``OMMP95``
      Serum measure for gelatinase (MMP9) at visit 5, factor (actually
      numeric or missing), dot(.) = Missing

   ``ETXU_CAT5``
      Serum endotoxin level at visit 5, factor (actually numeric or
      missing), dot(.) = Missing

   ``OFIBRIN5``
      Serum measure for fibrinogen at visit 5, factor (actually numeric
      or missing), dot(.) = Missing

   ``BL.DNA``
      Total amount of bacterial DNA extracted from plaque as a measure
      of total bacterial concentration at baseline (ng/mL), numeric,
      range: 0-5750.0

   ``BL.Univ``
      Count of all bacteria detected by universal primer at baseline,
      numeric, range: 1,890,000-1,070,000,000, Blank = Missing

   ``BL.AA``
      Count of A. actinomycetemcomitans bacteria at baseline, numeric,
      range: 0-7,970,000, Blank = Missing

   ``BL.PG``
      Count of P. gingivalis bacteria at baseline, numeric, range:
      0-167,000,000, Blank = Missing

   ``BL.TD``
      Count of T. denticola bacteria at baseline, numeric, range:
      0-50,500,000, Blank = Missing

   ``BL.TF``
      Count of T. forsythus bacteria at baseline, numeric, range:
      0-40,200,000, Blank = Missing

   ``BL.PI``
      Count of P. intermedia bacteria at baseline, numeric, range:
      0-87,500,000, Blank = Missing

   ``BL.CR``
      Count of C. rectus bacteria at baseline, numeric, range:
      0-32,600,000, Blank = Missing

   ``BL.FN``
      Count of F. nucleatum bacteria at baseline, numeric, range:
      67,300- 152,000,000, Blank = Missing

   ``BL.S7``
      Sum of the 7 species-specific bacterial counts (variables 138-144)
      at baseline, rounded to 3 significant figures, numeric, range:
      87,000-391,000,000, Blank = Missing

   ``V5.DNA``
      Total amount of bacterial DNA extracted from plaque as a measure
      of total bacterial concentration at visit 5 (ng/mL), numeric,
      range: 0-5750.0

   ``V5.Univ``
      Count of all bacteria detected by universal primer at visit 5,
      numeric, range: 1,890,000-1,070,000,000, Blank = Missing

   ``V5.AA``
      Count of A. actinomycetemcomitans bacteria at visit 5, numeric,
      range: 0-40,200,000, Blank = Missing

   ``V5.PG``
      Count of P. gingivalis bacteria at visit 5, numeric, range:
      0-40,200,000, Blank = Missing

   ``V5.TD``
      Count of T. forsythus bacteria at visit 5, numeric, range:
      0-40,200,000, Blank = Missing

   ``V5.TF``
      Count of T. forsythus bacteria at visit 5, numeric, range:
      0-40,200,000, Blank = Missing

   ``V5.PI``
      Count of P. intermedia bacteria at visit 5, numeric, range:
      0-87,500,000, Blank = Missing

   ``V5.CR``
      Count of C. rectus bacteria at visit 5, numeric, range:
      0-32,600,000, Blank = Missing

   ``V5.FN``
      Count of F. nucleatum bacteria at visit 5, numeric, range: 67,300-
      152,000,000, Blank = Missing

   ``V5.S7``
      Sum of the 7 species-specific bacterial counts (variables 138-144)
      at visit 5, rounded to 3 significant figures, numeric, range:
      87,000-391,000,000, Blank = Missing

   ``BL..AA``
      Percent of A. actinomycetemcomitans out of total DNA (variable
      146) at baseline, numeric, range: 0-8.9, Blank = Missing

   ``BL..PG``
      Percent of P. gingivalis out of total DNA at baseline, numeric,
      range: 0-37.3, Blank = Missing

   ``BL..TD``
      Percent of T. denticola out of total DNA at baseline, numeric,
      range: 0-13.2, Blank = Missing

   ``BL..TF``
      Percent of T. forsythus out of total DNA at baseline, numeric,
      range: 0-17.7, Blank = Missing

   ``BL..PI``
      Percent of P. intermedia out of total DNA at baseline, numeric,
      range: 0-46.3, Blank = Missing

   ``BL..CR``
      Percent of C. rectus out of total DNA at baseline, numeric, range:
      0-10.5, Blank = Missing

   ``BL..FN``
      Percent of F. nucleatum out of total DNA at baseline, numeric,
      range: 0.330-63.2, Blank = Missing

   ``BL..S7``
      Sum of the percents for the 7 species (AA, PG, TD, TF, PI, CR, and
      FN) at baseline, numeric, range: 0.420-86.3, Blank = Missing

   ``V5..AA``
      Percent of A. actinomycetemcomitans out of total DNA at visit 5,
      numeric, range: 0-16.1, Blank = Missing

   ``V5..PG``
      Percent of P. gingivalis out of total DNA at visit 5, numeric,
      range: 0-59.7, Blank = Missing

   ``V5..TD``
      Percent of T. denticola out of total DNA at visit 5, numeric,
      range: 0-20.5, Blank = Missing

   ``V5..TF``
      Percent of T. forsythus out of total DNA at visit 5, numeric,
      range: 0-19.3, Blank = Missing

   ``V5..PI``
      Percent of P. intermedia out of total DNA at visit 5, numeric,
      range: 0-40.7, Blank = Missing

   ``V5..CR``
      Percent of C. rectus out of total DNA at visit 5, numeric, range:
      0-14.6, Blank = Missing

   ``V5..FN``
      Percent of F. nucleatum out of total DNA at visit 5, numeric,
      range: 0-49.9, Blank = Missing

   ``V5..S7``
      Sum of the percents for the 7 species (AA, PG, TD, TF, PI, CR, and
      FN) at visit 5, numeric, range: 2.560-80.8, Blank = Missing

   .. rubric:: Details
      :name: details

   .. rubric:: Background:
      :name: background

   | Randomized Clinical Trial on the Effect of Treatment of Maternal
     Periodontal Disease Can Reduce Preterm Birth Risk.
   | Maternal periodontal disease has been linked in observational
     studies to preterm birth (< 37 weeks) and low birth weight (< 2500
     g) outcomes. The Obstetrics and Periodontal Therapy study was a
     multi-center randomized trial evaluating the effect of nonsurgical
     periodontal treatment intervention on preterm birth, comparing
     outcomes of women treated before 21 weeks gestation (treatment) to
     those treated after delivery (control).
   | Preterm birth, defined as delivery before 37 weeks of gestation, is
     a growing problem. In some cases, preterm birth can lead to infant
     death; in others, its consequences may include neurodevelopmental
     disabilities, cognitive impairment, and/or respiratory disorders in
     the child. Many risk factors for preterm birth have already been
     identified, including maternal age, drug use, and diabetes.
     However, such factors are exhibited in only about half of preterm
     birth mothers, highlighting a need to expand our understanding of
     what contributes to preterm birth risk.
   | Several observational studies have suggested an association between
     maternal periodontal disease and preterm birth. Periodontal disease
     is an inflammatory condition characterized by the destruction of
     tissue and/or bone around the teeth. A major component of
     periodontal disease is oral colonization by gram-negative bacteria;
     systemic release of cytokines and/or lipopolysaccharides from these
     bacteria may impact fetal condition.
   | Inoculation of the periodontal pathogen P. gingivalis into pregnant
     animals does have a dose-dependent effect on birth weight and
     preterm birth signaling, but no such causal link has been shown in
     humans, only some associations. Though not definitive, the
     possibility of a significant relationship raises the question of
     whether treatment of maternal periodontal disease can decrease
     preterm birth risk.

   .. rubric:: Participants:
      :name: participants

   | 823 participants enrolled at 4 centers underwent stratified
     randomization, resulting in 413 women assigned to the treatment
     group and 410 to control. All participants were 13-16 weeks
     pregnant at time of randomization (baseline/visit 1) and went on to
     attend monthly follow-up visits defined as visits 2, 3, 4, and 5
     corresponding to gestational age ranges of 17-20, 21-24, 25-28, and
     29-32 weeks.

   .. rubric:: Treatment:
      :name: treatment

   | The treatment group received periodontal treatment, oral hygiene
     instruction, and tooth polishing at their follow-ups, while those
     assigned to control underwent only brief oral exams. Data
     collection occurred at visits 1 (baseline), 3, and 5. The primary
     outcome of interest is gestational age at end of pregnancy.
     Additional outcomes include birthweight, clinical measures of
     periodontal disease, and various microbiological and immunological
     outcomes.

   .. rubric:: Analysis:
      :name: analysis

   | Statistical analyses were carried out on an intent-to-treat basis.
     Gestational age can be thought of as 'time until end of pregnancy,'
     for which certain survival analysis methods would be appropriate.
     The study used a log-rank test stratified by center to compare time
     until end of pregnancy for treatment and control groups.
   | A semiparametric proportional hazards model was also used for this
     purpose and incorporated maternal risk factors as predictors. For
     the study's main analyses, gestational age was censored at 37 weeks
     (259 days) because the interest was in extending pregnancies that
     would otherwise end pre-term, not extending pregnancies generally.
   | Though not used in the study itself, logistic regression is another
     method that could be applied: for example, to gestational age,
     dichotomized as 'preterm' or 'not preterm' according to a
     gestational age cutoff, or to birthweight dichotomized as 'low' or
     'high' at the 2500 g or other cutoff (2500 g would be in keeping
     with the World Health Organization's definition for low birth
     weight). Changes in clinical measures of periodontal disease from
     baseline to visits 3 or 5 could be analyzed using mixed effects
     linear models. The dataset also features a number of baseline
     characteristics, which could be compared in treatment and control
     groups via Student t-tests, Wilcoxon rank sum tests, Fisher's exact
     tests or Pearson's chi-square tests, as appropriate.

   .. rubric:: Publishing:
      :name: publishing

   | The nonsurgical periodontal treatment involving scaling and root
     planing induced significant improvements in periodontal health. The
     study did not however find a significant relation between
     periodontal treatment and preterm birth risk. The results of this
     study were published in 2006 by Michalowicz et al., 'Treatment of
     periodontal disease and the risk of preterm birth', in The New
     England Journal of Medicine. The Obstetrics and Periodontal Therapy
     Dataset contains the data used in this study.
   | The obstetrics and periodontal therapy dataset was contributed by
     Dr. Ann Brearley, Assistant Professor, Division of Biostatistics,
     School of Public Health, University of Minnesota and her
     colleagues. Please refer to this resource as: Meredith Hyun, James
     S. Hodges and Ann M. Brearley, 'Obstetrics and Periodontal Therapy
     Dataset', TSHS Resources Portal (2019). Available at
     https://www.causeweb.org/tshs/obstetrics-and-periodontal-therapy/.

   .. rubric:: Source
      :name: source

   Michalowicz et al., 'Treatment of periodontal disease and the risk of
   preterm birth', N Engl J Med 2006; 355:1885-1894. DOI:
   10.1056/NEJMoa062249
