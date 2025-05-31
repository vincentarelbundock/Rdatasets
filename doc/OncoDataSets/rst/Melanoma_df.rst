.. container::

   .. container::

      =========== ===============
      Melanoma_df R Documentation
      =========== ===============

      .. rubric:: Survival from Malignant Melanoma
         :name: survival-from-malignant-melanoma

      .. rubric:: Description
         :name: description

      This dataset, Melanoma_df, is a data frame containing information
      about 205 patients with malignant melanoma (a type of skin cancer)
      who underwent a radical operation at Odense University Hospital,
      Denmark, between 1962 and 1977. Patients were followed up until
      the end of 1977. By that time, 134 patients were still alive, and
      71 had died (57 due to cancer and 14 from other causes). This
      dataset provides detailed clinical and demographic information for
      studying malignant melanoma outcomes.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Melanoma_df)

      .. rubric:: Format
         :name: format

      A data frame with 205 observations and 7 variables:

      time
         Follow-up time in days (integer).

      status
         Patient's status at the end of the study: 1 = alive, 2 = dead
         from cancer, 3 = dead from other causes (integer).

      sex
         Sex of the patient: 1 = male, 2 = female (integer).

      age
         Age of the patient at the time of surgery (integer).

      year
         Year of surgery (integer).

      thickness
         Tumor thickness in millimeters (numeric).

      ulcer
         Presence of ulceration: 1 = no, 2 = yes (integer).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'Melanoma_df' to avoid confusion
      with other datasets in the R ecosystem. This naming convention
      helps distinguish this dataset as part of the OncoDataSets package
      and assists users in identifying its specific characteristics. The
      suffix '\_df' indicates that the dataset is a data frame. The
      original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the MASS package. Original study conducted at
      Odense University Hospital, Denmark.
