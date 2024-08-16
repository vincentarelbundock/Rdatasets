.. container::

   .. container::

      ====== ===============
      orings R Documentation
      ====== ===============

      .. rubric:: 1986 Challenger disaster and O-rings
         :name: challenger-disaster-and-o-rings

      .. rubric:: Description
         :name: description

      On January 28, 1986, a routine launch was anticipated for the
      Challenger space shuttle. Seventy-three seconds into the flight,
      disaster happened: the shuttle broke apart, killing all seven crew
      members on board. An investigation into the cause of the disaster
      focused on a critical seal called an O-ring, and it is believed
      that damage to these O-rings during a shuttle launch may be
      related to the ambient temperature during the launch. The table
      below summarizes observational data on O-rings for 23 shuttle
      missions, where the mission order is based on the temperature at
      the time of the launch.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         orings

      .. rubric:: Format
         :name: format

      A data frame with 23 observations on the following 4 variables.

      mission
         Shuttle mission number.

      temperature
         Temperature, in Fahrenheit.

      damaged
         Number of damaged O-rings (out of 6).

      undamaged
         Number of undamaged O-rings (out of 6).

      .. rubric:: Source
         :name: source

      https://archive.ics.uci.edu/dataset/92/challenger+usa+space+shuttle+o+ring

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(dplyr)
         library(forcats)
         library(tidyr)
         library(broom)

         # This is a wide data frame. You can convert it to a long
         # data frame to predict probability of O-ring damage based
         # on temperature using logistic regression.

         orings_long <- orings |>
           pivot_longer(cols = c(damaged, undamaged), names_to = "outcome", values_to = "n") |>
           uncount(n) |>
           mutate(outcome = fct_relevel(outcome, "undamaged", "damaged"))

         orings_mod <- glm(outcome ~ temperature, data = orings_long, family = "binomial")
         tidy(orings_mod)
