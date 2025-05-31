.. container::

   .. container::

      ========== ===============
      UScrime_df R Documentation
      ========== ===============

      .. rubric:: The Effect of Punishment Regimes on Crime Rates
         :name: the-effect-of-punishment-regimes-on-crime-rates

      .. rubric:: Description
         :name: description

      This dataset contains aggregate data on crime rates and
      socioeconomic indicators for 47 states in the USA for 1960. It
      explores the effect of punishment regimes on crime rates, with
      variables scaled to convenient numbers.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(UScrime_df)

      .. rubric:: Format
         :name: format

      A data frame with 47 observations and 16 variables:

      M
         Number of males aged 14–24 per 100,000 (integer).

      So
         Indicator for Southern states (1 = South, 0 = non-South)
         (integer).

      Ed
         Mean years of schooling (integer).

      Po1
         Police expenditure in 1960 per capita (integer).

      Po2
         Police expenditure in 1959 per capita (integer).

      LF
         Labor force participation rate per 100,000 (integer).

      M.F
         Ratio of males to females (integer).

      Pop
         Population size per 100,000 (integer).

      NW
         Percent non-white population (integer).

      U1
         Unemployment rate of urban males aged 14–24 (integer).

      U2
         Unemployment rate of urban males aged 35–39 (integer).

      GDP
         Gross domestic product per capita (integer).

      Ineq
         Income inequality indicator (integer).

      Prob
         Probability of imprisonment (numeric).

      Time
         Average time served in state prisons (in months) (numeric).

      y
         Crime rate: number of offenses per 100,000 population
         (integer).

      .. rubric:: Details
         :name: details

      The dataset name has been changed to 'UScrime_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      crimedatasets package and assists users in identifying its
      specific characteristics. The suffix 'df' indicates that the
      dataset is a traditional data frame in R. The original content has
      not been modified in any way.

      .. rubric:: Source
         :name: source

      Aggregate data on crime and punishment regimes in the USA, 1960.
