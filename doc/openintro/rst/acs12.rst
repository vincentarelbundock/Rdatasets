===== ===============
acs12 R Documentation
===== ===============

American Community Survey, 2012
-------------------------------

Description
~~~~~~~~~~~

Results from the US Census American Community Survey, 2012.

Usage
~~~~~

::

   acs12

Format
~~~~~~

A data frame with 2000 observations on the following 13 variables.

income
   Annual income.

employment
   Employment status.

hrs_work
   Hours worked per week.

race
   Race.

age
   Age, in years.

gender
   Gender.

citizen
   Whether the person is a U.S. citizen.

time_to_work
   Travel time to work, in minutes.

lang
   Language spoken at home.

married
   Whether the person is married.

edu
   Education level.

disability
   Whether the person is disabled.

birth_qrtr
   The quarter of the year that the person was born, e.g.
   ``Jan thru Mar``.

Source
~~~~~~

https://www.census.gov/programs-surveys/acs

Examples
~~~~~~~~

::


   library(dplyr)
   library(ggplot2)
   library(broom)

   # employed only
   acs12_emp <- acs12 %>%
     filter(
       age >= 30, age <= 60,
       employment == "employed",
       income > 0
     )

   # linear model
   ggplot(acs12_emp, mapping = aes(x = age, y = income)) +
     geom_point() +
     geom_smooth(method = "lm")

   lm(income ~ age, data = acs12_emp) %>%
     tidy()

   # log-transormed model
   ggplot(acs12_emp, mapping = aes(x = age, y = log(income))) +
     geom_point() +
     geom_smooth(method = "lm")

   lm(log(income) ~ age, data = acs12_emp) %>%
     tidy()
