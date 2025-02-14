.. container::

   .. container::

      =============== ===============
      riddler_castles R Documentation
      =============== ===============

      .. rubric:: Can You Rule Riddler Nation?
         :name: can-you-rule-riddler-nation

      .. rubric:: Description
         :name: description

      The raw data behind the story "Can You Rule Riddler Nation?"
      https://fivethirtyeight.com/features/can-you-rule-riddler-nation/.
      Analysis of the submitted solutions can be found at:
      https://fivethirtyeight.com/features/can-you-save-the-drowning-swimmer/

      .. rubric:: Usage
         :name: usage

      .. code:: R

         riddler_castles

      .. rubric:: Format
         :name: format

      A data frame with 1387 rows representing submissions and 11
      variables:

      castle1
         Number of troops out of 100 send to castle 1

      castle2
         Number of troops out of 100 send to castle 2

      castle3
         Number of troops out of 100 send to castle 3

      castle4
         Number of troops out of 100 send to castle 4

      castle5
         Number of troops out of 100 send to castle 5

      castle6
         Number of troops out of 100 send to castle 6

      castle7
         Number of troops out of 100 send to castle 7

      castle8
         Number of troops out of 100 send to castle 8

      castle9
         Number of troops out of 100 send to castle 9

      castle10
         Number of troops out of 100 send to castle 10

      reason
         Why did you choose your troop deployment?

      .. rubric:: Source
         :name: source

      See
      https://github.com/fivethirtyeight/data/tree/master/riddler-castles

      .. rubric:: See Also
         :name: see-also

      ``riddler_castles2``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # To convert data frame to tidy data (long) format, run
         library(dplyr)
         library(tidyr)
         library(stringr)
         riddler_castles_tidy<-riddler_castles %>%
            pivot_longer(castle1:castle10, names_to = "castle" , values_to = "soldiers") %>%
            mutate(castle = as.numeric(str_replace(castle, "castle","")))
