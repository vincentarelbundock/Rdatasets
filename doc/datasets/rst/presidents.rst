.. container::

   .. container::

      ========== ===============
      presidents R Documentation
      ========== ===============

      .. rubric:: Quarterly Approval Ratings of US Presidents
         :name: quarterly-approval-ratings-of-us-presidents

      .. rubric:: Description
         :name: description

      The (approximately) quarterly approval rating for the President of
      the United States from the first quarter of 1945 to the last
      quarter of 1974.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         presidents

      .. rubric:: Format
         :name: format

      A time series of 120 values.

      .. rubric:: Details
         :name: details

      The data are actually a fudged version of the approval ratings.
      See McNeil's book for details.

      .. rubric:: Source
         :name: source

      The Gallup Organisation.

      .. rubric:: References
         :name: references

      McNeil, D. R. (1977) *Interactive Data Analysis*. New York: Wiley.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         require(stats); require(graphics)
         plot(presidents, las = 1, ylab = "Approval rating (%)",
              main = "presidents data")
