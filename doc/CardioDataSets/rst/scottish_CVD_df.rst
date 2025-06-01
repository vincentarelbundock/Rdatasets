.. container::

   .. container::

      =============== ===============
      scottish_CVD_df R Documentation
      =============== ===============

      .. rubric:: Scottish Health Survey CVD
         :name: scottish-health-survey-cvd

      .. rubric:: Description
         :name: description

      This dataset, scottish_CVD_df, is a data frame containing
      cardiovascular health data from the 1998 Scottish Health Survey.
      It includes information from 8,804 respondents aged 18-64, with
      variables covering demographics, health behaviors, and
      cardiovascular disease status.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(scottish_CVD_df)

      .. rubric:: Format
         :name: format

      A data frame with 8,804 observations and 8 variables:

      age
         Respondent age in years (integer)

      sex
         Respondent sex (factor with 2 levels)

      sc
         Social class (factor with 3 levels)

      cvddef
         Doctor-diagnosed CVD status (integer: 0=no, 1=yes)

      carstair
         Carstairs deprivation score (numeric)

      smoke
         Smoking status (factor with 5 levels)

      id
         Respondent identification number (integer)

      area
         Geographic area code (integer)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'scottish_CVD_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      CardioDataSets package and assists users in identifying its
      specific characteristics. The suffix 'df' indicates that the
      dataset is a standard data frame. The original content has not
      been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the R2MLwiN package version 0.8-9. Original
      survey: 1998 Scottish Health Survey. Methodology reference:
      Charlton C, Rasbash J, Browne WJ, Healy M, Cameron B (2024). MLwiN
      Version 3.09. Centre for Multilevel Modelling, University of
      Bristol.
