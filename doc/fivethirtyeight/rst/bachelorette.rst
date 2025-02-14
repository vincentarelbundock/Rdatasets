.. container::

   .. container::

      ============ ===============
      bachelorette R Documentation
      ============ ===============

      .. rubric:: Bachelorette / Bachelor
         :name: bachelorette-bachelor

      .. rubric:: Description
         :name: description

      The raw data behind the stories: "How To Spot A Front-Runner On
      The 'Bachelor' Or 'Bachelorette'"
      https://fivethirtyeight.com/features/the-bachelorette/, "Rachel's
      Season Is Fitting Neatly Into 'Bachelorette' History"
      https://fivethirtyeight.com/features/rachels-season-is-fitting-neatly-into-bachelorette-history/,
      and "Rachel Lindsay's 'Bachelorette' Season, In Three Charts"
      https://fivethirtyeight.com/features/rachel-lindsays-bachelorette-season-in-three-charts/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         bachelorette

      .. rubric:: Format
         :name: format

      A data frame with 887 rows representing the Bachelorette and
      Bachelor contestants and 23 variables:

      show
         Bachelor or Bachelorette.

      season
         Which season?

      contestant
         An identifier for the contestant in a given season.

      elimination_1
         Who was eliminated in week 1.

      elimination_2
         Who was eliminated in week 2.

      elimination_3
         Who was eliminated in week 3.

      elimination_4
         Who was eliminated in week 4.

      elimination_5
         Who was eliminated in week 5.

      elimination_6
         Who was eliminated in week 6.

      elimination_7
         Who was eliminated in week 7.

      elimination_8
         Who was eliminated in week 8.

      elimination_9
         Who was eliminated in week 9.

      elimination_10
         Who was eliminated in week 10.

      dates_1
         Who was on which date in week 1.

      dates_2
         Who was on which date in week 2.

      dates_3
         Who was on which date in week 3.

      dates_4
         Who was on which date in week 4.

      dates_5
         Who was on which date in week 5.

      dates_6
         Who was on which date in week 6.

      dates_7
         Who was on which date in week 7.

      dates_8
         Who was on which date in week 8.

      dates_9
         Who was on which date in week 9.

      dates_10
         Who was on which date in week 10.

      .. rubric:: Details
         :name: details

      Eliminates connote either an elimination (starts with "E") or a
      rose (starts with "R"). Eliminations supersede roses. "E" connotes
      a standard elimination, typically at a rose ceremony. "EQ" means
      the contestant quits. "EF" means the contestant was fired by
      production. "ED" connotes a date elimination. "EU" connotes an
      unscheduled elimination, one that takes place at a time outside of
      a date or rose ceremony. "R" means the contestant received a rose.
      "R1" means the contestant got a first impression rose. "D1" means
      a one-on-one date, "D2" means a 2-on-1, "D3" means a 3-on-1 group
      date, and so on. Weeks of the show are eliminated by rose
      ceremonies, and may not line up exactly with episodes.

      .. rubric:: Source
         :name: source

      https://bachelor-nation.fandom.com/wiki/Bachelor_Nation_Wiki and
      then missing seasons were filled in by ABC and FiveThirtyEight
      staffers.
