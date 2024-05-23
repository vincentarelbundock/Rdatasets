.. container::

   .. container::

      ======= ===============
      Traffic R Documentation
      ======= ===============

      .. rubric:: Effect of Swedish Speed Limits on Accidents
         :name: effect-of-swedish-speed-limits-on-accidents

      .. rubric:: Description
         :name: description

      An experiment was performed in Sweden in 1961–2 to assess the
      effect of a speed limit on the motorway accident rate. The
      experiment was conducted on 92 days in each year, matched so that
      day ``j`` in 1962 was comparable to day ``j`` in 1961. On some
      days the speed limit was in effect and enforced, while on other
      days there was no speed limit and cars tended to be driven faster.
      The speed limit days tended to be in contiguous blocks.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         Traffic

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      ``year``
         1961 or 1962.

      ``day``
         of year.

      ``limit``
         was there a speed limit?

      ``y``
         traffic accident count for that day.

      .. rubric:: Source
         :name: source

      Svensson, A. (1981) On the goodness-of-fit test for the
      multiplicative Poisson model. *Annals of Statistics,* **9**,
      697–704.

      .. rubric:: References
         :name: references

      Venables, W. N. and Ripley, B. D. (2002) *Modern Applied
      Statistics with S-PLUS.* Fourth Edition. Springer.
