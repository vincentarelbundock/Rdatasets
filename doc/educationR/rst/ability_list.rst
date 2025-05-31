.. container::

   .. container::

      ============ ===============
      ability_list R Documentation
      ============ ===============

      .. rubric:: Ability and Intelligence Tests
         :name: ability-and-intelligence-tests

      .. rubric:: Description
         :name: description

      This dataset, ability_list, is a list containing information about
      six ability and intelligence tests administered to 112
      individuals. The dataset provides a covariance matrix, the means
      (centers) of the variables, and the number of observations.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(ability_list)

      .. rubric:: Format
         :name: format

      A list with 3 components:

      cov
         A covariance matrix (numeric matrix) of dimensions 6x6,
         representing the relationships between six different tests.

      center
         A numeric vector of length 6 containing the mean scores for
         each of the six tests.

      n.obs
         The total number of observations (integer), which is 112.

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'ability_list' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      educationR package and assists users in identifying its specific
      characteristics. The suffix 'list' indicates that the dataset is a
      list object. The original content has not been modified in any
      way.

      .. rubric:: Source
         :name: source

      Generated for educational purposes.
