.. container::

   ====================== ===============
   research_funding_rates R Documentation
   ====================== ===============

   .. rubric:: Gender bias in research funding in the Netherlands
      :name: research_funding_rates

   .. rubric:: Description
      :name: description

   Table S1 from paper title "Gender contributes to personal research
   funding success in The Netherlands"

   .. rubric:: Usage
      :name: usage

   ::

      research_funding_rates

   .. rubric:: Format
      :name: format

   An object of class ``"data.frame"``.

   .. rubric:: Details
      :name: details

   -  discipline. Research area discipline.

   -  applications_total. Total applications.

   -  applications_men. Total applications by men.

   -  applications_women. Total applications by women.

   -  awards_total. Total awards.

   -  awards_men. Total awards received by men.

   -  awards_women. Total awards received by women.

   -  success_rates_total. Overall success rate.

   -  success_rates_men. Success rate for men.

   -  success_rates_women. Success rate for women.

   .. rubric:: Source
      :name: source

   van der Lee and Ellemers (2015) PNAS
   https://www.pnas.org/doi/abs/10.1073/pnas.1510159112

   .. rubric:: Examples
      :name: examples

   ::

      research_funding_rates
      # The raw data for this table is available from
      invisible(raw_data_research_funding_rates)
