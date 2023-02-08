.. container::

   ====================== ===============
   research_funding_rates R Documentation
   ====================== ===============

   .. rubric:: Gender bias in research funding in the Netherlands
      :name: gender-bias-in-research-funding-in-the-netherlands

   .. rubric:: Description
      :name: description

   Table S1 from paper title "Gender contributes to personal research
   funding success in The Netherlands"

   .. rubric:: Usage
      :name: usage

   ::

      data(research_funding_rates)

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
   https://www.pnas.org/content/112/40/12349.abstract/

   .. rubric:: Examples
      :name: examples

   ::

      data(research_funding_rates)
      research_funding_rates
      # The raw data for this table is available from
      data(raw_data_research_funding_rates)
