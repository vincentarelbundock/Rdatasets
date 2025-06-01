.. container::

   .. container::

      ========================== ===============
      muscatine_coronary_risk_df R Documentation
      ========================== ===============

      .. rubric:: Muscatine pediatric CRF
         :name: muscatine-pediatric-crf

      .. rubric:: Description
         :name: description

      This dataset, muscatine_coronary_risk_df, is a data frame
      containing longitudinal observations from the Muscatine Coronary
      Risk Factor (MCRF) study, which examined the development of
      coronary disease risk factors in children. It includes 14,568
      observations of 4,856 children tracked from 1977 to 1981.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(muscatine_coronary_risk_df)

      .. rubric:: Format
         :name: format

      A data frame with 14,568 observations and 7 variables:

      id
         Child identification number (integer)

      gender
         Gender of child (factor with 2 levels)

      base_age
         Age at first observation in years (integer)

      age
         Current age in years (integer)

      occasion
         Measurement occasion (integer)

      obese
         Obesity status (factor with 2 levels)

      numobese
         Numeric obesity indicator (numeric)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'muscatine_coronary_risk_df' to
      avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      CardioDataSets package and assists users in identifying its
      specific characteristics. The suffix 'df' indicates that the
      dataset is a standard data frame. The original content has not
      been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the geepack package version 1.3.12. Original
      study: The Muscatine Coronary Risk Factor Study, University of
      Iowa, 1977-1981.
