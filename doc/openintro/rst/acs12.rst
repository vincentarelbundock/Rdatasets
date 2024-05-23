.. container::

   .. container::

      ===== ===============
      acs12 R Documentation
      ===== ===============

      .. rubric:: American Community Survey, 2012
         :name: american-community-survey-2012

      .. rubric:: Description
         :name: description

      Results from the US Census American Community Survey, 2012.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         acs12

      .. rubric:: Format
         :name: format

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
         ``⁠Jan thru Mar⁠``.

      .. rubric:: Source
         :name: source

      https://www.census.gov/programs-surveys/acs

      .. rubric:: Examples
         :name: examples

      .. code:: R

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
