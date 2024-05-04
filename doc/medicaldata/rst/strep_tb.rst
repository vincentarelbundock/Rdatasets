.. container::

   .. container::

      ======== ===============
      strep_tb R Documentation
      ======== ===============

      .. rubric:: RCT of Streptomycin Therapy for Tuberculosis
         :name: rct-of-streptomycin-therapy-for-tuberculosis

      .. rubric:: Description
         :name: description

      | Results of a randomized, placebo-controlled, prospective 2-arm
        trial of streptomycin 2 grams daily (arm A2) vs. placebo (arm
        A1) to treat tuberculosis in 107 young patients, as reported by
        the Streptomycin in Tuberculosis Trials Committee in 1948 in the
        British Medical Journal (**more details** available below the
        variable definitions).

      .. rubric:: Usage
         :name: usage

      ::

         strep_tb

      .. rubric:: Format
         :name: format

      A data frame with 107 observations and 13 variables

      patient_id
         invented id number for each participant; type: character

      arm
         assigned treatment arm, Streptomycin or Control; type: factor

      dose_strep_g
         grams, dose of Streptomycin: numeric, 0, 1, or 2 grams

      dose_PAS_g
         grams, dose of PAS (Para-Amino-Salicylate): numeric, 5, 10, or
         20 grams. Note that no one in this intial study (study A)
         received PAS. This was added for combination therapy in studies
         B and C, as reported in 1952.

      gender
         gender, dichotomous (this was in 1948); type: factor, with
         levels: M = Male, F= Female

      baseline_condition
         Condition of the Patient at Baseline, 3 levels, 1_Good, 2_Fair,
         3_Poor; type: factor

      baseline_temp
         temperature at baseline in degrees fahrenheit or celsius, but
         categorized into 4 levels (afebrile level apparently were cases
         not measured with a thermometer): factor, with levels:
         1_afebrile, 2_<99F/<37.2C, 3_99-99.9F/37.2-37.75C,
         4_100F+/37.7C+

      baseline_esr
         Erythrocyte Sedimentation Rate in mm per hour, categorized into
         4 levels, from 0-51+ mm per hour; type: factor, with levels:
         1_0-10, 2_11-20, 3_21-50, 4_51+

      baseline_cavitation
         dichotomous presence of cavitation on the baseline chest x-ray;
         type: factor: 0_no, 1_yes

      strep_resistance
         streptomycin resistance after 6 months of therapy, measured on
         a 0-100+ scale, categorized into 3 levels - sensitive,
         moderate, and resistant; type: factor: 1_sens_0-8, 2_mod_8-99,
         3_resist_100+

      radiologic_6m
         Likert score rating of radiologic response on chest x-ray at 6
         months; type: factor: 1_Death, 2_Considerable_deterioration,
         3_Moderate_deterioration, 4_No_change, 5_Moderate_improvement,
         6_Considerable_improvement

      rad_num
         Likert score numeric rating of radiologic response on chest
         x-ray at 6 months; type: numeric: 1-6, from Death to
         Considerable Improvement

      improved
         Dichotomous outcome of improvement (equal to rad_num of 5-6);
         type: logical, TRUE or FALSE. 55 of the 107 participants were
         improved.

      .. rubric:: Details
         :name: details

      | The Streptomycin for Tuberculosis trial in 1948 was considered
        the first modern randomized, placebo-controlled clinical trial,
        which could be done in part because there were very limited
        supplies of streptomycin in the UK after World War II.
      | This publication seems a bit primitive today, without standard
        features like a proper Table 1, and some creative use of graphs
        to display baseline characteristics of the study sample
      | More strikingly, there is no ethics committee approval, or
        consent.
      | You can read the pdf of the original journal article at
        `Streptomycin in TB
        Study <https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2091872/pdf/brmedj03701-0007.pdf>`__.
      | This was the first of a series of 3 trials, in which the initial
        effectiveness of Streptomycin was established, but rapid
        resistance developed, and significant side effects occurred at a
        dose of 2 grams of streptomycin. This type of resistance also
        occurred with another new anti-tubercular therapy at the time,
        PAS (Para-Amino-Salicylate). Subsequent trials B and C evaluated
        different doses and combinations of Streptomycin and PAS, and
        were published together in 1952 in the BMJ, with the pdf
        available here `1952 Three Streptomycin in TB Studies
        Summarized <https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2023677/pdf/brmedj03496-0024.pdf>`__.
      | Commentary on the conduct of these trials from one of the MD
        investigators can be found at `MD Clinical Trialist
        Commentary <https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1592068/>`__.
      | Commentary on the design and analysis of these trials from
        statistician A. Bradford Hill can be found at `Statistican
        Commentary <https://www.sciencedirect.com/science/article/abs/pii/019724569090001I>`__.

      .. rubric:: Source
         :name: source

      This data set is reconstructed to the best of my ability from the
      paper in the British Medical Journal from 1948, entitled,
      Streptomycin Treatment of Pulmonary Tuberculosis, pages 769-782 in
      the October 30, 1948 edition, authored by the Streptomycin in
      Tuberculosis Trials Committee. You can find the pdf at
      `Streptomycin in
      TB <https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2091872/pdf/brmedj03701-0007.pdf>`__.
