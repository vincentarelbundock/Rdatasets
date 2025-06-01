.. container::

   .. container::

      ==================== ===============
      causal_collider_time R Documentation
      ==================== ===============

      .. rubric:: Time-varying Causal Quartet Data
         :name: time-varying-causal-quartet-data

      .. rubric:: Description
         :name: description

      These datasets contains 100 observations, each generated under a
      different data generating mechanism:

      -  (1) A collider

      -  (2) A confounder

      -  (3) A mediator

      -  (4) M-bias

      .. rubric:: Usage
         :name: usage

      .. code:: R

         causal_collider_time

         causal_confounding_time

         causal_mediator_time

         causal_m_bias_time

         causal_quartet_time

      .. rubric:: Format
         :name: format

      ``causal_collider_time``: A dataframe with 100 rows and 7
      variables:

      -  ``covariate_baseline``: known factor measured at baseline

      -  ``exposure_baseline``: exposure measured at baseline

      -  ``outcome_baseline``: outcome measured at baseline

      -  ``exposure_followup``: exposure measured at the followup visit
         (final time)

      -  ``outcome_followup``: outcome measured at the followup visit
         (final time)

      -  ``covariate_followup``: known factor measured at the followup
         visit (final time)

      ``causal_confounding_time``: A dataframe with 100 rows and 7
      variables:

      -  ``covariate_baseline``: known factor measured at baseline

      -  ``exposure_baseline``: exposure measured at baseline

      -  ``outcome_baseline``: outcome measured at baseline

      -  ``exposure_followup``: exposure measured at the followup visit
         (final time)

      -  ``outcome_followup``: outcome measured at the followup visit
         (final time)

      -  ``covariate_followup``: known factor measured at the followup
         visit (final time)

      ``causal_mediator_time``: A dataframe with 100 rows and 7
      variables:

      -  ``covariate_baseline``: known factor measured at baseline

      -  ``exposure_baseline``: exposure measured at baseline

      -  ``outcome_baseline``: outcome measured at baseline

      -  ``covariate_mid``: known factor measured at some mid-point

      -  ``exposure_mid``: exposure measured at some mid-point

      -  ``outcome_mid``: outcome measured at some mid-point

      -  ``exposure_followup``: exposure measured at the followup visit
         (final time)

      -  ``outcome_followup``: outcome measured at the followup visit
         (final time)

      -  ``covariate_followup``: known factor measured at the followup
         visit (final time)

      ``causal_m_bias_time``: A dataframe with 100 rows and 9 variables:

      -  ``u1``: unmeasured factor

      -  ``u2``: unmeasured factor

      -  ``covariate_baseline``: known factor measured at baseline

      -  ``exposure_baseline``: exposure measured at baseline

      -  ``outcome_baseline``: outcome measured at baseline

      -  ``exposure_followup``: exposure measured at the followup visit
         (final time)

      -  ``outcome_followup``: outcome measured at the followup visit
         (final time)

      -  ``covariate_followup``: known factor measured at the followup
         visit (final time)

      An object of class ``tbl_df`` (inherits from ``tbl``,
      ``data.frame``) with 400 rows and 12 columns.

      .. rubric:: Details
         :name: details

      There are two time points:

      -  baseline

      -  follow up

      These datasets help demonstrate that a model that includes only
      pre-exposure covariates (that is, only adjusting for covariates
      measured at baseline), will be less prone to potential biases.
      Adjusting for only pre-exposure covariates "solves" the bias in
      datasets 1-3. It does not solve the data generated under the
      "M-bias" scenario, however this is more of a toy example, it has
      been shown many times that the assumptions needed for this M-bias
      to hold are often not ones we practically see in data analysis.

      .. rubric:: References
         :name: references

      D'Agostino McGowan L, Barrett M (2023). Causal inference is not a
      statistical problem. Preprint arXiv:2304.02683v1.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## incorrect model because covariate is post-treatment
         lm(outcome_followup ~ exposure_baseline + covariate_followup,
            data = causal_collider_time)

         ## correct model because covariate is pre-treatment
         ## even though the true mechanism dictates that the covariate is a collider,
         ## because the pre-exposure variable is used, the collider bias does not
         ## occur.
         lm(outcome_followup ~ exposure_baseline + covariate_baseline,
            data = causal_collider_time)
