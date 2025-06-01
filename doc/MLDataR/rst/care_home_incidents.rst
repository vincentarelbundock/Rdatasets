.. container::

   .. container::

      =================== ===============
      care_home_incidents R Documentation
      =================== ===============

      .. rubric:: Care Home Incidents
         :name: care-home-incidents

      .. rubric:: Description
         :name: description

      a NHS patient safety incidents dataset:
      https://www.england.nhs.uk/patient-safety/report-patient-safety-incident/
      dataset that has been synthetically generated against real data

      .. rubric:: Usage
         :name: usage

      .. code:: R

         care_home_incidents

      .. rubric:: Format
         :name: format

      A data frame with 1216 rows and 12 variables:

      CareHomeFail
         a binary indicator to specify whether a certain care home is
         failing

      WeightLoss
         aggregation of incidents indicating weight loss in patient

      Medication
         medication missed aggregaation

      Falls
         Recorded number of patient falls

      Choking
         Number of patient choking incidents

      UnexpectedDeaths
         unexpected deaths in the care home

      Bruising
         Number of bruising incidents in the care home

      Absconsion
         Absconding from the care home setting

      ResidentAbuseByResident
         Abuse conducted by one care home resident against another

      ResidentAbuseByStaff
         Incidents of resident abuse by staff

      ResidentAbuseOnStaff
         Incidents of residents abusing staff

      Wounds
         Unexplained wounds against staff

      .. rubric:: Source
         :name: source

      Collected by Gary Hutson hutsons-hacks@outlook.com, Jan-2022

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(dplyr)
         data(care_home_incidents)
         # Convert diabetes data to factor'
         ch_incs <- care_home_incidents %>%
          mutate(CareHomeFail = as.factor(CareHomeFail))
          ch_incs %>% glimpse()
          # Check factor
          factor(ch_incs$CareHomeFail)
