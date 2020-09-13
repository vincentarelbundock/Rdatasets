=========== ===============
SportsCards R Documentation
=========== ===============

Endowment Effect for Sports Cards
---------------------------------

Description
~~~~~~~~~~~

Trading sports cards: Does ownership increase the value of goods to
consumers?

Usage
~~~~~

::

   data("SportsCards")

Format
~~~~~~

A data frame containing 148 observations on 9 variables.

good
   factor. Was the individual given good A or B (see below)?

dealer
   factor. Was the individual a dealer?

permonth
   number of trades per month reported by the individual.

years
   number of years that the individual has been trading.

income
   factor indicating income group (in 1000 USD).

gender
   factor indicating gender.

education
   factor indicating highest level of education (8th grade or less, high
   school, 2-year college, other post-high school, 4-year college or
   graduate school).

age
   age in years.

trade
   factor. Did the individual trade the good he was given for the other
   good?

Details
~~~~~~~

``SportsCards`` contains data from 148 randomly selected traders who
attended a trading card show in Orlando, Florida, in 1998. Traders were
randomly given one of two sports collectables, say good A or good B,
that had approximately equal market value. Those receiving good A were
then given the option of trading good A for good B with the
experimenter; those receiving good B were given the option of trading
good B for good A with the experimenter. Good A was a ticket stub from
the game that Cal Ripken Jr. set the record for consecutive games
played, and Good B was a souvenir from the game that Nolan Ryan won his
300th game.

Source
~~~~~~

Online complements to Stock and Watson (2007).

References
~~~~~~~~~~

List, J.A. (2003). Does Market Experience Eliminate Market Anomalies?
*Quarterly Journal of Economcis*, **118**, 41–71.

Stock, J.H. and Watson, M.W. (2007). *Introduction to Econometrics*, 2nd
ed. Boston: Addison Wesley.

See Also
~~~~~~~~

``StockWatson2007``

Examples
~~~~~~~~

::

   data("SportsCards")
   summary(SportsCards)

   plot(trade ~ permonth, data = SportsCards,
     ylevels = 2:1, breaks = c(0, 5, 10, 20, 30, 70))
   plot(trade ~ years, data = SportsCards,
     ylevels = 2:1, breaks = c(0, 5, 10, 20, 60))
