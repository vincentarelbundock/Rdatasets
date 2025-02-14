.. container::

   .. container::

      ========== ===============
      foul_balls R Documentation
      ========== ===============

      .. rubric:: We Watched 906 Foul Balls To Find Out Where The Most
         Dangerous Ones
         :name: we-watched-906-foul-balls-to-find-out-where-the-most-dangerous-ones

      .. rubric:: Description
         :name: description

      The raw data behind the story "We Watched 906 Foul Balls To Find
      Out Where The Most Dangerous Ones"
      https://fivethirtyeight.com/features/we-watched-906-foul-balls-to-find-out-where-the-most-dangerous-ones-land/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         foul_balls

      .. rubric:: Format
         :name: format

      A data frame with 906 rows representing foul balls and 7
      variables:

      matchup
         the two teams that played

      game_date
         date of the most foul heavy day at each stadium

      type_of_hit
         fly, grounder, line drive, popup, batter hits self

      exit_velocity
         recorded velocity of each hit

      predicted_zone
         zone predicted the foul ball would land in gauging angles

      camera_zone
         actual zone the ball landed it confirmed by camera angles

      used_zone
         zone used for analysis

      .. rubric:: Details
         :name: details

      Information on the Zones from the 538 original article: Zones 1, 2
      and 3 are the areas behind home plate and the dugouts. Zones 4 and
      5 make up most of the foul territory outside the baselines up
      until the foul pole. Zones 6 and 7 include the areas beyond the
      foul poles.

      .. rubric:: Source
         :name: source

      Baseball Savant https://baseballsavant.mlb.com/.
