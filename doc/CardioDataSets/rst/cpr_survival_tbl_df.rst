.. container::

   .. container::

      =================== ===============
      cpr_survival_tbl_df R Documentation
      =================== ===============

      .. rubric:: Blood thinners in CPR survival
         :name: blood-thinners-in-cpr-survival

      .. rubric:: Description
         :name: description

      This dataset, cpr_survival_tbl_df, is a tibble containing
      information from a study examining the effect of blood thinners on
      survival rates in CPR patients. The study randomly assigned 90
      patients to either receive a blood thinner (treatment group) or
      not receive one (control group), with the outcome being survival
      for at least 24 hours.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(cpr_survival_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 90 observations and 2 variables:

      group
         Treatment assignment (factor with 2 levels: "control" and
         "treatment")

      outcome
         Survival status (factor with 2 levels: "died" and "survived")

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'cpr_survival_tbl_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      CardioDataSets package and assists users in identifying its
      specific characteristics. The suffix 'tbl_df' indicates that the
      dataset is a tibble. The original content has not been modified in
      any way.

      .. rubric:: Source
         :name: source

      Data taken from the openintro package version 2.5.0
