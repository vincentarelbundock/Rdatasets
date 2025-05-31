.. container::

   .. container::

      ===================== ===============
      CancerSmokeCity_array R Documentation
      ===================== ===============

      .. rubric:: Lung Cancer by Smoking Status and City
         :name: lung-cancer-by-smoking-status-and-city

      .. rubric:: Description
         :name: description

      This dataset, CancerSmokeCity_array, is an array containing data
      on lung cancer rates by smoking status and city. The data includes
      32 observations organized by whether the individual smokes, their
      lung cancer status, and the city. The dimensions of the array are:
      2 smoking statuses (smokes, does not smoke), 2 lung cancer
      statuses (cancer, no cancer), and 8 cities.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(CancerSmokeCity_array)

      .. rubric:: Format
         :name: format

      An array with 32 elements, with dimensions:

      Smoking
         Smoking status (character): 2 categories (smokes, does not
         smoke).

      Lung
         Lung cancer status (character): 2 categories (cancer, no
         cancer).

      City
         City (character): 8 cities.

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'CancerSmokeCity_array' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      OncoDataSets package and assists users in identifying its specific
      characteristics. The suffix '\_array' indicates that the dataset
      is an array. The original content has not been modified in any
      way.

      .. rubric:: Source
         :name: source

      Data taken from the flatr package. Based on data in Z. Liu, Int.
      J. Epidemiol., 21: 197–201, 1992.
