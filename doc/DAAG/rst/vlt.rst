.. container::

   .. container::

      === ===============
      vlt R Documentation
      === ===============

      .. rubric:: Video Lottery Terminal Data
         :name: video-lottery-terminal-data

      .. rubric:: Description
         :name: description

      Data on objects appearing in three windows on a video lottery
      terminal, together with the prize payout (usually 0). Observations
      were taken on two successive days in late 1994 at a hotel lounge
      north of Winnipeg, Manitoba. Each observation cost 25 cents
      (Canadian). The game played was ‘Double Diamond’.

      .. rubric:: Usage
         :name: usage

      ::

         vlt

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      window1
         object appearing in the first window.

      window2
         object appearing in the second window.

      window3
         object appearing in the third window.

      prize
         cash prize awarded (in Canadian dollars).

      night
         1, if observation was taken on day 1; 2, if observation was
         taken on day 2.

      .. rubric:: Details
         :name: details

      At each play, each of three windows shows one of 7 possible
      objects. Apparently, the three windows are independent of each
      other, and the objects should appear with equal probability across
      the three windows. The objects are coded as follows: blank (0),
      single bar (1), double bar (2), triple bar (3), double diamond
      (5), cherries (6), and the numeral "7" (7).

      Prizes (in quarters) are awarded according to the following
      scheme: 800 (5-5-5), 80 (7-7-7), 40 (3-3-3), 25 (2-2-2), 10
      (1-1-1), 10 (6-6-6), 5 (2 "6"'s), 2 (1 "6") and 5 (any combination
      of "1", "2" and "3"). In addition, a "5" doubles any winning
      combination, e.g. (5-3-3) pays 80 and (5-3-5) pays 160.

      .. rubric:: Source
         :name: source

      Braun, W. J. (1995) An illustration of bootstrapping using video
      lottery terminal data. Journal of Statistics Education
      http://www.amstat.org/publications/jse/v3n2/datasets.braun.html

      .. rubric:: Examples
         :name: examples

      ::

              vlt.stk <- stack(vlt[,1:3])
              table(vlt.stk)
