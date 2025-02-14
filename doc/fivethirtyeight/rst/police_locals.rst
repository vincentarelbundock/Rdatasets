.. container::

   .. container::

      ============= ===============
      police_locals R Documentation
      ============= ===============

      .. rubric:: Most Police Don't Live In The Cities They Serve
         :name: most-police-dont-live-in-the-cities-they-serve

      .. rubric:: Description
         :name: description

      The raw data behind the story "Most Police Don't Live In The
      Cities They Serve"
      https://fivethirtyeight.com/features/most-police-dont-live-in-the-cities-they-serve/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         police_locals

      .. rubric:: Format
         :name: format

      A data frame with 75 rows representing cities and 8 variables:

      city
         U.S. city

      force_size
         Number of police officers serving that city

      all
         Percentage of the total police force that lives in the city

      white
         Percentage of white (non-Hispanic) police officers who live in
         the city

      non_white
         Percentage of non-white police officers who live in the city

      black
         Percentage of black police officers who live in the city

      hispanic
         Percentage of Hispanic police officers who live in the city

      asian
         Percentage of Asian police officers who live in the city

      .. rubric:: Details
         :name: details

      The dataset includes the cities with the 75 largest police forces,
      with the exception of Honolulu for which data is not available.
      All calculations are based on data from the U.S. Census.

      The Census Bureau numbers are potentially going to differ from
      other counts for three reasons:

      #. The census category for police officers also includes sheriffs,
         transit police and others who might not be under the same
         jurisdiction as a city's police department proper. The census
         category won't include private security officers.

      #. The census data is estimated from 2006 to 2010; police forces
         may have changed in size since then.

      #. There is always a margin of error in census numbers; they are
         estimates, not complete counts.

      Note: Missing values means that there are fewer than 100 police
      officers of that race serving that city.

      .. rubric:: Source
         :name: source

      See
      https://github.com/fivethirtyeight/data/tree/master/police-locals

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # To convert data frame to tidy data (long) format, run:
         library(dplyr)
         library(tidyr)
         police_locals_tidy <- police_locals %>%
            pivot_longer(all:asian, names_to = "race", values_to = "perc_in")
