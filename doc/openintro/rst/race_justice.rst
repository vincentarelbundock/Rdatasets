.. container::

   ============ ===============
   race_justice R Documentation
   ============ ===============

   .. rubric:: Yahoo! News Race and Justice poll results
      :name: race_justice

   .. rubric:: Description
      :name: description

   Results from a Yahoo! News poll conducted by YouGov on May 29-31,
   2020. In total 1060 U.S. adults were asked a series of questions
   regarding race and justice in the wake of the killing of George Floyd
   by a police officer. Results in this data set are percentages for the
   question, "Do you think Blacks and Whites receive equal treatment
   from the police?" For this particular question there were 1059
   respondents.

   .. rubric:: Usage
      :name: usage

   ::

      race_justice

   .. rubric:: Format
      :name: format

   A data frame with 1,059 rows and 2 variables.

   race_eth
      Race/ethnicity of respondent, with levels ``White``, ``Black``,
      ``Hispanic``, and ``Other``.

   response
      Response to the question "Do you think Black and White people
      receive equal treatment from the police?", with levels ``Yes``,
      ``No``, and ``⁠Not sure⁠``.

   .. rubric:: Source
      :name: source

   `Yahoo! News Race and Justice - May 31,
   2020 <https://docs.cdn.yougov.com/s23agrrx47/20200531_yahoo_race_and_justice_crosstabs.pdf>`__.

   .. rubric:: Examples
      :name: examples

   ::

      library(ggplot2)
      library(dplyr)

      # Conditional probabilities of response for each race/ethnicity
      race_justice %>%
        count(race_eth, response) %>%
        group_by(race_eth) %>%
        mutate(prop = n / sum(n))

      # Stacked bar plot of counts
      ggplot(race_justice, aes(x = race_eth, fill = response)) +
        geom_bar() +
        labs(
          x = "Race / ethnicity",
          y = "Count",
          title = "Do you think Black and White people receive
      equal treatment from the police?",
          fill = "Response"
        )

      # Stacked bar plot of proportions
      ggplot(race_justice, aes(x = race_eth, fill = response)) +
        geom_bar(position = "fill") +
        labs(
          x = "Race / ethnicity",
          y = "Proportion",
          title = "Do you think Black and White people receive
      equal treatment from the police?",
          fill = "Response"
        )
