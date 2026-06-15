============== ===============
CollegePlaying R Documentation
============== ===============

CollegePlaying table
--------------------

Description
~~~~~~~~~~~

Information on schools players attended, by player

Usage
~~~~~

.. code:: R

   data(CollegePlaying)

Format
~~~~~~

A data frame with 17687 observations on the following 3 variables.

``playerID``
   Player ID code

``schoolID``
   school ID code

``yearID``
   Year player attended school

Details
~~~~~~~

This data set reflects a change in the Lahman schema for the 2015
version. The old ``SchoolsPlayers`` table was replaced with this new
table called ``CollegePlaying``.

According to the documentation, this change reflects advances in the
compilation of this data, largely led by Ted Turocy. The old table
reported college attendance for major league players by listing a start
date and end date. The new version has a separate record for each year
that a player attended. This allows us to better account for players who
attended multiple colleges or skipped a season, as well as to identify
teammates.

Source
~~~~~~

Lahman, S. (2026) Lahman's Baseball Database, 1871-2025, 2026 version,
https://sabr.org/lahman-database/

Examples
~~~~~~~~

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
