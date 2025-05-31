.. container::

   .. container::

      ========= ===============
      infert_df R Documentation
      ========= ===============

      .. rubric:: Infertility after Spontaneous and Induced Abortion
         :name: infertility-after-spontaneous-and-induced-abortion

      .. rubric:: Description
         :name: description

      The dataset name has been changed to 'infert_df' to avoid
      confusion with other datasets from packages in the R ecosystem and
      to follow the naming conventions of the 'MedDataSets' package. The
      suffix '\_df' indicates that this dataset is a data frame, helping
      to distinguish it from other datasets within the package and from
      those in the broader R ecosystem. The original content of the
      dataset has not been modified in any way.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(infert_df)

      .. rubric:: Format
         :name: format

      A data frame with 248 observations and 8 variables:

      education
         A factor representing the education level of the subjects, with
         3 levels.

      age
         A numeric vector indicating the age of the subjects.

      parity
         A numeric vector representing the number of previous
         pregnancies.

      induced
         A numeric vector indicating the number of induced abortions.

      case
         A numeric vector indicating the case status (infertile or not).

      spontaneous
         A numeric vector indicating the number of spontaneous
         abortions.

      stratum
         An integer representing the stratum in the study.

      pooled.stratum
         A numeric vector representing the pooled stratum values.

      .. rubric:: Details
         :name: details

      This dataset examines the relationship between various factors
      such as education level, age, parity, and the incidence of
      infertility after spontaneous and induced abortion.

      .. rubric:: Source
         :name: source

      Data collected from clinical studies on infertility.
