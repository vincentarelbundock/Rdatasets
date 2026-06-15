================= ===============
nfl_fandom_google R Documentation
================= ===============

How Every NFL Team’s Fans Lean Politically
------------------------------------------

Description
~~~~~~~~~~~

The raw data behind the story "How Every NFL Team’s Fans Lean
Politically"
https://fivethirtyeight.com/features/how-every-nfl-teams-fans-lean-politically/:
Google Trends Data.

Usage
~~~~~

.. code:: R

   nfl_fandom_google

Format
~~~~~~

a data frame with 207 rows representing designated market areas and 9
variables:

dma
   Designated Market Area

nfl
   The percentage of search traffic in the media market region related
   to the NFL over the past 5 years

nba
   The percentage of search traffic in the region related to the NBA
   over the past 5 years

mlb
   The percentage of search traffic in the region related to the MLB
   over the past 5 years

nascar
   The percentage of search traffic in the region related to NASCAR over
   the past 5 years

cbb
   The percentage of search traffic in the region related to the CBB
   over the past 5 years

cfb
   The percentage of search traffic in the region related to the CFB
   over the past 5 years

trump_2016_vote
   The percentage of voters in the region who voted for Trump in the
   2016 Presidential Election

Source
~~~~~~

Google Trends https://trends.google.com/trends/.

See Also
~~~~~~~~

``nfl_fandom_surveymonkey``

Examples
~~~~~~~~

.. code:: R

   # To convert data frame to tidy data (long) format, run:
   library(dplyr)
   library(tidyr)
   nfl_fandom_google_tidy <- nfl_fandom_google %>%
     pivot_longer(-c("dma", "trump_2016_vote"), 
       names_to = "sport", values_to = "search_traffic") %>%
     arrange(dma)
