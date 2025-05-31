.. container::

   .. container::

      ======================== ===============
      RotterdamBreastCancer_df R Documentation
      ======================== ===============

      .. rubric:: Rotterdam Breast Cancer Data
         :name: rotterdam-breast-cancer-data

      .. rubric:: Description
         :name: description

      This dataset, RotterdamBreastCancer_df, is a data frame containing
      data on 2982 patients with primary breast cancer. The data was
      collected as part of the Rotterdam tumor bank and was used in
      Royston and Altman (2013) for survival analysis and prognostic
      model evaluation.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(RotterdamBreastCancer_df)

      .. rubric:: Format
         :name: format

      A data frame with 2982 observations and 15 variables:

      pid
         Patient ID (integer).

      year
         Year of diagnosis (integer).

      age
         Age at diagnosis in years (integer).

      meno
         Menopausal status: 1 = premenopausal, 2 = postmenopausal
         (integer).

      size
         Tumor size categorized into three levels (factor).

      grade
         Tumor grade: 1 = low, 2 = intermediate, 3 = high (integer).

      nodes
         Number of lymph nodes involved (integer).

      pgr
         Progesterone receptor status (integer).

      er
         Estrogen receptor status (integer).

      hormon
         Hormonal therapy: 1 = yes, 0 = no (integer).

      chemo
         Chemotherapy: 1 = yes, 0 = no (integer).

      rtime
         Time to recurrence in days (numeric).

      recur
         Recurrence status: 1 = recurrence, 0 = no recurrence (integer).

      dtime
         Time to death in days (numeric).

      death
         Death status: 1 = deceased, 0 = alive (integer).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'RotterdamBreastCancer_df' to
      avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the survival package. Based on records from the
      Rotterdam tumor bank and used in Royston and Altman (2013) for
      survival analysis.
