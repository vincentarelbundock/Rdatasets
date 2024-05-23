.. container::

   .. container::

      =========== ===============
      fish_oil_18 R Documentation
      =========== ===============

      .. rubric:: Findings on n-3 Fatty Acid Supplement Health Benefits
         :name: findings-on-n-3-fatty-acid-supplement-health-benefits

      .. rubric:: Description
         :name: description

      The results summarize each of the health outcomes for an
      experiment where 12,933 subjects received a 1g fish oil supplement
      daily and 12,938 received a placebo daily. The experiment's
      duration was 5-years.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         fish_oil_18

      .. rubric:: Format
         :name: format

      The format is a list of 24 matrices. Each matrix is a 2x2 table,
      and below are the named items in the list, which also represent
      the outcomes.

      major_cardio_event
         Major cardiovascular event. (Primary end point.)

      cardio_event_expanded
         Cardiovascular event in expanded composite endpoint.

      myocardioal_infarction
         Total myocardial infarction. (Heart attack.)

      stroke
         Total stroke.

      cardio_death
         Death from cardiovascular causes.

      PCI
         Percutaneous coronary intervention.

      CABG
         Coronary artery bypass graft.

      total_coronary_heart_disease
         Total coronary heart disease.

      ischemic_stroke
         Ischemic stroke.

      hemorrhagic_stroke
         Hemorrhagic stroke.

      chd_death
         Death from coronary heart disease.

      myocardial_infarction_death
         Death from myocardial infraction.

      stroke_death
         Death from stroke.

      invasive_cancer
         Invasive cancer of any type. (Primary end point.)

      breast_cancer
         Breast cancer.

      prostate_cancer
         Prostate cancer.

      colorectal_cancer
         Colorectal cancer.

      cancer_death
         Death from cancer.

      death
         Death from any cause.

      major_cardio_event_after_2y
         Major cardiovascular event, excluding the first 2 years of
         follow-up.

      myocardial_infarction_after_2y
         Total myocardial infarction, excluding the first 2 years of
         follow-up.

      invasive_cancer_after_2y
         Invasive cancer of any type, excluding the first 2 years of
         follow-up.

      cancer_death_after_2y
         Death from cancer, excluding the first 2 years of follow-up.

      death_after_2y
         Death from any cause, excluding the first 2 years of follow-up.

      .. rubric:: Source
         :name: source

      Manson JE, et al. 2018. Marine n-3 Fatty Acids and Prevention of
      Cardiovascular Disease and Cancer. NEJMoa1811403.
      `doi:10.1056/NEJMoa1811403 <https://doi.org/10.1056/NEJMoa1811403>`__.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         names(fish_oil_18)
         (tab <- fish_oil_18[["major_cardio_event"]])
         chisq.test(tab)
         fisher.test(tab)

         (tab <- fish_oil_18[["myocardioal_infarction"]])
         chisq.test(tab)
         fisher.test(tab)
