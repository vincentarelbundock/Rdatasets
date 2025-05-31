.. container::

   .. container::

      =============== ===============
      Ndrangheta_list R Documentation
      =============== ===============

      .. rubric:: Ndrangheta Mafia Covert Network Dataset
         :name: ndrangheta-mafia-covert-network-dataset

      .. rubric:: Description
         :name: description

      This dataset contains a network of co-attendance occurrences of
      suspected members of the Ndrangheta criminal organization at
      summits held between 2007 and 2009. These summits were meetings
      aimed at making important decisions, resolving internal issues,
      and establishing roles and powers.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Ndrangheta_list)

      .. rubric:: Format
         :name: format

      A list with 2 elements:

      X
         A numeric matrix of dimensions 146 x 146 representing the
         co-attendance occurrences between members of the Ndrangheta
         organization at summits. The matrix includes member pairs and
         their respective co-attendance frequency.

      node_meta
         A data frame with 146 observations and 3 variables:

      Role
         Character vector indicating the role of each member in the
         organization.

      Locale
         Character vector indicating the geographic locale of each
         member.

      Id
         Integer vector representing a unique identifier for each
         member.

      .. rubric:: Details
         :name: details

      The dataset name has been changed to 'Ndrangheta_list' to avoid
      confusion with other data sets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      crimedatasets package and assists users in identifying its
      specific characteristics. The suffix 'list' indicates that the
      dataset is a list object in R. The original content has not been
      modified in any way.

      .. rubric:: Source
         :name: source

      Ndrangheta mafia covert network dataset, containing data from
      summits between 2007 and 2009.
