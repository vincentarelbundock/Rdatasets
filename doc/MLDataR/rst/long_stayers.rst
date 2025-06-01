.. container::

   .. container::

      ============ ===============
      long_stayers R Documentation
      ============ ===============

      .. rubric:: Long stayers dataset
         :name: long-stayers-dataset

      .. rubric:: Description
         :name: description

      classification dataset of long staying patients. Contains patients
      who have been registered as an inpatient for longer than 7 days
      length of stay
      https://www.england.nhs.uk/south/wp-content/uploads/sites/6/2016/12/rig-reviewing-stranded-patients-hospital.pdf.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         long_stayers

      .. rubric:: Format
         :name: format

      A data frame with 768 rows and 9 variables:

      stranded.label
         binary classification label indicating whether **stranded = 1**
         or **not stranded=0**

      age
         age of the patient

      care.home.referral
         flag indicating whether referred from a private care home -
         **1=Care Home Referral** and **0=Not a care home referral**

      medicallysafe
         flag indicating whether they are medically safe for discharge -
         **1=Medically safe** and **0=Not medically safe**

      hcop
         flag indicating health care for older person triage - **1=Yes
         triaged from HCOP** and **0=Triaged from different department**

      mental_health_care
         flag indicating whether they require mental health care -
         **1=MH assistance needed** and **0=No history of mental
         health**

      periods_of_previous_care
         Count of the number of times they have been in hospital in last
         12 months

      admit_date
         date the patient was admitted as an inpatient

      frailty_index
         indicates the type of frailty - nominal variable

      .. rubric:: Source
         :name: source

      Prepared, acquired and adatped by Gary Hutson
      hutsons-hacks@outlook.com, Dec-2021. Synthetic data, based off
      live patient data from various NHS secondary health care trusts.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(dplyr)
         library(ggplot2)
         library(caret)
         library(rsample)
         library(varhandle)
         data("long_stayers")
         glimpse(long_stayers)
         # Examine class imbalance
         prop.table(table(long_stayers$stranded.label))
         # Feature engineering
         long_stayers <- long_stayers %>%
         dplyr::mutate(stranded.label=factor(stranded.label)) %>%
          dplyr::select(everything(), -c(admit_date))
          # Feature encoding
          cats <- select_if(long_stayers, is.character)
          cat_dummy <- varhandle::to.dummy(cats$frailty_index, "frail_ind")
         #Converts the frailty index column to dummy encoding and sets a column called "frail_ind" prefix
         cat_dummy <- cat_dummy %>%
          as.data.frame() %>%
          dplyr::select(-frail_ind.No_index_item) #Drop the field of interest
         long_stayers <- long_stayers %>%
          dplyr::select(-frailty_index) %>%
          bind_cols(cat_dummy) %>% na.omit(.)
         # Split the data
         split <- rsample::initial_split(long_stayers, prop = 3/4)
         train <- rsample::training(split)
         test <- rsample::testing(split)
         set.seed(123)
         glm_class_mod <- caret::train(factor(stranded.label) ~ ., data = train,
                                      method = "glm")
         print(glm_class_mod)
         # Predict the probabilities
         preds <- predict(glm_class_mod, newdata = test) # Predict class
         pred_prob <- predict(glm_class_mod, newdata = test, type="prob") #Predict probs

         predicted <- data.frame(preds, pred_prob)
         test <- test %>%
          bind_cols(predicted) %>%
          dplyr::rename(pred_class=preds)
         #Evaluate with ConfusionTableR
         library(ConfusionTableR)
         cm <- ConfusionTableR::binary_class_cm(test$stranded.label, test$pred_class, positive="Stranded")
         cm$record_level_cm
         # Visualise odds ration
         library(OddsPlotty)
         plotty <- OddsPlotty::odds_plot(glm_class_mod$finalModel,
                                        title = "Odds Plot ",
                                        subtitle = "Showing odds of patient stranded",
                                        point_col = "#00f2ff",
                                        error_bar_colour = "black",
                                        point_size = .5,
                                        error_bar_width = .8,
                                        h_line_color = "red")
         print(plotty)
