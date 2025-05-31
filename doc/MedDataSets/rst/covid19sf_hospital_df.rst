.. container::

   .. container::

      ===================== ===============
      covid19sf_hospital_df R Documentation
      ===================== ===============

      .. rubric:: San Francisco COVID-19 Hospital Capacity
         :name: san-francisco-covid-19-hospital-capacity

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'covid19sf_hospital_df' to
      avoid confusion with other datasets from packages in the R
      ecosystem and to follow the naming conventions of the
      'MedDataSets' package. The suffix '\_df' indicates that this
      dataset is a data frame, helping to distinguish it from other
      datasets within the package and from those in the broader R
      ecosystem. The original content of the dataset has not been
      modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(covid19sf_hospital_df)

      .. rubric:: Format
         :name: format

      A data frame with 4,514 observations and 5 variables:

      hospital
         The name of the hospital (character).

      date
         The date of the reported data (Date).

      bed_type
         The type of bed (character), such as ICU, general, etc.

      status
         The status of the beds (character), indicating if they are
         occupied, available, etc.

      count
         The number of beds reported (integer).

      .. rubric:: Details
         :name: details

      This dataset provides information on hospital capacity in San
      Francisco during the COVID-19 pandemic. It details the number of
      available hospital beds categorized by type and status, along with
      the respective hospitals and dates. The dataset is crucial for
      understanding the hospital system's response and capacity to
      handle COVID-19 cases.

      .. rubric:: Source
         :name: source

      San Francisco Department of Public Health COVID-19 hospital
      capacity data.
