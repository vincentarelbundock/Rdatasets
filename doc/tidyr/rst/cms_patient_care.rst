.. container::

   .. container::

      ====================== ===============
      cms_patient_experience R Documentation
      ====================== ===============

      .. rubric:: Data from the Centers for Medicare & Medicaid Services
         :name: data-from-the-centers-for-medicare-medicaid-services

      .. rubric:: Description
         :name: description

      Two datasets from public data provided the Centers for Medicare &
      Medicaid Services, https://data.cms.gov.

      -  ``cms_patient_experience`` contains some lightly cleaned data
         from "Hospice - Provider Data", which provides a list of
         hospice agencies along with some data on quality of patient
         care, https://data.cms.gov/provider-data/dataset/252m-zfp9.

      -  ``cms_patient_care`` "Doctors and Clinicians Quality Payment
         Program PY 2020 Virtual Group Public Reporting",
         https://data.cms.gov/provider-data/dataset/8c70-d353

      .. rubric:: Usage
         :name: usage

      .. code:: R

         cms_patient_experience

         cms_patient_care

      .. rubric:: Format
         :name: format

      ``cms_patient_experience`` is a data frame with 500 observations
      and five variables:

      org_pac_id,org_nm
         Organisation ID and name

      measure_cd,measure_title
         Measure code and title

      prf_rate
         Measure performance rate

      ``cms_patient_care`` is a data frame with 252 observations and
      five variables:

      ccn,facility_name
         Facility ID and name

      measure_abbr
         Abbreviated measurement title, suitable for use as variable
         name

      score
         Measure score

      type
         Whether score refers to the rating out of 100 ("observed"), or
         the maximum possible value of the raw score ("denominator")

      .. rubric:: Examples
         :name: examples

      .. code:: R

         cms_patient_experience %>%
           dplyr::distinct(measure_cd, measure_title)

         cms_patient_experience %>%
           pivot_wider(
             id_cols = starts_with("org"),
             names_from = measure_cd,
             values_from = prf_rate
          )

         cms_patient_care %>%
           pivot_wider(
             names_from = type,
             values_from = score
           )

         cms_patient_care %>%
           pivot_wider(
             names_from = measure_abbr,
             values_from = score
           )

         cms_patient_care %>%
           pivot_wider(
             names_from = c(measure_abbr, type),
             values_from = score
           )
