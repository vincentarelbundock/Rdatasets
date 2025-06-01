.. container::

   .. container::

      ===================== ===============
      stroke_classification R Documentation
      ===================== ===============

      .. rubric:: Stroke Classification dataset
         :name: stroke-classification-dataset

      .. rubric:: Description
         :name: description

      This dataset has been obtained from a Stoke department within the
      NHS and is a traditional supervised ML classification dataset

      .. rubric:: Usage
         :name: usage

      .. code:: R

         stroke_classification

      .. rubric:: Format
         :name: format

      A data frame with 5110 rows and 11 variables:

      pat_id
         unique patient identifier index

      stroke
         outcome variable as a flag - 1 for stroke and 0 for no stroke

      gender
         patient gender description

      age
         age of the patient

      hypertension
         binary flag to indicate whether patient has hypertension:
         https://www.nhs.uk/conditions/high-blood-pressure-hypertension/

      heart_disease
         binary flag to indicate whether patient has heart disease: 1 or
         no heart disease history: 0

      work_related_stress
         binary flag to indicate whether patient has history of work
         related stress

      urban_residence
         binary flag indicating whether patient lives in an urban area
         or not

      avg_glucose_level
         average blood glucose readings of the patient

      bmi
         body mass index of the patient:
         https://www.nhs.uk/live-well/healthy-weight/bmi-calculator/

      smokes
         binary flag to indicate if the patient smokes - 1 for current
         smoker and 0 for smoking cessation

      .. rubric:: Source
         :name: source

      Prepared and compiled by Gary Hutson hutsons-hacks@outlook.com,
      Apr-2022.
