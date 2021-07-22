============ ===============
babies_crawl R Documentation
============ ===============

Crawling age
------------

Description
~~~~~~~~~~~

Crawling age of babies along with the average outdoor temperature at 6
months of age.

Usage
~~~~~

::

   babies_crawl

Format
~~~~~~

A data frame with 12 observations on the following 5 variables.

birth_month
   A factor with levels corresponding to months

avg_crawling_age
   a numeric vector

sd
   a numeric vector

n
   a numeric vector

temperature
   a numeric vector

Source
~~~~~~

J.B. Benson. Season of birth and onset of locomotion: Theoretical and
methodological implications. In: Infant behavior and development 16.1
(1993), pp. 69-81. issn: 0163-6383.

Examples
~~~~~~~~

::


   library(ggplot2)

   ggplot(babies_crawl, aes(x = temperature, y = avg_crawling_age)) +
     geom_point() +
     labs(x = "Temperature", y = "Average crawling age")
