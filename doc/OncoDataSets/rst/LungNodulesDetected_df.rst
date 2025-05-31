.. container::

   .. container::

      ====================== ===============
      LungNodulesDetected_df R Documentation
      ====================== ===============

      .. rubric:: Incidental or Screen-Detected Lung Nodules
         :name: incidental-or-screen-detected-lung-nodules

      .. rubric:: Description
         :name: description

      This dataset, LungNodulesDetected_df, is a data frame containing
      data on incidental or screen-detected lung nodules. The data
      includes information such as patient demographics, smoking status,
      nodule characteristics, and whether the nodule is malignant. The
      dataset was collected from patients with pulmonary nodules of up
      to 15mm detected on routine CT chest scans, aged 18 years or
      older, from 3 academic centers in the UK.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(LungNodulesDetected_df)

      .. rubric:: Format
         :name: format

      A data frame with 999 observations and 8 variables:

      sex
         Gender of the patient, represented as a factor with 2 levels
         (Male, Female).

      age
         Age of the patient (numeric).

      num.annotated
         Number of annotated nodules (numeric).

      location
         Location of the nodule, represented as a factor with 6 levels.

      spiculate
         Whether the nodule is spiculated, represented as a factor with
         2 levels (Yes, No).

      smoke.status
         Smoking status of the patient, represented as a factor with 5
         levels.

      diameter
         Diameter of the nodule (numeric).

      malignant
         Malignancy status of the nodule (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'LungNodulesDetected_df' to
      avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the R4HCR package. The dataset was collected from
      patients with pulmonary nodules detected on CT chest scans, aged
      18 years or older, from 3 academic centers in the UK.
