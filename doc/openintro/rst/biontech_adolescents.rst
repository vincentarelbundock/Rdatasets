.. container::

   ==================== ===============
   biontech_adolescents R Documentation
   ==================== ===============

   .. rubric:: Efficacy of Pfizer-BioNTech COVID-19 vaccine on
      adolescents
      :name: efficacy-of-pfizer-biontech-covid-19-vaccine-on-adolescents

   .. rubric:: Description
      :name: description

   On March 31, 2021, Pfizer and BioNTech announced that "in a Phase 3
   trial in adolescents 12 to 15 years of age with or without prior
   evidence of SARS-CoV-2 infection, the Pfizer-BioNTech COVID-19
   vaccine BNT162b2 demonstrated 100% efficacy and robust antibody
   responses, exceeding those recorded earlier in vaccinated
   participants aged 16 to 25 years old, and was well tolerated." These
   results are from a Phase 3 trial in 2,260 adolescents 12 to 15 years
   of age in the United States. In the trial, 18 cases of COVID-19 were
   observed in the placebo group (n = 1,129) versus none in the
   vaccinated group (n = 1,131).

   .. rubric:: Usage
      :name: usage

   ::

      biontech_adolescents

   .. rubric:: Format
      :name: format

   A data frame with 2260 observations on the following 2 variables.

   group
      Study group: ``vaccine`` (Pfizer-BioNTech COVID-19 vaccine
      administered) or ``placebo``.

   outcome
      Study outcome: ``COVID-19`` or ``no COVID-19``.

   .. rubric:: Source
      :name: source

   `"Pfizer-Biontech Announce Positive Topline Results Of Pivotal
   Covid-19 Vaccine Study In
   Adolescents" <https://www.pfizer.com/news/press-release/press-release-detail/pfizer-biontech-announce-positive-topline-results-pivotal>`__.
   March 21, 2021. (Retrieved April 25, 2021.)

   .. rubric:: Examples
      :name: examples

   ::


      library(dplyr)
      library(ggplot2)

      biontech_adolescents %>%
        count(group, outcome)

      ggplot(biontech_adolescents, aes(y = group, fill = outcome)) +
        geom_bar()

