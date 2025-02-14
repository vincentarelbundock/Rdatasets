.. container::

   .. container::

      =================== ===============
      partisan_lean_state R Documentation
      =================== ===============

      .. rubric:: FiveThirtyEight's Partisan Lean
         :name: fivethirtyeights-partisan-lean

      .. rubric:: Description
         :name: description

      This directory contains the data for FiveThirtyEight's partisan
      lean, which is used in our [House]
      https://projects.fivethirtyeight.com/2018-midterm-election-forecast/house
      [Senate]
      https://projects.fivethirtyeight.com/2018-midterm-election-forecast/senate
      and [Governor]
      https://projects.fivethirtyeight.com/2018-midterm-election-forecast/governor/
      forecasts.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         partisan_lean_state

      .. rubric:: Format
         :name: format

      A dataset with 50 rows representing states and 3 variables

      state
         the state

      pvi_party
         the party of the vote

      pvi_amount
         the Cook Partisan Voting Index of the vote

      .. rubric:: Note
         :name: note

      The original dataset only has 2 columns: "state" and "pvi_538". I
      separated the "pvi_538" columns into two. For example, in row 1 of
      the dataset, the original "pvi_538" = "R+27", and I separated it
      into “pvi_party" = "R" and "pvi_amount" = "27".

      .. rubric:: Source
         :name: source

      Partisan lean is the average difference between how a state or
      district votes and how the country votes overall, with 2016
      presidential election results weighted 50 percent, 2012
      presidential election results weighted 25 percent and results from
      elections for the state legislature weighted 25 percent.

      .. rubric:: See Also
         :name: see-also

      ``partisan_lean_district``
