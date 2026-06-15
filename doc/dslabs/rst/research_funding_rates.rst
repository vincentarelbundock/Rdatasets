====================== ===============
research_funding_rates R Documentation
====================== ===============

Gender bias in research funding in the Netherlands
--------------------------------------------------

Description
~~~~~~~~~~~

Table S1 from paper title "Gender contributes to personal research
funding success in The Netherlands"

Usage
~~~~~

.. code:: R

   research_funding_rates

Format
~~~~~~

An object of class ``"data.frame"``.

Details
~~~~~~~

- discipline. Research area discipline.

- applications_total. Total applications.

- applications_men. Total applications by men.

- applications_women. Total applications by women.

- awards_total. Total awards.

- awards_men. Total awards received by men.

- awards_women. Total awards received by women.

- success_rates_total. Overall success rate.

- success_rates_men. Success rate for men.

- success_rates_women. Success rate for women.

References
~~~~~~~~~~

van der Lee R, Ellemers N. Gender contributes to personal research
funding success in The Netherlands. Proc Natl Acad Sci U S A. 2015 Oct
6;112(40):12349-53. doi: 10.1073/pnas.1510159112. Epub 2015 Sep 21.
PMID: 26392544; PMCID: PMC4603485.

Examples
~~~~~~~~

.. code:: R

   research_funding_rates
   # The raw data for this table is available from
   invisible(raw_data_research_funding_rates)
