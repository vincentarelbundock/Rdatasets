.. container::

   .. container::

      ========= ===============
      asn_stats R Documentation
      ========= ===============

      .. rubric:: Aviation Safety Network Statistics, 1942-2019
         :name: aviation-safety-network-statistics-1942-2019

      .. rubric:: Description
         :name: description

      These are yearly counts on air accidents and fatalities, including
      measures for corporate jet accidents and hijackings. The
      hijackings are of particular interest to me, at least from a
      historical terrorism perspective.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         asn_stats

      .. rubric:: Format
         :name: format

      A data frame with 78 observations on the following 7 variables.

      ``year``
         numeric vector for the year

      ``airacc``
         a numeric vector for the number of airliner accidents

      ``airfatal``
         a numeric vector for the number of fatalities from airliner
         accidents

      ``corpjetacc``
         a numeric vector for the number of corporate jet accidents

      ``corpjetfatal``
         a numeric vector for the number of fatalities from corporate
         jet accidents

      ``hijack``
         a numeric vector for the number of hijackings/skyjackings

      ``hijackfatal``
         a numeric vector for the number of fatalities from
         hijackings/skyjackings

      .. rubric:: Details
         :name: details

      All fatality estimates exclude ground fatalities. All accidents
      are hull-loss accidents. The airliner figures are for those
      flights with at least 14 passengers.

      .. rubric:: Source
         :name: source

      Aviation Safety Network, a service provided by the Flight Safety
      Foundation.
