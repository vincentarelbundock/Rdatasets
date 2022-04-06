.. container::

   ============= ===============
   gdp_countries R Documentation
   ============= ===============

   .. rubric:: GDP Countries Data.
      :name: gdp-countries-data.

   .. rubric:: Description
      :name: description

   From World Bank, GDP in current U.S. dollars 1960-2020 by decade

   .. rubric:: Usage
      :name: usage

   ::

      gdp_countries

   .. rubric:: Format
      :name: format

   A data frame with 659 rows and 9 variables.

   country
      Name of country.

   description
      description of data: GDP (in current US$), GDP growth (annual %),
      GDP per capita (in current US$)

   year_1960
      value in 1960

   year_1970
      value in 1970

   year_1980
      value in 1980

   year_1990
      value in 1990

   year_2000
      value in 2000

   year_2010
      value in 2010

   year_2020
      value in 2020

   .. rubric:: Source
      :name: source

   `World Bank <https://databank.worldbank.org/home.aspx>`__

   .. rubric:: Examples
      :name: examples

   ::

      library(dplyr)
      # don't use scientific notation
      options(scipen = 999)
      # List the top 10 countries by GDP (There is a row for World)
      gdp_countries %>% 
        filter(description == 'GDP') %>%
        mutate(year2020 = format(year_2020,big.mark=",")) %>%
        select(country,year2020) %>%  
        arrange(desc(year2020)) %>% 
        top_n(n = 11)

      # List the 10 countries with the biggest GDP per capita change from 1960 to 2020
      gdp_countries %>% 
        filter(description == 'GDP per capita') %>%
        mutate(change = format(round(year_2020-year_1960,0),big.mark=",")) %>%
        select(country,change,year_1960,year_2020) %>%  
        na.omit() %>%
        arrange(desc(change)) %>% 
        top_n(n = 10)  

