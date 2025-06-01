.. container::

   .. container::

      =========== ===============
      bird_counts R Documentation
      =========== ===============

      .. rubric:: Bird Counts Data
         :name: bird-counts-data

      .. rubric:: Description
         :name: description

      Bird count data collected between the years 1921 and 2017, in late
      December, by birdwatchers in the Ontario, Canada area. The data
      was made available by the Bird Studies Canada website and
      distributed through the R for Data Science TidyTuesday project.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         bird_counts

      .. rubric:: Format
         :name: format

      A data frame with 18706 rows and 7 variables. Each row represents
      observations for the given bird species in the given year.

      year
         year of data collection

      species
         scientific name of observed bird species

      species_latin
         latin name of observed bird species

      count
         number of birds observed

      hours
         total person-hours of observation period

      count_per_hour
         count divided by hours

      count_per_week
         count_per_hour multiplied by 168 hours per week

      .. rubric:: Source
         :name: source

      https://github.com/rfordatascience/tidytuesday/blob/master/data/2019/2019-06-18/bird_counts.csv/.
