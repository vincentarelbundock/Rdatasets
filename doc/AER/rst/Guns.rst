.. container::

   ==== ===============
   Guns R Documentation
   ==== ===============

   .. rubric:: More Guns, Less Crime?
      :name: Guns

   .. rubric:: Description
      :name: description

   Guns is a balanced panel of data on 50 US states, plus the District
   of Columbia (for a total of 51 states), by year for 1977–1999.

   .. rubric:: Usage
      :name: usage

   ::

      data("Guns")

   .. rubric:: Format
      :name: format

   A data frame containing 1,173 observations on 13 variables.

   state
      factor indicating state.

   year
      factor indicating year.

   violent
      violent crime rate (incidents per 100,000 members of the
      population).

   murder
      murder rate (incidents per 100,000).

   robbery
      robbery rate (incidents per 100,000).

   prisoners
      incarceration rate in the state in the previous year (sentenced
      prisoners per 100,000 residents; value for the previous year).

   afam
      percent of state population that is African-American, ages 10 to
      64.

   cauc
      percent of state population that is Caucasian, ages 10 to 64.

   male
      percent of state population that is male, ages 10 to 29.

   population
      state population, in millions of people.

   income
      real per capita personal income in the state (US dollars).

   density
      population per square mile of land area, divided by 1,000.

   law
      factor. Does the state have a shall carry law in effect in that
      year?

   .. rubric:: Details
      :name: details

   Each observation is a given state in a given year. There are a total
   of 51 states times 23 years = 1,173 observations.

   .. rubric:: Source
      :name: source

   Online complements to Stock and Watson (2007).

   .. rubric:: References
      :name: references

   Ayres, I., and Donohue, J.J. (2003). Shooting Down the ‘More Guns
   Less Crime’ Hypothesis. *Stanford Law Review*, **55**, 1193–1312.

   Stock, J.H. and Watson, M.W. (2007). *Introduction to Econometrics*,
   2nd ed. Boston: Addison Wesley.

   .. rubric:: See Also
      :name: see-also

   ``StockWatson2007``

   .. rubric:: Examples
      :name: examples

   ::

      ## data
      data("Guns")

      ## visualization
      library("lattice")
      xyplot(log(violent) ~ as.numeric(as.character(year)) | state, data = Guns, type = "l")

      ## Stock & Watson (2007), Empirical Exercise 10.1, pp. 376--377
      fm1 <- lm(log(violent) ~ law, data = Guns)
      coeftest(fm1, vcov = sandwich)

      fm2 <- lm(log(violent) ~ law + prisoners + density + income + 
        population + afam + cauc + male, data = Guns)
      coeftest(fm2, vcov = sandwich)

      fm3 <- lm(log(violent) ~ law + prisoners + density + income + 
        population + afam + cauc + male + state, data = Guns)
      printCoefmat(coeftest(fm3, vcov = sandwich)[1:9,])
                  
      fm4 <- lm(log(violent) ~ law + prisoners + density + income + 
        population + afam + cauc + male + state + year, data = Guns)
      printCoefmat(coeftest(fm4, vcov = sandwich)[1:9,])
