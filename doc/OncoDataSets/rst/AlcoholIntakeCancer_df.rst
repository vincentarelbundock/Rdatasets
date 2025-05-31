.. container::

   .. container::

      ====================== ===============
      AlcoholIntakeCancer_df R Documentation
      ====================== ===============

      .. rubric:: Alcohol Intake and Colorectal Cancer Data
         :name: alcohol-intake-and-colorectal-cancer-data

      .. rubric:: Description
         :name: description

      This dataset, AlcoholIntakeCancer_df, is a data frame containing
      data related to alcohol intake and its association with colorectal
      cancer risk. The data includes information on alcohol intake
      levels (dose), the number of cancer cases, person-years of
      observation, and the relative risk (logrr) along with its standard
      error (se). The dataset consists of 48 observations with 7
      variables.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(AlcoholIntakeCancer_df)

      .. rubric:: Format
         :name: format

      A data frame with 48 observations and 7 variables:

      id
         Identifier for the study (factor).

      type
         Type of study (factor).

      dose
         Level of alcohol intake (numeric).

      cases
         Number of colorectal cancer cases (integer).

      peryears
         Person-years of observation (numeric).

      logrr
         Logarithm of the relative risk (numeric).

      se
         Standard error of the logarithm of the relative risk (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'AlcoholIntakeCancer_df' to
      avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_df' indicates that the dataset is a
      data frame. The original content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Data taken from the mixmeta package. Available at:
      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041
