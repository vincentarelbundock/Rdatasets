.. container::

   .. container::

      ===== ===============
      wage1 R Documentation
      ===== ===============

      .. rubric:: Cross-Sectional Data on Wages
         :name: cross-sectional-data-on-wages

      .. rubric:: Description
         :name: description

      Cross-section wage data consisting of a random sample taken from
      the U.S. Current Population Survey for the year 1976. There are
      526 observations in total. ``data("wage1")`` makes available the
      dataset ``"wage"`` plus additional objects ``"bw.all"`` and
      ``"bw.subset"``.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("wage1")

      .. rubric:: Format
         :name: format

      A data frame with 24 columns, and 526 rows.

      Two local-linear ``rbandwidth`` objects (``bw.all`` and
      ``bw.subset``) have been computed for the user's convenience which
      can be used to visualize this dataset using ``plot(bw.all)``

      wage
         column 1, of type ``numeric``, average hourly earnings

      educ
         column 2, of type ``numeric``, years of education

      exper
         column 3, of type ``numeric``, years potential experience

      tenure
         column 4, of type ``numeric``, years with current employer

      nonwhite
         column 5, of type ``factor``, =“Nonwhite” if nonwhite, “White”
         otherwise

      female
         column 6, of type ``factor``, =“Female” if female, “Male”
         otherwise

      married
         column 7, of type ``factor``, =“Married” if Married,
         “Nonmarried” otherwise

      numdep
         column 8, of type ``numeric``, number of dependants

      smsa
         column 9, of type ``numeric``, =1 if live in SMSA

      northcen
         column 10, of type ``numeric``, =1 if live in north central U.S

      south
         column 11, of type ``numeric``, =1 if live in southern region

      west
         column 12, of type ``numeric``, =1 if live in western region

      construc
         column 13, of type ``numeric``, =1 if work in construction
         industry

      ndurman
         column 14, of type ``numeric``, =1 if in non-durable
         manufacturing industry

      trcommpu
         column 15, of type ``numeric``, =1 if in transportation,
         communications, public utility

      trade
         column 16, of type ``numeric``, =1 if in wholesale or retail

      services
         column 17, of type ``numeric``, =1 if in services industry

      profserv
         column 18, of type ``numeric``, =1 if in professional services
         industry

      profocc
         column 19, of type ``numeric``, =1 if in professional
         occupation

      clerocc
         column 20, of type ``numeric``, =1 if in clerical occupation

      servocc
         column 21, of type ``numeric``, =1 if in service occupation

      lwage
         column 22, of type ``numeric``, log(wage)

      expersq
         column 23, of type ``numeric``, exper\ ``^2``

      tenursq
         column 24, of type ``numeric``, tenure\ ``^2``

      .. rubric:: Source
         :name: source

      Jeffrey M. Wooldridge

      .. rubric:: References
         :name: references

      Wooldridge, J.M. (2000), *Introductory Econometrics: A Modern
      Approach*, South-Western College Publishing.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data("wage1")
         attach(wage1)
         summary(wage1)
         detach(wage1)
