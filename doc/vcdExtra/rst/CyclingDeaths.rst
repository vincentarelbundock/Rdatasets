.. container::

   ============= ===============
   CyclingDeaths R Documentation
   ============= ===============

   .. rubric:: London Cycling Deaths
      :name: CyclingDeaths

   .. rubric:: Description
      :name: description

   A data frame containing the number of deaths of cyclists in London
   from 2005 through 2012 in each fortnightly period. Aberdein &
   Spiegelhalter (2013) discuss these data in relation to the
   observation that six cyclists died in London between Nov. 5 and Nov.
   13, 2013.

   .. rubric:: Usage
      :name: usage

   ::

      data(CyclingDeaths)

   .. rubric:: Format
      :name: format

   A data frame with 208 observations on the following 2 variables.

   ``date``
      a Date

   ``deaths``
      number of deaths, a numeric vector

   .. rubric:: Source
      :name: source

   https://www.data.gov.uk/dataset/cb7ae6f0-4be6-4935-9277-47e5ce24a11f/road-safety-data,
   STATS 19 data, 2005-2012, using the files ``Casualty0512.csv`` and
   ``Accidents0512.csv``

   .. rubric:: References
      :name: references

   Aberdein, Jody and Spiegelhalter, David (2013). Have London's roads
   become more dangerous for cyclists? *Significance*, 10(6), 46–48.

   .. rubric:: Examples
      :name: examples

   ::

      data(CyclingDeaths)

      plot(deaths ~ date, data=CyclingDeaths, 
        type="h", 
          lwd=3, 
          ylab="Number of deaths", 
          axes=FALSE)
      axis(1, at=seq(as.Date('2005-01-01'), 
                     by='years', 
                     length.out=9), 
           labels=2005:2013)
      axis(2, at=0:3)

      # make a one-way frequency table
      CyclingDeaths.tab <- table(CyclingDeaths$deaths)

      gf <- goodfit(CyclingDeaths.tab)
      gf
      summary(gf)

      rootogram(gf, xlab="Number of Deaths")
      distplot(CyclingDeaths.tab)

      # prob of 6 or more deaths in one fortnight
      lambda <- gf$par$lambda
      ppois(5, lambda, lower.tail=FALSE)
