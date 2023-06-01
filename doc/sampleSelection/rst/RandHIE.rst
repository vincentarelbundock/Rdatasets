.. container::

   ======= ===============
   RandHIE R Documentation
   ======= ===============

   .. rubric:: RAND Health Insurance Experiment
      :name: RandHIE

   .. rubric:: Description
      :name: description

   'The RAND Health Insurance Experiment (RAND HIE) was a comprehensive
   study of health care cost, utilization and outcome in the United
   States. It is the only randomized study of health insurance, and the
   only study which can give definitive evidence as to the causal
   effects of different health insurance plans. [...] Although the
   fieldwork of the study was conducted between 1974 and 1982, the
   results are still highly relevant, since RAND HIE is the only study
   which can make causal statements.' (Wikipedia, RAND Health Insurance
   Experiment,
   https://en.wikipedia.org/w/index.php?title=RAND_Health_Insurance_Experiment&oldid=110166949,
   accessed April 8, 2007).

   .. rubric:: Usage
      :name: usage

   ::

      data(RandHIE)

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   plan
      HIE plan number.

   site
      Participant's place of residence when the participant was
      initially enrolled.

   coins
      Coinsurance rate.

   tookphys
      Took baseline physical.

   year
      Study year.

   zper
      Person identifier.

   black
      1 if race of household head is black.

   income
      Family income.

   xage
      Age in years.

   female
      1 if person is female.

   educdec
      Education of household head in years.

   time
      Time eligible during the year.

   outpdol
      Outpatient expenses: all covered outpatient medical services
      excluding dental care, outpatient psychotherapy, outpatient drugs
      or supplies.

   drugdol
      Drug expenses: all covered outpatient and dental drugs.

   suppdol
      Supply expenses: all covered outpatient supplies including dental.

   mentdol
      Psychotherapy expenses: all covered outpatient psychotherapy
      services including injections excluding charges for visits in
      excess of 52 per year, prescription drugs, and inpatient care.

   inpdol
      Inpatient expenses: all covered inpatient expenses in a hospital,
      mental hospital, or nursing home, excluding outpatient care and
      renal dialysis.

   meddol
      Medical expenses: all covered inpatient and outpatient services,
      including drugs, supplies, and inpatient costs of newborns
      excluding dental care and outpatient psychotherapy.

   totadm
      Hospital admissions: annual number of covered hospitalizations.

   inpmis
      Incomplete Hospital Records: missing inpatient records.

   mentvis
      Psychotherapy visits: indicates the annual number of outpatient
      visits for psychotherapy. It includes billed visits only. The
      limit was 52 covered visits per person per year. The count
      includes an initial visit to a psychiatrist or psychologist.

   mdvis
      Face-to-Face visits to physicians: annual covered outpatient
      visits with physician providers (excludes dental, psychotherapy,
      and radiology/anesthesiology/pathology-only visits).

   notmdvis
      Face-to-Face visits to nonphysicians: annual covered outpatient
      visits with nonphysician providers such as speech and physical
      therapists, chiropractors, podiatrists, acupuncturists, Christian
      Science etc. (excludes dental, healers, psychotherapy, and
      radiology/anesthesiology/pathology-only visits).

   num
      Family size.

   mhi
      Mental health index.

   disea
      Number of chronic diseases.

   physlm
      Physical limitations.

   ghindx
      General health index.

   mdeoff
      Maximum expenditure offer.

   pioff
      Participation incentive payment.

   child
      1 if age is less than 18 years.

   fchild
      ``female * child``.

   lfam
      log of ``num`` (family size).

   lpi
      log of ``pioff`` (participation incentive payment).

   idp
      1 if individual deductible plan.

   logc
      ``log(coins+1)``.

   fmde
      0 if ``idp=1``, ``ln(max(1,mdeoff/(0.01*coins)))`` otherwise.

   hlthg
      1 if self-rated health is good – baseline is excellent self-rated
      health.

   hlthf
      1 if self-rated health is fair – baseline is excellent self-rated
      health.

   hlthp
      1 if self-rated health is poor – baseline is excellent self-rated
      health.

   xghindx
      ``ghindx`` (general healt index) with imputations of missing
      values.

   linc
      log of ``income`` (family income).

   lnum
      log of ``num`` (family size).

   lnmeddol
      log of ``meddol`` (medical expenses).

   binexp
      1 if ``meddol`` > 0.

   .. rubric:: Source
      :name: source

   Data sets of Cameron and Trivedi (2005),
   http://cameron.econ.ucdavis.edu/mmabook/mmadata.html.

   Additional information of variables from Table 20.4 of Cameron and
   Trivedi (2005) and from Newhouse (1999).

   .. rubric:: References
      :name: references

   Cameron, A. C. and Trivedi, P. K. (2005) *Microeconometrics: Methods
   and Applications*, Cambridge University Press.

   Newhouse, J. P. (1999) *RAND Health Insurance Experiment [in
   Metropolitan and Non-Metropolitan Areas of the United States],
   1974–1982*, ICPSR Inter-university Consortium for Political and
   Social Research, Aggregated Claims Series, Volume 1: Codebook for
   Fee-for-Service Annual Expenditures and Visit Counts, ICPSR 6439.

   Wikipedia, *RAND Health Insurance Experiment*,
   https://en.wikipedia.org/wiki/RAND_Health_Insurance_Experiment.

   .. rubric:: Examples
      :name: examples

   ::

      ## Cameron and Trivedi (2005): Section 16.6, page 553ff
      data( RandHIE )
      subsample <- RandHIE$year == 2 & !is.na( RandHIE$educdec )
      selectEq <- binexp ~ logc + idp + lpi + fmde + physlm + disea +
         hlthg + hlthf + hlthp + linc + lfam + educdec + xage + female +
         child + fchild + black
      outcomeEq <- lnmeddol ~ logc + idp + lpi + fmde + physlm + disea +
         hlthg + hlthf + hlthp + linc + lfam + educdec + xage + female +
         child + fchild + black
      # ML estimation
      cameron <- selection( selectEq, outcomeEq, data = RandHIE[ subsample, ] )
      summary( cameron )
