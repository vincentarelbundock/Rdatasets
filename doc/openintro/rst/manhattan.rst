========= ===============
manhattan R Documentation
========= ===============

manhattan
---------

Description
~~~~~~~~~~~

A data frame containing data on apartment rentals in Manhattan.

Usage
~~~~~

.. code:: R

   manhattan

Format
~~~~~~

A data frame with 20 observations on the following 1 variable.

rent
   Monthly rent for a 1 bedroom apartment listed as "For rent by owner".

Examples
~~~~~~~~

.. code:: R


   library(ggplot2)

   ggplot(manhattan, aes(rent)) +
     geom_histogram(color = "white", binwidth = 300) +
     theme_minimal() +
     labs(
       title = "Rent in Manhattan",
       subtitle = "1 Bedroom Apartments",
       x = "Rent (in US$)",
       caption = "Source: Craigslist"
     )
