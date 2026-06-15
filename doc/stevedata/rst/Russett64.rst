========= ===============
Russett64 R Documentation
========= ===============

Inequality and Instability: The Relation of Land Tenure to Politics (Russett, 1964)
-----------------------------------------------------------------------------------

Description
~~~~~~~~~~~

A data set on inequality and political instability, to replicate an
analysis from Russett (1964).

Usage
~~~~~

.. code:: R

   Russett64

Format
~~~~~~

A data frame with 47 observations on the following 10 variables.

``country``
   a character vector for the country

``demcat``
   a character vector for the type of political system, either "Stable
   Democracies", "Unstable Democracies", or "Dictatorships"

``gini``
   a numeric vector for the GINI coefficient

``perc_farmsh``
   a numeric vector for the percent of farms with half the land

``perc_farmsr``
   a numeric vector for the percent of farms that are rented

``pi``
   a numeric vector for personnel instability

``eiw``
   a numeric vector for Eckstein's internal war measure

``deaths``
   a numeric vector for deaths from civil group violence per one million

``gnppc``
   a numeric vector for gross national product per capita

``perc_lfa``
   a numeric vector for the percent of the labor force in agriculture

Details
~~~~~~~

The data are scraped from Table 1 and Table 3 of his article, to the
best of my ability. I was initially hoping this could be a problem for
ChatGPT and its OCR functionality. However, ChatGPT made an absolute
mess of Table 1. The bulk of this is hand-coded. The data, as of right
now, can effectively reproduce what Russett (1964) reports in his
analyses, but it is not identical.

You should read the article to see the assorted citations and data
caveats that Russett (1964) reports. Those are ultimately
suppressed/ignored here.

References
~~~~~~~~~~

Russett, Bruce M. "Inequality and Instability: The Relation of Land
Tenure to Politics." *World Politics* 16(3): 442–54
