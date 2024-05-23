.. container::

   .. container::

      ========= ===============
      world_pop R Documentation
      ========= ===============

      .. rubric:: World Population Data.
         :name: world-population-data.

      .. rubric:: Description
         :name: description

      From World Bank, population 1960-2020

      .. rubric:: Usage
         :name: usage

      .. code:: R

         world_pop

      .. rubric:: Format
         :name: format

      A data frame with 216 rows and 62 variables.

      country
         Name of country.

      year_1960
         population in 1960.

      year_1961
         population in 1961.

      year_1962
         population in 1962.

      year_1963
         population in 1963.

      year_1964
         population in 1964.

      year_1965
         population in 1965.

      year_1966
         population in 1966.

      year_1967
         population in 1967.

      year_1968
         population in 1968.

      year_1969
         population in 1969.

      year_1970
         population in 1970.

      year_1971
         population in 1971.

      year_1972
         population in 1972.

      year_1973
         population in 1973.

      year_1974
         population in 1974.

      year_1975
         population in 1975.

      year_1976
         population in 1976.

      year_1977
         population in 1977.

      year_1978
         population in 1978.

      year_1979
         population in 1979.

      year_1980
         population in 1980.

      year_1981
         population in 1981.

      year_1982
         population in 1982.

      year_1983
         population in 1983.

      year_1984
         population in 1984.

      year_1985
         population in 1985.

      year_1986
         population in 1986.

      year_1987
         population in 1987.

      year_1988
         population in 1988.

      year_1989
         population in 1989.

      year_1990
         population in 1990.

      year_1991
         population in 1991.

      year_1992
         population in 1992.

      year_1993
         population in 1993.

      year_1994
         population in 1994.

      year_1995
         population in 1995.

      year_1996
         population in 1996.

      year_1997
         population in 1997.

      year_1998
         population in 1998.

      year_1999
         population in 1999.

      year_2000
         population in 2000.

      year_2001
         population in 2001.

      year_2002
         population in 2002.

      year_2003
         population in 2003.

      year_2004
         population in 2004.

      year_2005
         population in 2005.

      year_2006
         population in 2006.

      year_2007
         population in 2007.

      year_2008
         population in 2008.

      year_2009
         population in 2009.

      year_2010
         population in 2010.

      year_2011
         population in 2011.

      year_2012
         population in 2012.

      year_2013
         population in 2013.

      year_2014
         population in 2014.

      year_2015
         population in 2015.

      year_2016
         population in 2016.

      year_2017
         population in 2017.

      year_2018
         population in 2018.

      year_2019
         population in 2019.

      year_2020
         population in 2020.

      .. rubric:: Source
         :name: source

      `World Bank <https://data.worldbank.org/indicator/SP.POP.TOTL>`__

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(dplyr)
         library(ggplot2)
         library(tidyr)

         # List percentage of population change from 1960 to 2020
         world_pop %>%
           mutate(percent_change = round((year_2020 - year_1960) / year_2020 * 100, 2)) %>%
           mutate(rank_pop_change = round(rank(-percent_change)), 0) %>%
           select(rank_pop_change, country, percent_change) %>%
           arrange(rank_pop_change)

         # Graph population in millions by decade for specified countries
         world_pop %>%
           select(
             country, year_1960, year_1970, year_1980, year_1990,
             year_2000, year_2010, year_2020
             ) %>%
           filter(country %in% c("China", "India", "United States")) %>%
           pivot_longer(
             cols = c(year_1960, year_1970, year_1980, year_1990, year_2000, year_2010, year_2020),
             names_to = "year",
             values_to = "population"
           ) %>%
           mutate(year = as.numeric(gsub("year_", "", year))) %>%
           ggplot(aes(year, population, color = country)) +
           geom_point() +
           geom_smooth(method = "loess", formula = "y ~ x") +
           labs(
             title = "Population",
             subtitle = "by Decade",
             x = "Year",
             y = "Population (in millions)",
             color = "Country"
           )
