.. container::

   === ===============
   CO2 R Documentation
   === ===============

   .. rubric:: Carbon Dioxide Uptake in Grass Plants
      :name: CO2

   .. rubric:: Description
      :name: description

   The ``CO2`` data frame has 84 rows and 5 columns of data from an
   experiment on the cold tolerance of the grass species *Echinochloa
   crus-galli*.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      CO2

   .. rubric:: Format
      :name: format

   An object of class
   ``c("nfnGroupedData", "nfGroupedData", "groupedData", "data.frame")``
   containing the following columns:

   Plant
      an ordered factor with levels ``Qn1`` < ``Qn2`` < ``Qn3`` < ... <
      ``Mc1`` giving a unique identifier for each plant.

   Type
      a factor with levels ``Quebec`` ``Mississippi`` giving the origin
      of the plant

   Treatment
      a factor with levels ``nonchilled`` ``chilled``

   conc
      a numeric vector of ambient carbon dioxide concentrations (mL/L).

   uptake
      a numeric vector of carbon dioxide uptake rates
      (``\mu\mbox{mol}/m^2`` sec).

   .. rubric:: Details
      :name: details

   The ``CO_2`` uptake of six plants from Quebec and six plants from
   Mississippi was measured at several levels of ambient ``CO_2``
   concentration. Half the plants of each type were chilled overnight
   before the experiment was conducted.

   This dataset was originally part of package ``nlme``, and that has
   methods (including for ``[``, ``as.data.frame``, ``plot`` and
   ``print``) for its grouped-data classes.

   .. rubric:: Source
      :name: source

   Potvin, C., Lechowicz, M. J. and Tardif, S. (1990) “The statistical
   analysis of ecophysiological response curves obtained from
   experiments involving repeated measures”, *Ecology*, **71**,
   1389–1400.

   Pinheiro, J. C. and Bates, D. M. (2000) *Mixed-effects Models in S
   and S-PLUS*, Springer.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      require(stats); require(graphics)

      coplot(uptake ~ conc | Plant, data = CO2, show.given = FALSE, type = "b")
      ## fit the data for the first plant
      fm1 <- nls(uptake ~ SSasymp(conc, Asym, lrc, c0),
         data = CO2, subset = Plant == "Qn1")
      summary(fm1)
      ## fit each plant separately
      fmlist <- list()
      for (pp in levels(CO2$Plant)) {
        fmlist[[pp]] <- nls(uptake ~ SSasymp(conc, Asym, lrc, c0),
            data = CO2, subset = Plant == pp)
      }
      ## check the coefficients by plant
      print(sapply(fmlist, coef), digits = 3)
