.. container::

   .. container::

      ============== ===============
      CollegePlaying R Documentation
      ============== ===============

      .. rubric:: CollegePlaying table
         :name: collegeplaying-table

      .. rubric:: Description
         :name: description

      Information on schools players attended, by player

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(CollegePlaying)

      .. rubric:: Format
         :name: format

      A data frame with 17350 observations on the following 3 variables.

      ``playerID``
         Player ID code

      ``schoolID``
         school ID code

      ``yearID``
         Year player attended school

      .. rubric:: Details
         :name: details

      This data set reflects a change in the Lahman schema for the 2015
      version. The old ``SchoolsPlayers`` table was replaced with this
      new table called ``CollegePlaying``.

      According to the documentation, this change reflects advances in
      the compilation of this data, largely led by Ted Turocy. The old
      table reported college attendance for major league players by
      listing a start date and end date. The new version has a separate
      record for each year that a player attended. This allows us to
      better account for players who attended multiple colleges or
      skipped a season, as well as to identify teammates.

      .. rubric:: Source
         :name: source

      Lahman, S. (2025) Lahman's Baseball Database, 1871-2024, 2025
      version, https://sabr.org/lahman-database/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(CollegePlaying)
         head(CollegePlaying)

         ## Q: What are the top universities for producing MLB players?
         SPcount <- table(CollegePlaying$schoolID)
         SPcount[SPcount>50]

         library("lattice")
         dotplot(SPcount[SPcount>50])
         dotplot(sort(SPcount[SPcount>50]))

         ## Q: How many schools are represented in this dataset?
         length(table(CollegePlaying$schoolID))

         # Histogram of the number of players from each school who played in MLB:
         with(CollegePlaying, 
              hist(table(schoolID), xlab = "Number of players",
                                    main = ""))
