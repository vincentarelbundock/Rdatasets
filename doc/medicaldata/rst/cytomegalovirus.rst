.. container::

   =============== ===============
   cytomegalovirus R Documentation
   =============== ===============

   .. rubric:: Retrospective Cohort Study of the Effects of Donor KIR
      genotype on the reactivation of cytomegalovirus (CMV) after
      myeloablative allogeneic hematopoietic stem cell transplant.
      :name: retrospective-cohort-study-of-the-effects-of-donor-kir-genotype-on-the-reactivation-of-cytomegalovirus-cmv-after-myeloablative-allogeneic-hematopoietic-stem-cell-transplant.

   .. rubric:: Description
      :name: description

   | This data set contains 64 consecutive patients who underwent T-cell
     replete, matched sibling donor reduced-intensity conditioning
     allogeneic hematopoietic stem cell transplant. The primary risk
     factor of interest was the number of activating killer
     immunoglobulin-like receptors (aKIRs: 1-4 vs. 5-6). (more details
     after variable information).

   .. rubric:: Usage
      :name: usage

   ::

      cytomegalovirus

   .. rubric:: Format
      :name: format

   A data frame with 64 observations and 26 variables

   ``ID``
      Patient ID, numeric, range: 1-64

   ``age``
      Recipient age at transplant, numeric, range: 29-67

   ``sex``
      Recipient sex, numeric, range: 0 (male) - 1(female)

   ``race``
      Recipient race, numeric, range: 0 (white) - 1 (african-american)

   ``diagnosis``
      type: character, levels: 13

   ``diagnosis.type``
      Category of cancer diagnosis, numeric, range: 0 (myeloid) - 1
      (lymphoid)

   ``time.to.transplant``
      Time from cancer diagnosis to transplant (months), numeric, range:
      1.84-173.8

   ``prior.radiation``
      Prior radiation therapy, numeric, range: 0 (no) - 1 (yes)

   ``prior.chemo``
      Number of prior chemotherapy regimens, numeric, range: 0-8

   ``prior.transplant``
      Prior stem cell transplant, numeric, range: 0 (no) - 1 (yes)

   ``recipient.cmv``
      Recipient cytomegalovirus seropositive status, numeric, range: 0
      (negative) - 1 (positive)

   ``donor.cmv``
      Donor cytomegalovirus seropositive status, numeric, range: 0
      (negative) - 1 (positive)

   ``donor.sex``
      Donor sex, numeric, range: 0 (female) - 1 (male)

   ``TNC.dose``
      Total nucleated cell dose (x 10^8/kg), numeric, range: 2.06- 21.0

   ``CD34.dose``
      Total CD34+ (stem) cell dose (x 10^8/kg), numeric, range: 2.04-
      12.5

   ``CD3.dose``
      Total CD3+ (T) cell dose (x 10^8/kg), numeric, range: 1.08- 8.2

   ``CD8.dose``
      Total CD8+ cell dose (x 10^8/kg), numeric, range: 0.16- 3.2

   ``TBI.dose``
      Total body irradiation dosage (centiGrays), numeric,
      range:200.00-400.0

   ``C1/C2``
      HLA-Cw group, numeric, range: 0 (heterozygous) - 1 (homozygous)

   ``aKIRs``
      Number of donor activating killer immunoglobulin-like receptors
      (hypothesized Predictor), numeric, range: 1.00- 6.0

   ``cmv``
      cytomegalovirus reactivation posttransplant (hypothesized
      Outcome), numeric, range: 0 (No) - 1 (Yes)

   ``time.to.cmv``
      Time to cytomegalovirus reactivation (months), numeric, range:
      0.43- 84.5

   ``agvhd``
      Acute level 2-4 graft versus host disease, numeric, range: 0 (no)
      - 1 (yes)

   ``time.to.agvhd``
      Time to acute level 2-4 graft versus host disease (months),
      numeric, range: 0.66- 85.2

   ``cgvhd``
      Chronic graft versus host disease, numeric, range: 0 (no) - 1
      (yes)

   ``time.to.cgvhd``
      Time to chronic graft versus host disease (months), numeric,
      range: 0.82- 65.1

   .. rubric:: Details
      :name: details

   | A number of demographic, baseline and transplant characteristics
     were also collected. The primary outcome is presence of and time to
     cytomegalovirus reactivation. The dataset is cleaned and relatively
     complete. There are no outliers or data problems.

   .. rubric:: Background
      :name: background

   | Hematopoietic stem cell transplantation (HSCT) is the
     transplantation of multipotent hematopoietic stem cells, from bone
     marrow, peripheral blood, or umbilical cord blood. It is a medical
     procedure most often performed for patients with certain cancers of
     the blood or bone marrow, such as multiple myeloma or leukemia.
     Allogeneic HSCT involves two people: the (healthy) donor and the
     (patient) recipient. Allogeneic HSC donors must have a tissue (HLA)
     type that matches the recipient.
   | In myeloablative allogeneic HSCT, chemotherapy or irradiation is
     given immediately prior to a transplant (the conditioning regimen)
     with the purpose of eradicating the patient's disease prior to the
     infusion of HSC and to suppress immune reactions. The bone marrow
     can be ablated (destroyed) with dose- levels that cause minimal
     injury to other tissues. For many patients who are at high risk for
     transplant-related mortality with myeloablative allogeneic HSCT,
     reduced- intensity conditioning allogeneic hematopoietic stem cell
     transplant has proven effective. Although the reduced-intensity
     conditioning allogeneic HSCT may avoid many of the organ toxicities
     associated with myeloablative conditioning, the risk for developing
     graft-versus-host disease and infection including cytomegalovirus
     remains significant.
   | Cytomegalovirus (CMV) is a common virus that can infect almost
     anyone. Once infected, your body retains the virus for life. Most
     people don't know they have CMV because it rarely causes problems
     in healthy people. But if pregnant or having a weakened immune
     system, CMV is cause for concern. For people with compromised
     immunity, such as after allogeneic HSCT, CMV infection can be
     fatal. Natural killer (NK) and T cells provide protection against
     CMV reactivation. The reactivity of NK cells and some T-cell
     subsets are regulated by the interaction of killer
     immunoglobulin-like receptors (KIRs) with target cell HLA class 1
     molecules. The donor activating KIR genotype has been implicated as
     a contributing factor for CMV reactivation after myeloablative
     allogeneic HSCT.

   .. rubric:: Study Objective
      :name: study-objective

   | This study investigates whether donor KIR genotype influences
     reactivation of CMV after T-cell replete, matched sibling donor
     reduced-intensity conditioning allogeneic HSCT.

   .. rubric:: Subjects and Variables
      :name: subjects-and-variables

   | The study included 64 consecutive patients who underwent T-cell
     replete, matched sibling donor reduced-intensity conditioning
     allogeneic hematopoietic stem cell transplant between January 16,
     2000 and April 24, 2007 at the Cleveland Clinic. Human leucocyte
     antigen (HLA) typing on donors and recipients was performed to
     allow assessment of killer immunoglobulin-like receptor ligands
     (KIRs). To allow for comparison with previous studies, donors were
     categorized as having 1-4 or 5-6 activating killer
     immunoglobulin-like receptor genes (aKIRs).
   | CMV reactivation was defined as any detection of cytomegalovirus
     DNA in the blood; the lower detection limit for this assay was 600
     copies/mL.
   | The initial population consisted of 865 men who had undergone
     radical prostatectomy and received transfusion during or within 30
     days of the surgical procedure at Cleveland Clinic and had
     available PSA follow-up data. Of these patients, 110 were excluded
     from the analysis because they received a combination of allogeneic
     and autologous blood products. Of the remaining 755 patients, 405
     (54%) received solely allogeneic and 350 patients (46%) received
     solely autologous RBC units. Of the 405 patients who received
     allogeneic RBC transfusion, 89 were excluded because their
     transfused RBC age distribution included more than one of the
     terciles. Thus, this dataset consists of the 316 patients who
     received solely allogeneic blood products and could be classified
     into an RBC age exposure group.

   .. rubric:: Source
      :name: source

   Sobecks et al. 'Cytomegalovirus Reactivation After Matched Sibling
   Donor Reduced-Intensity Conditioning Allogeneic Hematopoietic Stem
   Cell Transplant Correlates With Donor Killer Immunoglobulin-like
   Receptor Genotype'. Exp Clin Transplant 2011; 1: 7-13.
