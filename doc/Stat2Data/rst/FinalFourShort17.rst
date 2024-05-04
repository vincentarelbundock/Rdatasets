.. container::

   .. container::

      ================ ===============
      FinalFourShort17 R Documentation
      ================ ===============

      .. rubric:: NCAA Final Four by Seed (Short Version through 2017)
         :name: ncaa-final-four-by-seed-short-version-through-2017

      .. rubric:: Description
         :name: description

      NCAA Final Four participation summarized each year by seed

      .. rubric:: Format
         :name: format

      A data frame with 624 observations on the following 4 variables.

      ``Year``
         Year 1979 to 2017

      ``Seed``
         Seed in NCAA men's basketball tournament: 1 to 16

      ``In``
         Number of teams at that seed who made the Final Four that year

      ``Out``
         Number of teams at that seed who did not made the Final Four
         that year

      .. rubric:: Details
         :name: details

      Each year 64 college teams are selected for the NCAA Division I
      Men's Basketball tournament, with 16 teams placed in each of four
      regions. Within each region the teams are seeded from 1 to 16,
      with the (presumed) best team as the 1 seed and the (presumed)
      weakest team as the 16 seed; this practice of seeding teams began
      in 1979 for the NCAA tournament. Only one team from each region
      (so four teams each year) advances to the Final Four. This dataset
      is similar to FinalFourLong2017, except that each row combines the
      count of the results (make/don't make the Final Four) for each
      seed, so that In+Out= 4 for each row. This dataset is an extention
      of FinalFourShort (that went though 2010).

      .. rubric:: Source
         :name: source

      | Final Four teams and their seed can be found at
      | http://www.championshiphistory.com/ncaahoops.php
