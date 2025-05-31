.. container::

   .. container::

      ================= ===============
      CervicalCancer_df R Documentation
      ================= ===============

      .. rubric:: Cervical Cancer Screening with Smartphones
         :name: cervical-cancer-screening-with-smartphones

      .. rubric:: Description
         :name: description

      This dataset, CervicalCancer_df, is a data frame containing data
      from a study evaluating the diagnostic accuracy of CIN2+ detection
      using a combined approach with naked-eye and digital VIA (visual
      inspection with acetic acid) on a Samsung Galaxy J5 smartphone,
      compared to traditional naked-eye inspection alone.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(CervicalCancer_df)

      .. rubric:: Format
         :name: format

      A data frame with 181 observations and 10 variables:

      hpv16
         Presence of HPV16 (Factor with 2 levels).

      hpv1845
         Presence of HPV18/45 (Factor with 2 levels).

      hpvother
         Presence of other HPV strains (Factor with 2 levels).

      naked_via
         Naked-eye VIA result (Factor with 2 levels).

      smart_via
         Digital VIA result with smartphone (Factor with 2 levels).

      treatment
         Treatment received (Factor with 2 levels).

      combined_via
         Combined naked-eye and digital VIA (Factor with 2 levels).

      histology
         Histological diagnosis (Factor with 5 levels).

      cytology
         Cytological diagnosis (Factor with 7 levels).

      CIN2plus
         CIN2+ status (Factor with 2 levels).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'CervicalCancer_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the R4HCR package. Data directly available from
      https://yareta.unige.ch/archives/ffbeb6d7-b390-4755-987e-8faf85f97c67
