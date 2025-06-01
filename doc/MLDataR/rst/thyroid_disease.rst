.. container::

   .. container::

      =============== ===============
      thyroid_disease R Documentation
      =============== ===============

      .. rubric:: Thyroid disease dataset
         :name: thyroid-disease-dataset

      .. rubric:: Description
         :name: description

      The dataset is to be used with a supervised classification ML
      model to classify thyroid disease. The dataset was sourced and
      adapted from the UCI Machine Learning repository
      https://archive.ics.uci.edu/ml/index.php.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         thyroid_disease

      .. rubric:: Format
         :name: format

      A data frame with 3772 rows and 28 variables:

      ThryroidClass
         binary classification label indicating whether **sick = 1** or
         **negative=0**

      patient_age
         age of the patient

      patient_gender
         flag indicating gender of patient - **1=Female** and **0=Male**

      presc_thyroxine
         flag to indicate whether thyroxine replacement prescribed
         **1=Thyroxine prescribed**

      queried_why_on_thyroxine
         flag to indicate query has been actioned

      presc_anthyroid_meds
         flag to indicate whether anti-thyroid medicine has been
         prescribed

      sick
         flag to indicate sickness due to thyroxine depletion or over
         activity

      pregnant
         flag to indicate whether the patient is pregnant

      thyroid_surgery
         flag to indicate whether the patient has had thyroid surgery

      radioactive_iodine_therapyI131
         indicates whether patient has had radioactive iodine treatment:
         https://www.nhs.uk/conditions/thyroid-cancer/treatment/

      query_hypothyroid
         flag to indicate under active thyroid query
         https://www.nhs.uk/conditions/underactive-thyroid-hypothyroidism/

      query_hyperthyroid
         flag to indicate over active thyroid query
         https://www.nhs.uk/conditions/overactive-thyroid-hyperthyroidism/

      lithium
         Lithium carbonate administered to decrease the level of thyroid
         hormones

      goitre
         flag to indicate swelling of the thyroid gland
         https://www.nhs.uk/conditions/goitre/

      tumor
         flag to indicate a tumor

      hypopituitarism
         flag to indicate a diagnosed under active thyroid

      psych_condition
         indicates whether a patient has a psychological condition

      TSH_measured
         a TSH level lower than normal indicates there is usually more
         than enough thyroid hormone in the body and may indicate
         hyperthyroidism

      TSH_reading
         the reading result of the TSH blood test

      T3_measured
         linked to TSH reading - when free triiodothyronine rise above
         normal this indicates hyperthyroidism

      T3_reading
         the reading result of the T3 blood test looking for above
         normal levels of free triiodothyronine

      T4_measured
         free thyroxine, also known as T4, is used with T3 and TSH tests
         to diagnose hyperthyroidism

      T4_reading
         the reading result of th T4 test

      thyrox_util_rate_T4U_measured
         flag indicating the thyroxine utilisation rate
         https://pubmed.ncbi.nlm.nih.gov/1685967/

      thyrox_util_rate_T4U_reading
         the result of the test

      FTI_measured
         flag to indicate measurement on the Free Thyroxine Index
         (FTI)\ https://endocrinology.testcatalog.org/show/FRTUP

      FTI_reading
         the result of the test mentioned above

      ref_src
         [nominal] indicating the referral source of the patient

      .. rubric:: Source
         :name: source

      Prepared and adatped by Gary Hutson hutsons-hacks@outlook.com,
      Dec-2021 and sourced from Garavan Institute and J. Ross Quinlan.

      .. rubric:: References
         :name: references

      Thyroid disease records supplied by the Garavan Institute and J.
      Ross Quinlan.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(dplyr)
         library(ConfusionTableR)
         library(parsnip)
         library(rsample)
         library(recipes)
         library(ranger)
         library(workflows)
         data("thyroid_disease")
         td <- thyroid_disease
         # Create a factor of the class label to use in ML model
         td$ThryroidClass <- as.factor(td$ThryroidClass)
         # Check the structure of the data to make sure factor has been created
         str(td)
         # Remove missing values, or choose more advaced imputation option
         td <- td[complete.cases(td),]
         #Drop the column for referral source
         td <- td %>%
          dplyr::select(-ref_src)
         # Analyse class imbalance
         class_imbalance <- prop.table(table(td$ThryroidClass))
         class_imbalance
         #Divide the data into a training test split
         set.seed(123)
         split <- rsample::initial_split(td, prop=3/4)
         train_data <- rsample::training(split)
         test_data <- rsample::testing(split)
         # Create recipe to upsample and normalise
         set.seed(123)
         td_recipe <-
          recipe(ThryroidClass ~ ., data=train_data) %>%
           step_normalize(all_predictors()) %>%
           step_zv(all_predictors())
         # Instantiate the model
         set.seed(123)
         rf_mod <-
           parsnip::rand_forest() %>%
           set_engine("ranger") %>%
           set_mode("classification")
         # Create the model workflow
         td_wf <-
           workflow() %>%
           workflows::add_model(rf_mod) %>%
           workflows::add_recipe(td_recipe)
         # Fit the workflow to our training data
         set.seed(123)
         td_rf_fit <-
           td_wf %>%
           fit(data = train_data)
         # Extract the fitted data
         td_fitted <- td_rf_fit %>%
            extract_fit_parsnip()
         # Predict the test set on the training set to see model performance
         class_pred <- predict(td_rf_fit, test_data)
         td_preds <- test_data %>%
         bind_cols(class_pred)
         # Convert both to factors
         td_preds$.pred_class <- as.factor(td_preds$.pred_class)
         td_preds$ThryroidClass <- as.factor(td_preds$ThryroidClass)
         # Evaluate the data with ConfusionTableR
         cm <- ConfusionTableR::binary_class_cm(td_preds$ThryroidClass ,
                                                td_preds$.pred_class,
                                                positive="sick")
         #View Confusion matrix
         cm$confusion_matrix
         #View record level
         cm$record_level_cm
