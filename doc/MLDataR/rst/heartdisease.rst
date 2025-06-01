.. container::

   .. container::

      ============ ===============
      heartdisease R Documentation
      ============ ===============

      .. rubric:: Heart disease dataset
         :name: heart-disease-dataset

      .. rubric:: Description
         :name: description

      The dataset is to be used with a supervised classification ML
      model to classify heart disease.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         heartdisease

      .. rubric:: Format
         :name: format

      A data frame with 918 rows and 10 variables:

      Age
         age of the patient presenting with heart disease

      Sex
         gender of the patient

      RestingBP
         blood pressure for resting heart beat

      Cholesterol
         Cholesterol reading

      FastingBS
         blood sample of glucose after a patient fasts
         https://www.diabetes.co.uk/diabetes_care/fasting-blood-sugar-levels.html

      RestingECG
         Resting echocardiography is an indicator of previous myocardial
         infarction e.g. heart attack

      MaxHR
         Maximum heart rate

      Angina
         chest pain caused by decreased flood flow
         https://www.nhs.uk/conditions/angina/

      HeartPeakReading
         reading at the peak of the heart rate

      HeartDisease
         the classification label of whether patient has heart disease
         or not

      .. rubric:: Source
         :name: source

      Collected by Gary Hutson hutsons-hacks@outlook.com, Dec-2021

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(dplyr)
         library(ConfusionTableR)
         data(heartdisease)

         # Convert diabetes data to factor'
         hd <- heartdisease %>%
          glimpse() %>%
          mutate(HeartDisease = as.factor(HeartDisease))
         # Check that the label is now a factor
          is.factor(hd$HeartDisease)
          # Dummy encoding
         # Get categorical columns
         hd_cat <- hd  %>%
          dplyr::select_if(is.character)
          # Dummy encode the categorical variables
          # Specify the columns to encode
          cols <- c("RestingECG", "Angina", "Sex")
          # Dummy encode using dummy_encoder in ConfusionTableR package
          coded <- ConfusionTableR::dummy_encoder(hd_cat, cols, remove_original = TRUE)
         coded <- coded %>%
             select(RestingECG_ST, RestingECG_LVH, Angina=Angina_Y,
             Sex=Sex_F)
         # Remove column names we have encoded from original data frame
         hd_one <- hd[,!names(hd) %in% cols]
         # Bind the numerical data on to the categorical data
         hd_final <- bind_cols(coded, hd_one)
         # Output the final encoded data frame for the ML task
         glimpse(hd_final)
