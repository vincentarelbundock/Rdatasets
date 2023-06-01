.. container::

   ======= ===============
   codling R Documentation
   ======= ===============

   .. rubric:: Dose-mortality data, for fumigation of codling moth with
      methyl bromide
      :name: codling

   .. rubric:: Description
      :name: description

   Data are from trials that studied the mortality response of codling
   moth to fumigation with methyl bromide.

   .. rubric:: Usage
      :name: usage

   ::

      data(codling)

   .. rubric:: Format
      :name: format

   A data frame with 99 observations on the following 10 variables.

   dose
      Injected dose of methyl bromide, in gm per cubic meter

   tot
      Number of insects in chamber

   dead
      Number of insects dying

   pobs
      Proportion dying

   cm
      Control mortality, i.e., at dose 0

   ct
      Concentration-time sum

   Cultivar
      a factor with levels ``BRAEBURN`` ``FUJI`` ``GRANNY`` ``Gala``
      ``ROYAL`` ``Red Delicious`` ``Splendour``

   gp
      a factor which has a different level for each different
      combination of ``Cultivar``, ``year`` and ``rep`` (replicate).

   year
      a factor with levels ``1988`` ``1989``

   numcm
      a numeric vector: total number of control insects

   .. rubric:: Details
      :name: details

   The research that generated these data was in part funded by New
   Zealand pipfruit growers. The published analysis was funded by New
   Zealand pipfruit growers. See also ``sorption``.

   .. rubric:: Source
      :name: source

   Maindonald, J.H.; Waddell, B.C.; Petry, R.J. 2001. Apple cultivar
   effects on codling moth (Lepidoptera: Tortricidae) egg mortality
   following fumigation with methyl bromide. Postharvest Biology and
   Technology 22: 99-110.
