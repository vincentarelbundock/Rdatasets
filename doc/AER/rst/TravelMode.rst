.. container::

   ========== ===============
   TravelMode R Documentation
   ========== ===============

   .. rubric:: Travel Mode Choice Data
      :name: travel-mode-choice-data

   .. rubric:: Description
      :name: description

   Data on travel mode choice for travel between Sydney and Melbourne,
   Australia.

   .. rubric:: Usage
      :name: usage

   ::

      data("TravelMode")

   .. rubric:: Format
      :name: format

   A data frame containing 840 observations on 4 modes for 210
   individuals.

   individual
      Factor indicating individual with levels ``1`` to ``210``.

   mode
      Factor indicating travel mode with levels ``"car"``, ``"air"``,
      ``"train"``, or ``"bus"``.

   choice
      Factor indicating choice with levels ``"no"`` and ``"yes"``.

   wait
      Terminal waiting time, 0 for car.

   vcost
      Vehicle cost component.

   travel
      Travel time in the vehicle.

   gcost
      Generalized cost measure.

   income
      Household income.

   size
      Party size.

   .. rubric:: Source
      :name: source

   Online complements to Greene (2003).

   https://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

   .. rubric:: References
      :name: references

   Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper
   Saddle River, NJ: Prentice Hall.

   .. rubric:: See Also
      :name: see-also

   ``Greene2003``

   .. rubric:: Examples
      :name: examples

   ::

      data("TravelMode", package = "AER")

      ## overall proportions for chosen mode
      with(TravelMode, prop.table(table(mode[choice == "yes"])))

      ## travel vs. waiting time for different travel modes
      library("lattice")
      xyplot(travel ~ wait | mode, data = TravelMode)

      ## Greene (2003), Table 21.11, conditional logit model
      library("mlogit")
      TravelMode$incair <- with(TravelMode, income * (mode == "air"))
      tm_cl <- mlogit(choice ~ gcost + wait + incair, data = TravelMode,
        shape = "long", alt.var = "mode", reflevel = "car")
      summary(tm_cl)
