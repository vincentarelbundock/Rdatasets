.. container::

   .. container::

      ================== ===============
      NCCTGLungCancer_df R Documentation
      ================== ===============

      .. rubric:: NCCTG Lung Cancer Data
         :name: ncctg-lung-cancer-data

      .. rubric:: Description
         :name: description

      This dataset, NCCTGLungCancer_df, is a data frame containing data
      on survival in patients with advanced lung cancer from the North
      Central Cancer Treatment Group (NCCTG). The data includes 228
      observations and 10 variables related to clinical and performance
      score data for lung cancer patients.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(NCCTGLungCancer_df)

      .. rubric:: Format
         :name: format

      A data frame with 228 observations and 10 variables:

      inst
         Institution code (numeric).

      time
         Survival time in days (numeric).

      status
         Survival status: 1 = dead, 2 = alive (numeric).

      age
         Age of the patient (numeric).

      sex
         Sex of the patient: 1 = male, 2 = female (numeric).

      ph.ecog
         ECOG performance score (numeric).

      ph.karno
         Karnofsky performance score (numeric).

      pat.karno
         Patient's Karnofsky performance score (numeric).

      meal.cal
         Daily calorie intake (numeric).

      wt.loss
         Weight loss in kilograms (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'NCCTGLungCancer_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the nftbart package. Based on survival data from
      patients with advanced lung cancer from the North Central Cancer
      Treatment Group (NCCTG). Performance scores rate how well the
      patient can perform usual daily activities.
