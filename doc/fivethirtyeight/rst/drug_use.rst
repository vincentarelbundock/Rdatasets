.. container::

   .. container::

      ======== ===============
      drug_use R Documentation
      ======== ===============

      .. rubric:: How Baby Boomers Get High
         :name: how-baby-boomers-get-high

      .. rubric:: Description
         :name: description

      The raw data behind the story "How Baby Boomers Get High"
      https://fivethirtyeight.com/features/how-baby-boomers-get-high/.
      It covers usage of 13 drugs in the past 12 months across 17 age
      groups.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         drug_use

      .. rubric:: Format
         :name: format

      A data frame with 17 rows representing age groups and 28
      variables:

      age
         Age group

      n
         Number of people surveyed

      alcohol_use
         Percentage who used alcohol

      alcohol_freq
         Median number of times a user used alcohol

      marijuana_use
         Percentage who used marijuana

      marijuana_freq
         Median number of times a user used marijuana

      cocaine_use
         Percentage who used cocaine

      cocaine_freq
         Median number of times a user used cocaine

      crack_use
         Percentage who used crack

      crack_freq
         Median number of times a user used crack

      heroin_use
         Percentage who used heroin

      heroin_freq
         Median number of times a user used heroin

      hallucinogen_use
         Percentage who used hallucinogens

      hallucinogen_freq
         Median number of times a user used hallucinogens

      inhalant_use
         Percentage who used inhalants

      inhalant_freq
         Median number of times a user used inhalants

      pain_releiver_use
         Percentage who used pain relievers

      pain_releiver_freq
         Median number of times a user used pain relievers

      oxycontin_use
         Percentage who used oxycontin

      oxycontin_freq
         Median number of times a user used oxycontin

      tranquilizer_use
         Percentage who used tranquilizer

      tranquilizer_freq
         Median number of times a user used tranquilizer

      stimulant_use
         Percentage who used stimulants

      stimulant_freq
         Median number of times a user used stimulants

      meth_use
         Percentage who used meth

      meth_freq
         Median number of times a user used meth

      sedative_use
         Percentage who used sedatives

      sedative_freq
         Median number of times a user used sedatives

      .. rubric:: Source
         :name: source

      National Survey on Drug Use and Health from the Substance Abuse
      and Mental Health Data Archive
      https://www.icpsr.umich.edu/icpsrweb/content/SAMHDA/index.html.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # To convert data frame to tidy data (long) format, run:
         library(dplyr)
         library(tidyr)
         library(stringr)
         use <- drug_use %>%
           select(age, n, ends_with("_use")) %>%
           pivot_longer(-c(age, n), names_to = "drug", values_to = "use") %>%
           mutate(drug = str_sub(drug, start=1, end=-5))
         freq <- drug_use %>%
           select(age, n, ends_with("_freq")) %>%
           pivot_longer(-c(age, n), names_to = "drug", values_to = "freq") %>%
           mutate(drug = str_sub(drug, start=1, end=-6))
         drug_use_tidy <- left_join(x=use, y=freq, by = c("age", "n", "drug")) %>%
           arrange(age)
