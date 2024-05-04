.. container::

   .. container::

      ======== ===============
      UKSoccer R Documentation
      ======== ===============

      .. rubric:: UK Soccer Scores
         :name: uk-soccer-scores

      .. rubric:: Description
         :name: description

      Data from Lee (1997), on the goals scored by Home and Away teams
      in the Premier Football League, 1995/6 season.

      .. rubric:: Usage
         :name: usage

      ::

         data("UKSoccer")

      .. rubric:: Format
         :name: format

      A 2-dimensional array resulting from cross-tabulating the number
      of goals scored in 380 games. The variables and their levels are
      as follows:

      == ==== ============
      No Name Levels
      1  Home 0, 1, ..., 4
      2  Away 0, 1, ..., 4
      == ==== ============

      .. rubric:: Source
         :name: source

      M. Friendly (2000), Visualizing Categorical Data, page 27.

      .. rubric:: References
         :name: references

      A. J. Lee (1997), Modelling scores in the Premier League: Is
      Manchester United really the best?, *Chance*, **10**\ (1), 15–19.

      M. Friendly (2000), *Visualizing Categorical Data*. SAS Institute,
      Cary, NC.

      .. rubric:: See Also
         :name: see-also

      ``Bundesliga``

      .. rubric:: Examples
         :name: examples

      ::

         data("UKSoccer")
         mosaic(UKSoccer, gp = shading_max, main = "UK Soccer Scores")
