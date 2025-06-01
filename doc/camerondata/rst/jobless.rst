.. container::

   .. container::

      ======= ===============
      jobless R Documentation
      ======= ===============

      .. rubric:: Unemployment duration
         :name: unemployment-duration

      .. rubric:: Description
         :name: description

      Data from the January Current Population Survey's Displaced
      Workers Supplements (DWS) for the years 1986, 1988, 1990, and
      1992. Only individuals between 20 and 61 years old who were
      displaced from nonagricultural jobs due to plant closure, slack
      work, or abolished positions are included in the sample (McCall,
      1996). Cameron and Trivedi (2005).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         jobless

      .. rubric:: Format
         :name: format

      A data frame with 3343 observations and 43 variables:

      spell
         length of spell (joblessness duration) in number of two-week
         intervals

      censor1
         = 1 if re-employed at full-time job

      censor2
         = 1 if re-employed at part-time job

      censor3
         = 1 if re-employed but left job: pt–ft status unknown

      censor4
         = 1 if still jobless

      ui
         = 1 if filed unemployment insurance claim

      reprate
         eligible replacement rate, weekly benefit amount divided by
         weekly earnings in the lost job,

      logwage
         log weekly earnings in lost job, 1985 prices

      tenure
         years tenure in lost job

      disrate
         eligible disregard rate

      slack
         = 1 if lost job due to slack work

      abolpos
         = 1 if lost job due to abolished position

      explose
         = 1 if expected to lose job

      stateur
         state unemployment rate, percent

      houshead
         = 1 if household head

      married
         = 1 if married

      female
         = 1 if female

      child
         = 1 if has children

      ychild
         = 1 if has children five age and under

      nonwhite
         = 1 if nonwhite

      age
         age

      schlt12
         = 1 if less than 12 years schooling

      schgt12
         = 1 if more than 12 years schooling

      smsa
         = 1 if resides in SMSA (standard metropolitan statistical area)

      bluecoll
         = 1 if los job blue collar

      mining
         = 1 if lost job in mining

      constr
         = 1 if lost job in construction

      transp
         = 1 if lost job in transportation

      trade
         = 1 if lost job in trade

      fire
         = 1 if lost job in finance, insurance and real estate sector

      services
         = 1 if lost job in services sector

      pubadmin
         = 1 if lost job in the public administration

      year85
         = 1 if year of job loss is 1985

      year87
         = 1 if year of job loss is 1987

      year89
         = 1 if year of job loss is 1989

      midatl
         = 1 if residence in Middle Atlantic

      encen
         = 1 if residence in East North Central

      wncen
         = 1 if residence in West North Central

      southatl
         = 1 if residence in South Atlantic

      escen
         = 1 if residence in East South Central

      wscen
         = 1 if residence in West South Central

      mountain
         = 1 if residence in Mountain region

      pacific
         = 1 if residence in Pacific region

      .. rubric:: Section in Text
         :name: section-in-text

      17.11 Duration Example: Unemployment Duration, pp. 603-8, 632-6,
      658-62

      .. rubric:: Source
         :name: source

      http://cameron.econ.ucdavis.edu/mmabook/mmadata.html

      .. rubric:: References
         :name: references

      Cameron, A. and Trivedi, P. (2005), "Microeconometrics: Methods
      and Applications," Cambridge University Press, New York.

      McCall, B. (1996), Unemployment Insurance Rules, Joblessness, and
      Part-time Work," Econometrica, 64, 647-682.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         summary(jobless)
