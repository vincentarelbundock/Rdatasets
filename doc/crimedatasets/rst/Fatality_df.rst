.. container::

   .. container::

      =========== ===============
      Fatality_df R Documentation
      =========== ===============

      .. rubric:: Drunk Driving Laws and Traffic Deaths
         :name: drunk-driving-laws-and-traffic-deaths

      .. rubric:: Description
         :name: description

      This dataset contains data on traffic fatalities and laws related
      to drunk driving across U.S. states. It includes information on
      beer taxes, minimum legal drinking age (MLDA), and other
      socioeconomic factors observed between 1982 and 1988.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Fatality_df)

      .. rubric:: Format
         :name: format

      A data frame with 336 observations and 10 variables:

      state
         State identifier (integer).

      year
         Year of the observation (integer).

      mrall
         Motor vehicle fatality rate per 100,000 population (numeric).

      beertax
         Beer tax in dollars per gallon (numeric).

      mlda
         Minimum legal drinking age (MLDA) (numeric).

      jaild
         Indicator for mandatory jail sentence for drunk-driving
         (Factor: Yes/No).

      comserd
         Indicator for mandatory community service for drunk-driving
         (Factor: Yes/No).

      vmiles
         Vehicle miles traveled in billions (numeric).

      unrate
         Unemployment rate (numeric).

      perinc
         Per capita income in dollars (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been changed to 'Fatality_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      crimedatasets package and assists users in identifying its
      specific characteristics. The suffix 'df' indicates that the
      dataset is stored as a traditional data frame in R. The original
      content has not been modified in any way.

      .. rubric:: Source
         :name: source

      Panel data on drunk driving laws and traffic deaths in the U.S.
      for 48 states, 1982–1988.
