.. container::

   .. container::

      ================ ===============
      camden_crimes_df R Documentation
      ================ ===============

      .. rubric:: Crime Records of Camden Borough, UK
         :name: crime-records-of-camden-borough-uk

      .. rubric:: Description
         :name: description

      This dataset contains information on reported crimes in Camden,
      including spatial coordinates, dates of the incidents, and crime
      types. It provides a detailed view of crime patterns within the
      region.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(camden_crimes_df)

      .. rubric:: Format
         :name: format

      A data frame with 4,578 observations and 4 variables:

      x
         X-coordinate (numeric).

      y
         Y-coordinate (numeric).

      date
         Date of the reported crime (Date).

      type
         Type of crime (character).

      .. rubric:: Details
         :name: details

      The dataset name has been changed to 'camden_crimes_df' to avoid
      confusion with other data sets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      crimedatasets package and assists users in identifying its
      specific characteristics. The suffix 'df' indicates that the
      dataset is a traditional data frame in R. The original content has
      not been modified in any way

      .. rubric:: Source
         :name: source

      Data comprising 'Theft' and 'Criminal Damage' records of Camden
      Borough of London, UK, 2021. (Source:
      https://data.police.uk/data/)
