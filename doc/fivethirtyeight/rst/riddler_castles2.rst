.. container::

   .. container::

      ================ ===============
      riddler_castles2 R Documentation
      ================ ===============

      .. rubric:: The Battle For Riddler Nation, Round 2
         :name: the-battle-for-riddler-nation-round-2

      .. rubric:: Description
         :name: description

      The raw data behind the story "The Battle For Riddler Nation,
      Round 2"
      https://fivethirtyeight.com/features/the-battle-for-riddler-nation-round-2/.
      Analysis of the submitted solutions can be found at:
      https://fivethirtyeight.com/features/how-much-should-you-bid-for-that-painting/

      .. rubric:: Usage
         :name: usage

      .. code:: R

         riddler_castles2

      .. rubric:: Format
         :name: format

      A data frame with 932 rows representing submissions and 11
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

      ``riddler_castles``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # To convert data frame to tidy data (long) format, run
         library(dplyr)
         library(tidyr)
         library(stringr)
         riddler_castles_tidy<-riddler_castles2 %>%
            pivot_longer(castle1:castle10, names_to = "castle" , values_to = "soldiers") %>%
            mutate(castle = as.numeric(str_replace(castle, "castle","")))
