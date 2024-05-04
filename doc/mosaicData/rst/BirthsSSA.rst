.. container::

   .. container::

      ====== ===============
      Births R Documentation
      ====== ===============

      .. rubric:: US Births
         :name: us-births

      .. rubric:: Description
         :name: description

      Number of births in the United States. There are several data sets
      covering different date ranges and obtaining data from different
      sources.

      .. rubric:: Usage
         :name: usage

      ::

         data(Births)

         data(Births78)

         data(Births2015)

         data(BirthsSSA)

         data(BirthsCDC)

      .. rubric:: Format
         :name: format

      A data.frame with the following 8 variables.

      ``date``
         Date

      ``births``
         Number of births on ``date`` (integer)

      ``wday``
         Day of week (ordered factor)

      ``year``
         Year (integer)

      ``month``
         Month (integer)

      ``day_of_year``
         Day of year (integer)

      ``day_of_month``
         Day of month (integer)

      ``day_of_week``
         Day of week (integer)

      .. rubric:: Details
         :name: details

      There are some overlapping dates in the various data sets, but the
      number of births does **not** always agree due to the different
      sources of the data. See the examples.

      .. rubric:: Source
         :name: source

      -  Data source for ``Births``: National Vital Statistics System
         natality data, as provided by Google BigQuery and exported to
         csv by Robert Kern
         https://www.mechanicalkern.com:443/static/birthdates-1968-1988.csv.

      -  Data source for ``BirthsSSA`` US Social Security
         Administration, as curated at
         https://github.com/fivethirtyeight/data/tree/master/births

      -  Data source for ``BirthsCDC`` US Centers for Disease Control,
         as curated at
         https://github.com/fivethirtyeight/data/tree/master/births

      -  Data source for ``Births2015``: Obtained from the National
         Center for Health Statistics, National Vital Statistics System,
         Natality, 2015 data.

      .. rubric:: See Also
         :name: see-also

      ``Birthdays`` for a data set aggregated at the state level.

      .. rubric:: Examples
         :name: examples

      ::

         data(Births78)
         data(Births2015)
         data(Births)
         data(BirthsSSA)
         data(BirthsCDC)
         # date ranges for the different data sets
         lapply(
           list(Births = Births, Births78 = Births78, Biths2015 = Births2015, BirthsSSA = BirthsSSA,
                BirthsCDC = BirthsCDC),
                function(x) range(x$date))
         range(Births78$date)
         range(Births2015$date)
         range(Births$date)
         range(BirthsSSA$date)
         range(BirthsCDC$date)

         # Births and Births78 have slightly different numbers of births

         if(require(ggplot2)) {
           ggplot(data = Births, aes(x = date, y = births, colour = ~ wday)) +
             stat_smooth(se = FALSE, alpha = 0.8, geom = "line")
           ggplot(data = Births, aes(x = day_of_year, y = births, colour = ~ wday)) +
             geom_point(size = 0.4, alpha = 0.5) +
             stat_smooth(se = FALSE, geom = "line", alpha = 0.6, size = 1.5)
           if (require(dplyr)) {
             ggplot(
              data =  bind_cols(Births |> filter(year == 1978),
                                Births78 |> rename(births78 = births)),
              aes(x = births - births78)
              ) +
              geom_histogram(binwidth = 1)
           }
         }

         if(require(ggplot2)) {
           ggplot(data = Births, aes(x = date, y = births, colour = ~ wday)) +
             stat_smooth(se = FALSE, alpha = 0.8, geom = "line")
           ggplot(data = Births, aes(x = day_of_year, y = births, colour = ~ wday)) +
             geom_point(size = 0.4, alpha = 0.5) +
             stat_smooth(se = FALSE, geom = "line", alpha = 0.6, size = 1.5)
           if (require(dplyr)) {
             ggplot(
              data =  bind_cols(Births |> filter(year == 1978),
                                Births78 |> rename(births78 = births)),
              aes(x = births - births78)
              ) +
              geom_histogram(binwidth = 1)

             # SSA records more births than CDC
             ggplot(
              data =  bind_cols(BirthsSSA |> filter(year <= 2003) |> rename(SSA = births),
                                BirthsCDC |> filter(year >= 2000) |> rename(CDC = births)),
              aes(x = SSA - CDC)
              ) +
              geom_histogram(binwidth = 10)
           }
         }

