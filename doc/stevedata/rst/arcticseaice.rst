.. container::

   .. container::

      ============ ===============
      arcticseaice R Documentation
      ============ ===============

      .. rubric:: Arctic Sea Ice Extent Data, 1901-2015
         :name: arctic-sea-ice-extent-data-1901-2015

      .. rubric:: Description
         :name: description

      This data set from Connelly et al. (2017) measures the Arctic sea
      ice extent in 10^6 square kilometers. It includes lower bounds and
      upper bounds on annual averages.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         arcticseaice

      .. rubric:: Format
         :name: format

      A data frame with 115 observations on the following 4 variables.

      ``year``
         the year

      ``value``
         the annual Arctic sea ice extent (in 10^6 sq km)

      ``ub``
         The upper bound of the value, provided by Connelly et al.

      ``lb``
         The lower bound of the value, provided by Connelly et al.

      .. rubric:: Details
         :name: details

      This is for illustration of climate change for my intro students.
      Connelly et al. (2017) are in part a methodological paper. The
      data I present here are from the "rescaled (unadjusted T)" data in
      the second sheet from their replication files.

      .. rubric:: References
         :name: references

      Connolly et al. (2017), ”Re-calibration of Arctic sea ice extent
      datasets using Arctic surface air temperature records”.
      *Hydrological Sciences Journal* 62(8): 1317–40.
