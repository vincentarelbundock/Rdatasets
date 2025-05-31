.. container::

   .. container::

      ========== ===============
      gpa_tbl_df R Documentation
      ========== ===============

      .. rubric:: Survey of Duke Students on GPA, Studying, and More
         :name: survey-of-duke-students-on-gpa-studying-and-more

      .. rubric:: Description
         :name: description

      This dataset, gpa_tbl_df, is a tibble containing survey data from
      55 Duke University students. It includes information on students'
      GPA, weekly study hours, average hours of sleep per night, time
      spent going out per week, and gender. The dataset provides
      valuable insights into the relationship between academic
      performance and lifestyle habits.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(gpa_tbl_df)

      .. rubric:: Format
         :name: format

      A tibble with 55 observations and 5 variables:

      gpa
         Grade Point Average (numeric).

      studyweek
         Number of hours spent studying per week (integer).

      sleepnight
         Average hours of sleep per night (numeric).

      out
         Average hours spent going out per week (numeric).

      gender
         Gender of the student (factor with levels "Male" and "Female").

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'gpa_tbl_df' to avoid confusion
      with other datasets in the R ecosystem. This naming convention
      helps distinguish this dataset as part of the educationR package
      and assists users in identifying its specific characteristics. The
      suffix 'tbl_df' indicates that the dataset is a tibble. The
      original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      The dataset was taken from the openintro package.
