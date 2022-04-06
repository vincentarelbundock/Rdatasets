.. container::

   ====================== ===============
   simpsons_paradox_covid R Documentation
   ====================== ===============

   .. rubric:: Simpson's Paradox: Covid
      :name: simpsons-paradox-covid

   .. rubric:: Description
      :name: description

   A dataset on Delta Variant Covid-19 cases in the UK. This dataset
   gives a great example of Simpson's Paradox. When aggregating results
   without regard to age group, the death rate for vaccinated
   individuals is higher – but they have a much higher risk population.
   Once we look at populations with more comparable risks (breakout age
   groups), we see that the vaccinated group tends to be lower risk in
   each risk-bucketed group and that many of the higher risk patients
   had gotten vaccinated. The dataset was brought to OpenIntro's
   attention by Matthew T. Brenneman of Embry-Riddle Aeronautical
   University. Note: some totals in the original source differ as there
   were some cases that did not have ages associated with them.

   .. rubric:: Usage
      :name: usage

   ::

      simpsons_paradox_covid

   .. rubric:: Format
      :name: format

   A data frame with 286,166 rows and 3 variables:

   age_group
      Age of the person. Levels: ``under 50``, ``50 +``.

   vaccine_status
      Vaccination status of the person. Note: the vaccinated group
      includes those who were only partially vaccinated. Levels:
      ``vaccinated``, ``unvaccinated``

   outcome
      Did the person die from the Delta variant? Levels: ``death`` and
      ``survived``.

   .. rubric:: Source
      :name: source

   `Public Health England: Technical briefing
   20 <https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/1009243/Technical_Briefing_20.pdf>`__

   .. rubric:: Examples
      :name: examples

   ::

      library(dplyr)
      library(scales)
      # Calculate the mortality rate for all cases by vaccination status
      simpsons_paradox_covid %>%
       group_by(vaccine_status, outcome) %>%
       summarize(count = n()) %>%
       ungroup() %>%
       group_by(vaccine_status) %>%
       mutate(total = sum(count)) %>%
       filter(outcome == "death") %>%
       select(c(vaccine_status, count, total)) %>%
       mutate(mortality_rate = label_percent(accuracy = 0.01)(round(count / total, 4))) %>%
       select(-c(count, total))

      # Calculate mortality rate by age group and vaccination status
      simpsons_paradox_covid %>%
       group_by(age_group, vaccine_status, outcome) %>%
       summarize(count = n()) %>%
       ungroup() %>%
       group_by(age_group, vaccine_status) %>%
       mutate(total = sum(count)) %>%
       filter(outcome == "death") %>%
       select(c(age_group, vaccine_status, count, total)) %>%
       mutate(mortality_rate = label_percent(accuracy = 0.01)(round(count / total, 4))) %>%
       select(-c(count, total))
