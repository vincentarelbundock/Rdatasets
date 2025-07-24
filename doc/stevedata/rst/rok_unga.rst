.. container::

   .. container::

      ======== ===============
      rok_unga R Documentation
      ======== ===============

      .. rubric:: The Correlates of Dyadic Voting Similiarities in the
         UN General Assembly for South Korea
         :name: the-correlates-of-dyadic-voting-similiarities-in-the-un-general-assembly-for-south-korea

      .. rubric:: Description
         :name: description

      A data set on dyadic voting similarity for South Korea in relation
      to other states, from 1991 to 2022.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         rok_unga

      .. rubric:: Format
         :name: format

      A data frame with the following variables.

      ``ccode1``
         a numeric vector, and constant, identifies the Correlates of
         War state code for South Korea (732)

      ``ccode2``
         a numeric vector for the Correlates of War state code for the
         other state in the dyad

      ``iso3c``
         a three-character ISO code corresponding with the Correlates of
         War state code for ``ccode2``

      ``year``
         a numeric vector for a year

      ``agree``
         the percentage of the time South Korea and the other state in
         the dyad agreed on a vote in a given year

      ``v_agree``
         the percentage of the time South Korea and the other state in
         the dyad agreed on a vote in a given year, as calculated by
         Voeten et al. in their data

      ``kappa``
         weighted Cohen's kappa for dyadic foreign policy similarity as
         derived from the UN voting data

      ``ip1``
         the ideal point estimate for South Korea for a given year, as
         derived from UN voting data

      ``ip2``
         the ideal point estimate for ``ccode2``, as derived from UN
         voting data

      ``ipd``
         the absolute distance between ``ip1`` and ``ip2``

      ``gdppc1``
         estimated GDP per capita in 2015 USD for South Korea in the
         referent year

      ``gdppc2``
         estimated GDP per capita in 2015 USD for ``ccode2`` in a given
         year

      ``v2x_polyarchy1``
         the Varieties of Democracy estimate for the "polyarchy" for
         South Korea in the referent year

      ``v2x_polyarchy2``
         the Varieties of Democracy estimate for the "polyarchy" for
         ``ccode2`` in a given year

      ``xm_euds1``
         Xavier Marquez' estimate for the extended Unified Democracy
         Score for South Korea in the referent year

      ``xm_euds2``
         Xavier Marquez' estimate for the extended Unified Democracy
         Score for ``ccode2`` in a given year

      ``capdist``
         the distance between Seoul and the capital of ``ccode2`` in the
         year

      .. rubric:: Details
         :name: details

      Voeten et al's codebook cautions that their agreement variable is
      there for comparison and should not be used for a serious analysis
      of dyadic foreign policy similarity. The ``agree`` variable I
      calculate is based on *all* votes, whereas (I think) Voeten et al.
      exclude amendments and votes on paragraphs.

      Cohen's (weighted) kappa is suggested by Haege (2011) for use
      measuring dyadic foreign policy similarity. This measure is
      likewise calculated by me for *all* votes. I forget how Haege
      (2011) does this for his calculations and if he is excluding votes
      on amendments or paragraphs. Its interpretation differs from how
      one might use the ideal point distance variable. This is a
      chance-corrected correlation. Higher values indicate more
      similarity whereas higher values in the ideal point distance
      variable communicate more dissimilarity.

      GDP per capita include some imputations by way of a semiparametric
      Bayesian Gaussian copulas. This prominently concerns Venezuela.
      Data are otherwise derived from the World Bank's open data.

      Xavier Marquez' "extended Unified Democracy Scores" approximate a
      normal distribution with a standard deviation of 1. Invoking
      ``pnorm()`` on a particular estimate provides a kind of
      probabilistic assessment of whether the observation in question is
      a democracy. In both the Varieties of Democracy estimate and the
      Marquez estimate, higher values = "more democracy". See also: the
      ``Lipset59`` documentation in this same package.

      Capital-to-capital distance is calculated using the Vicenty method
      ("as the crow flies"), and is done by way of a peacesciencer call
      and its ``add_capital_distance()`` function. There are unusual
      cases where a capital moved (i.e. Burundi, Kazakhstan, Myanmar,
      Nigeria). In those cases, the capital on Jan. 1 of the given year
      is treated as the capital.
