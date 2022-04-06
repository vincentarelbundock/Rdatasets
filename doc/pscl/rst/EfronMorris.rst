.. container::

   =========== ===============
   EfronMorris R Documentation
   =========== ===============

   .. rubric:: Batting Averages for 18 major league baseball players,
      1970
      :name: batting-averages-for-18-major-league-baseball-players-1970

   .. rubric:: Description
      :name: description

   Batting averages for 18 major league baseball players, first 45 at
   bats of the 1970 season.

   .. rubric:: Usage
      :name: usage

   ::

      data(EfronMorris)

   .. rubric:: Format
      :name: format

   ``name``
      character, name of player

   ``team``
      character, team of player, abbreviated

   ``league``
      character, National League or American League

   ``r``
      numeric, hits in 1st 45 at bats

   ``y``
      numeric, ``r``/45, batting average over 1st 45 at bats

   ``n``
      numeric, number of at bats, remainder of 1970 season

   ``p``
      numeric, batting average over remainder of 1970 season

   .. rubric:: Source
      :name: source

   Efron, Bradley and Carl Morris. 1975. Data Analysis Using Stein's
   Estimator and Its Generalizations. *Journal of the American
   Statistical Association*. 70:311-319.

   .. rubric:: Examples
      :name: examples

   ::

      data(EfronMorris)
      attach(EfronMorris)
      plot(p~y,
           xlim=range(p,y),
           ylim=range(p,y),
           xlab="Batting Average, 1st 45 at bats",
           ylab="Batting Average, Remainder of Season")
      abline(0,1)
