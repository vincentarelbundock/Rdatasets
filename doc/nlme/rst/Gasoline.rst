.. container::

   .. container::

      ======== ===============
      Gasoline R Documentation
      ======== ===============

      .. rubric:: Refinery yield of gasoline
         :name: refinery-yield-of-gasoline

      .. rubric:: Description
         :name: description

      The ``Gasoline`` data frame has 32 rows and 6 columns.

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      yield
         a numeric vector giving the percentage of crude oil converted
         to gasoline after distillation and fractionation

      endpoint
         a numeric vector giving the temperature (degrees F) at which
         all the gasoline is vaporized

      Sample
         an ordered factor giving the inferred crude oil sample number

      API
         a numeric vector giving the crude oil gravity (degrees API)

      vapor
         a numeric vector giving the vapor pressure of the crude oil
         ``(\mathrm{lbf}/\mathrm{in}^2)``

      ASTM
         a numeric vector giving the crude oil 10% point ASTM—the
         temperature at which 10% of the crude oil has become vapor.

      .. rubric:: Details
         :name: details

      Prater (1955) provides data on crude oil properties and gasoline
      yields. Atkinson (1985) uses these data to illustrate the use of
      diagnostics in multiple regression analysis. Three of the
      covariates—``API``, ``vapor``, and ``ASTM``—measure
      characteristics of the crude oil used to produce the gasoline. The
      other covariate — ``endpoint``—is a characteristic of the refining
      process. Daniel and Wood (1980) notice that the covariates
      characterizing the crude oil occur in only ten distinct groups and
      conclude that the data represent responses measured on ten
      different crude oil samples.

      .. rubric:: Source
         :name: source

      Prater, N. H. (1955), Estimate gasoline yields from crudes,
      *Petroleum Refiner*, **35** (5).

      Atkinson, A. C. (1985), *Plots, Transformations, and Regression*,
      Oxford Press, New York.

      Daniel, C. and Wood, F. S. (1980), *Fitting Equations to Data*,
      Wiley, New York

      Venables, W. N. and Ripley, B. D. (2002) *Modern Applied
      Statistics with S (4th ed)*, Springer, New York.
