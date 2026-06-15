======== ===============
life_exp R Documentation
======== ===============

life_exp
--------

Description
~~~~~~~~~~~

A data frame with 3142 rows and 4 columns. County level data for life
expectancy and median income in the United States.

Usage
~~~~~

.. code:: R

   life_exp

Format
~~~~~~

A data frame with 3142 observations on the following 4 variables.

state
   Name of the state.

county
   Name of the county.

expectancy
   Life expectancy in the county.

income
   Median income in the county, measured in US $.

Examples
~~~~~~~~

.. code:: R


   library(ggplot2)

   # Income V Expectancy
   ggplot(life_exp, aes(x = income, y = expectancy)) +
     geom_point(color = openintro::IMSCOL["green", "full"], alpha = 0.2) +
     theme_minimal() +
     labs(
       title = "Is there a relationship between median income and life expectancy?",
       x = "Median income (US $)",
       y = "Life Expectancy (year)"
     )
