.. container::

   ======== ===============
   baseball R Documentation
   ======== ===============

   .. rubric:: Yearly batting records for all major league baseball
      players
      :name: yearly-batting-records-for-all-major-league-baseball-players

   .. rubric:: Description
      :name: description

   This data frame contains batting statistics for a subset of players
   collected from http://www.baseball-databank.org/. There are a total
   of 21,699 records, covering 1,228 players from 1871 to 2007. Only
   players with more 15 seasons of play are included.

   .. rubric:: Usage
      :name: usage

   ::

      baseball

   .. rubric:: Format
      :name: format

   A 21699 x 22 data frame

   .. rubric:: Variables
      :name: variables

   Variables:

   -  id, unique player id

   -  year, year of data

   -  stint

   -  team, team played for

   -  lg, league

   -  g, number of games

   -  ab, number of times at bat

   -  r, number of runs

   -  h, hits, times reached base because of a batted, fair ball without
      error by the defense

   -  X2b, hits on which the batter reached second base safely

   -  X3b, hits on which the batter reached third base safely

   -  hr, number of home runs

   -  rbi, runs batted in

   -  sb, stolen bases

   -  cs, caught stealing

   -  bb, base on balls (walk)

   -  so, strike outs

   -  ibb, intentional base on balls

   -  hbp, hits by pitch

   -  sh, sacrifice hits

   -  sf, sacrifice flies

   -  gidp, ground into double play

   .. rubric:: References
      :name: references

   http://www.baseball-databank.org/

   .. rubric:: Examples
      :name: examples

   ::

      baberuth <- subset(baseball, id == "ruthba01")
      baberuth$cyear <- baberuth$year - min(baberuth$year) + 1

      calculate_cyear <- function(df) {
        mutate(df,
          cyear = year - min(year),
          cpercent = cyear / (max(year) - min(year))
        )
      }

      baseball <- ddply(baseball, .(id), calculate_cyear)
      baseball <- subset(baseball, ab >= 25)

      model <- function(df) {
        lm(rbi / ab ~ cyear, data=df)
      }
      model(baberuth)
      models <- dlply(baseball, .(id), model)
