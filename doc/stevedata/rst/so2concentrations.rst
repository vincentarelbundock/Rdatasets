.. container::

   ================= ===============
   so2concentrations R Documentation
   ================= ===============

   .. rubric:: Sulfur Dioxide Emissions, 1980-2020
      :name: so2concentrations

   .. rubric:: Description
      :name: description

   This data set contains yearly observations by the Environmental
   Protection Agency on the concentration of sulfur dioxide in parts per
   billion, based on 32 sites. I use this for in-class illustration.
   Note that the national standard is 75 parts per billion. Data are the
   national trend.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      so2concentrations

   .. rubric:: Format
      :name: format

   A data frame with the following 4 variables.

   ``year``
      the year

   ``value``
      the mean concentration of sulfur dioxide in the air based on 32
      trend sites, in parts per billion

   ``ub``
      the lower bound of the value (10th percentile)

   ``lb``
      the upper bound of the value (90th percentile)

   .. rubric:: Source
      :name: source

   Environmental Protection Agency, 2021.
   https://www.epa.gov/air-trends/sulfur-dioxide-trends
