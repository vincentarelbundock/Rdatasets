============== ===============
candy_rankings R Documentation
============== ===============

Candy Power Ranking
-------------------

Description
~~~~~~~~~~~

The raw data behind the story "The Ultimate Halloween Candy Power
Ranking"
https://fivethirtyeight.com/features/the-ultimate-halloween-candy-power-ranking/.

Usage
~~~~~

.. code:: R

   candy_rankings

Format
~~~~~~

A data frame with 85 rows representing Halloween candy and 13 variables:

competitorname
   The name of the Halloween candy.

chocolate
   Does it contain chocolate?

fruity
   Is it fruit flavored?

caramel
   Is there caramel in the candy?

peanutyalmondy
   Does it contain peanuts, peanut butter or almonds?

nougat
   Does it contain nougat?

crispedricewafer
   Does it contain crisped rice, wafers, or a cookie component?

hard
   Is it a hard candy?

bar
   Is it a candy bar?

pluribus
   Is it one of many candies in a bag or box?

sugarpercent
   The percentile of sugar it falls under within the data set.

pricepercent
   The unit price percentile compared to the rest of the set.

winpercent
   The overall win percentage according to 269,000 matchups.

Source
~~~~~~

See
https://github.com/fivethirtyeight/data/tree/master/candy-power-ranking

Examples
~~~~~~~~

.. code:: R

   # To convert data frame to tidy data (long) format, run:
   library(dplyr)
   library(tidyr)
   library(stringr)
   candy_rankings_tidy <- candy_rankings %>%
     pivot_longer(-c(competitorname, sugarpercent, pricepercent, winpercent), 
        names_to = "characteristics", values_to = "present") %>%
     mutate(present = as.logical(present)) %>%
     arrange(competitorname)
