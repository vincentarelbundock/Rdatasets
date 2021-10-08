.. container::

   ============= ===============
   ShipAccidents R Documentation
   ============= ===============

   .. rubric:: Ship Accidents
      :name: ship-accidents

   .. rubric:: Description
      :name: description

   Data on ship accidents.

   .. rubric:: Usage
      :name: usage

   ::

      data("ShipAccidents")

   .. rubric:: Format
      :name: format

   A data frame containing 40 observations on 5 ship types in 4 vintages
   and 2 service periods.

   type
      factor with levels ``"A"`` to ``"E"`` for the different ship
      types,

   construction
      factor with levels ``"1960-64"``, ``"1965-69"``, ``"1970-74"``,
      ``"1975-79"`` for the periods of construction,

   operation
      factor with levels ``"1960-74"``, ``"1975-79"`` for the periods of
      operation,

   service
      aggregate months of service,

   incidents
      number of damage incidents.

   .. rubric:: Details
      :name: details

   The data are from McCullagh and Nelder (1989, p. 205, Table 6.2) and
   were also used by Greene (2003, Ch. 21), see below.

   There are five ships (observations 7, 15, 23, 31, 39) with an
   operation period *before* the construction period, hence the
   variables ``service`` and ``incidents`` are necessarily 0. An
   additional observation (34) has entries representing *accidentally
   empty cells* (see McCullagh and Nelder, 1989, p. 205).

   It is a bit unclear what exactly the above means. In any case, the
   models are fit only to those observations with ``service > 0``.

   .. rubric:: Source
      :name: source

   Online complements to Greene (2003).

   http://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

   .. rubric:: References
      :name: references

   Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper
   Saddle River, NJ: Prentice Hall.

   McCullagh, P. and Nelder, J.A. (1989). *Generalized Linear Models*,
   2nd edition. London: Chapman \\& Hall.

   .. rubric:: See Also
      :name: see-also

   ``Greene2003``

   .. rubric:: Examples
      :name: examples

   ::

      data("ShipAccidents")
      sa <- subset(ShipAccidents, service > 0)

      ## Greene (2003), Table 21.20
      ## (see also McCullagh and Nelder, 1989, Table 6.3)
      sa_full <- glm(incidents ~ type + construction + operation, family = poisson,
        data = sa, offset = log(service))
      summary(sa_full)

      sa_notype <- glm(incidents ~ construction + operation, family = poisson,
        data = sa, offset = log(service))
      summary(sa_notype)

      sa_noperiod <- glm(incidents ~ type + operation, family = poisson,
        data = sa, offset = log(service))
      summary(sa_noperiod)

      ## model comparison
      anova(sa_full, sa_notype, test = "Chisq")
      anova(sa_full, sa_noperiod, test = "Chisq")

      ## test for overdispersion
      dispersiontest(sa_full)
      dispersiontest(sa_full, trafo = 2)
