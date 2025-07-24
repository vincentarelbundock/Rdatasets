.. container::

   .. container::

      ===== ===============
      Parks R Documentation
      ===== ===============

      .. rubric:: Parks table
         :name: parks-table

      .. rubric:: Description
         :name: description

      Name and location data for baseball stadiums.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Parks)

      .. rubric:: Format
         :name: format

      A data frame with 260 observations on the following 6 variables.

      ``park.key``
         unique identifier for each ballpark

      ``park.name``
         the name of the ballpark

      ``park.alias``
         a semicolon delimited list of other names for the ballpark if
         they exist

      ``city``
         city where the ballpark is located

      ``state``
         state where the ballpark is located

      ``country``
         country where the ballpark is located

      .. rubric:: Details
         :name: details

      This dataset apparently includes all ballparks that were ever used
      in baseball. There is no indication of the years they were used,
      nor the teams that played there.

      The ballparks can be associated with teams through the ``park``
      variable in the ``Teams`` table.

      .. rubric:: Source
         :name: source

      Lahman, S. (2024) Lahman's Baseball Database, 1871-2023, 2023
      version, http://www.seanlahman.com/

      .. rubric:: See Also
         :name: see-also

      ``Teams``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Parks)
         library(dplyr)
         # how many parks in each country?
         table(Parks$country)

         # how many parks in each US state?
         Parks %>% 
           filter(country=="US") %>% 
           count(state, sort=TRUE)

         # ballparks in NYC
         Parks %>% 
           filter(state=="NY") %>% 
           filter(city %in% c("New York", "Brooklyn", "Queens"))

         # ballparks in Canada
         Parks %>% 
           filter(country=="CA") %>% 
           count(state, sort=TRUE)

         # what are the Canadian parks?
         Parks %>% 
           dplyr::filter(country=="CA")
