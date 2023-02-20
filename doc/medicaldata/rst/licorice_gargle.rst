.. container::

   =============== ===============
   licorice_gargle R Documentation
   =============== ===============

   .. rubric:: Randomized, Controlled Trial of Licorice Gargle before
      Intubation for Elective Thoracic Surgery
      :name: randomized-controlled-trial-of-licorice-gargle-before-intubation-for-elective-thoracic-surgery

   .. rubric:: Description
      :name: description

   | This study enrolled 236 adult patients undergoing elective thoracic
     surgery requiring a double-lumen endotracheal tube. Gender,
     physical status, BMI, age, Mallampati score, smoking status,
     preoperative pain, surgery size, intervention and the outcomes
     (cough, sore throat and pain swallowing at various time points) are
     provided. The dataset is cleaned and complete (missing outcomes for
     2 patients). There are no outliers or data problems (**more
     details** available below the variable definitions).

   .. rubric:: Usage
      :name: usage

   ::

      licorice_gargle

   .. rubric:: Format
      :name: format

   A data frame with 235 observations and 19 variables

   ``preOp_gender``
      Gender, numeric, 0 = Male; 1 = Female

   ``preOp_asa``
      American Society of Anesthesiologists physical status, numeric, 1
      = a normal healthy patient; 2 = a patient with mild systemic
      disease; 3 = a patient with severe systemic disease

   ``preOp_calcBMI``
      Body mass index (kg/m^2), numeric, range:16-36

   ``preOp_age``
      Age (years), numeric, range:18-86

   ``preOp_mallampati``
      Mallampati score, with 1 = easy to intubate, 4= difficult
      intubation, numeric, 1 = soft palate, fauces, uvula, pillars
      visible; 2 = soft palate, fauces, uvula visible; 3 = soft palate,
      base of uvula visible; 4 = soft palate not visible at all

   ``preOp_smoking``
      Smoking status, numeric, 1 = Current; 2 = Past; 3 = Never

   ``preOp_pain``
      Preoperative pain, numeric, 0 = No; 1 = Yes

   ``treat``
      Intervention, 0 = Sugar 5g; 1 = Licorice 0.5g

   ``intraOp_surgerySize``
      Surgery size, numeric, 1 = Small (thoracoscopy); 2 = Medium
      (thoracotomy < 3 h); 3 = Large (thoracotomy > 3 h or blood loss >
      1000 mL)

   ``extubation_cough``
      Amount of coughing immediately after extubation, numeric, 0 = No
      cough; 1 = Mild; 2 = Moderate; 3 = Severe

   ``pacu30min_cough``
      Amount of coughing at 30 minutes after arrival in PACU, numeric, 0
      = No cough; 1 = Mild; 2 = Moderate; 3 = Severe

   ``pacu30min_throatPain``
      Sore throat pain score at rest at 30 minutes after arrival in PACU
      (11 point Likert scale, 0=no pain, 10 = worst pain)

   ``pacu30min_swallowPain``
      Sore throat pain score during swallowing at 30 minutes after
      arrival in PACU (11 point Likert scale, 0=no pain, 10 = worst
      pain), numeric, range: 0-10

   ``pacu90min_cough``
      Amount of coughing at 90 minutes after arrival in PACU, numeric, 0
      = No cough; 1 = Mild; 2 = Moderate; 3 = Severe

   ``pacu90min_throatPain``
      Sore throat pain score at rest at 90 minutes after arrival in PACU
      (11 point Likert scale, 0=no pain, 10 = worst pain), numeric,
      range: 0-6)

   ``postOp4hour_cough``
      Amount of coughing at 4 hours after surgery, numeric, 0 = No
      cough; 1 = Mild; 2 = Moderate; 3 = Severe, range: 0-2

   ``postOp4hour_throatPain``
      Sore throat pain score at rest at 4 hours after surgery (11 point
      Likert scale, 0=no pain, 10 = worst pain), numeric, range: 0-6),
      numeric, range: 0- 7

   ``pod1am_cough``
      Amount of coughing on the first postoperative morning, 0 = No
      cough; 1 = Mild; 2 = Moderate; 3 = Severe, numeric, range: 0- 3

   ``pod1am_throatPain``
      Sore throat pain score at rest on the first postoperative morning
      (11 point Likert scale, 0=no pain, 10 = worst pain), numeric,
      range: 0-6), numeric, range: 0- 6

   .. rubric:: Details
      :name: details

   | The Licorice Gargle dataset was contributed by Dr. Amy Nowacki,
     Associate Professor, Cleveland Clinic. Please refer to this
     resource as: Amy S. Nowacki, 'Licorice Gargle Dataset', TSHS
     Resources Portal (2017). Available at
     https://www.causeweb.org/tshs/licorice-gargle/.
   | Postoperative sore throat is a common and annoying complication of
     endotracheal intubation. Intubation with double-lumen tubes, which
     are much larger than conventional single-lumen tubes, are
     especially likely to provoke sore throats, with a reported
     incidence up to 90%. Presumably, postoperative sore throats are a
     consequence of local tissue trauma, due to laryngoscopy and/or
     endotracheal intubation, leading to inflammation of pharyngeal
     mucosa.
   | Nonpharmacological methods for preventing an intubation-related
     sore throat include using smaller-sized endotracheal tubes,
     lubricating the endotracheal tube with water-soluble jelly, and
     careful airway instrumentation as examples. Pharmacological
     measures for attenuating postoperative sore throats include
     inhalation of beclomethasone or fluticasone propionate; gargling
     with azulene sulfonate, aspirin, or ketamine; and gargling or
     spraying benzydamine hydrochloride on the endotracheal cuff for
     example. Each of these approaches and others not listed, however,
     has limitations and variable success rates; thus none has become
     established or is in routine clinical use.
   | Recently, a study reported that gargling with licorice halves the
     risk of sore throat after intubation with conventional endotracheal
     tubes, based on a study of just 40 patients. A number of active
     ingredients have been isolated from licorice, including
     glycyrrhizin, liquilitin, liquiritigenin, and glabridin. The
     glycyrrhizin component reportedly has anti-inflammatory and
     antiallergic properties. Liquilitin and liquiritigenin have
     peripheral and central antitussive properties. Glabridin has
     significant antioxidant and ulcer-healing properties, which might
     help heal pharyngeal and tracheal mucosa after minor injuries that
     often complicate laryngoscopy, intubation, and endotracheal tube
     cuff inflation.
   | This study tested the hypothesis that gargling with licorice
     solution immediately before induction of anesthesia prevents sore
     throat and postextubation coughing in patients intubated with
     double-lumen tubes.

   .. rubric:: Source
      :name: source

   These are data from a study by Ruetzler et al. 'A Randomized,
   Double-Blind Comparison of Licorice Versus Sugar-Water Gargle for
   Prevention of Postoperative Sore Throat and Postextubation Coughing'.
   Anesth Analg 2013; 117: 614 – 21.
