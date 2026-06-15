================ ===============
usda.gmoadoption R Documentation
================ ===============

Adoption of genetically modified crops in the United States
-----------------------------------------------------------

Description
~~~~~~~~~~~

Adoption of genetically modified crops in the U.S. from 1996 to 2022.

Usage
~~~~~

.. code:: R

   data("usda.gmoadoption")

Format
~~~~~~

A data frame with 145 observations on the following 3 variables.

``year``
   Year of crop

``crop``
   Crop type

``percent``
   Percent of planted acres

Details
~~~~~~~

HT indicates herbicide-tolerant crops. Bt indicates insect-resistant
(Bacillus thuringiensis) crops. The "percent" column is the percentage
of planted acres for each crop that were genetically modified. HT/Bt for
corn and cotton are not mutually exclusive categories. For example, as
time progressed corn hybrids tended to be both HT and Bt.

Source
~~~~~~

Adoption of Genetically Engineered Crops in the United States - Recent
Trends in GE Adoption USDA Economic Research Service. Accessed
2025-09-30.
https://www.ers.usda.gov/data-products/adoption-of-genetically-engineered-crops-in-the-united-states/recent-trends-in-ge-adoption

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
   data(usda.gmoadoption)
   dat <- usda.gmoadoption
   library(ggplot2)
   ggplot(dat, aes(x = year, y = percent, color = crop)) +
     geom_point() +
     geom_line() +
     labs(
       title = "Adoption of Genetically Engineered Crops in the U.S.",
       y = "Percentage of acres for each crop"
     ) +
     theme_minimal()

   ## End(Not run)
