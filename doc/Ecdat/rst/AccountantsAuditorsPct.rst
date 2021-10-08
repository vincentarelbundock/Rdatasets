.. container::

   ====================== ===============
   AccountantsAuditorsPct R Documentation
   ====================== ===============

   .. rubric:: Accountants and Auditors in the US 1850-2016
      :name: accountants-and-auditors-in-the-us-1850-2016

   .. rubric:: Description
      :name: description

   Accountants and auditors as a percent of the US labor force 1850 to
   2016 updating the analysis in Wyatt and Hecker (2006).

   .. rubric:: Usage
      :name: usage

   ::

      data(AccountantsAuditorsPct)

   .. rubric:: Format
      :name: format

   a numeric vector of length 30 giving the percent of the US labor
   force in "Accounting and Auditing" each decade from 1850 to 2010
   except for 1940 plus each year between 2011 and 2016.

   .. rubric:: Source
      :name: source

   This is based primarily on data extracted from the `Integrated Public
   Use Microdata Series <https://en.wikipedia.org/wiki/IPUMS>`__ on
   2018-09-01 with the computations documented in a vignette by this
   title in the ``Ecfun`` package.

   This updates the data on Accountants and Auditors in Wyatt and Hecker
   (2006). They relied primarily on data extracted from the `Integrated
   Public Use Microdata Series <https://en.wikipedia.org/wiki/IPUMS>`__.
   This follows the same methodology with two modifications:

   1. IPUMS provided no data for 1940. Wyatt and Hecker (2006) used
   `Historical Statistics of the United States, Colonial Times to 1970,
   Bicentennial Edition, part 1 (U.S. Department of Commerce, Bureau of
   the Census,
   1975) <https://www.census.gov/library/publications/1975/compendia/hist_stats_colonial-1970.html>`__
   for 1910-1940. The current data set uses that source only for 1040.

   2. The IPUMS numbers showed an extreme jump from 1850 to 1860
   followed by an even more extreme drop to 1870. The numbers in Sobek
   (2006) showed essentially the same behavior. Specifically, Sobek
   (2006) estimated the number of accountants and auditors in the US in
   those three years as 700, 1700, and 1200, and the labor force as
   5277000, 8160800, and 12004200. These numbers give accountants and
   auditors as 0.013, 0.021, and 0.010 percent of the labor force,
   respectively for those three years. These numbers portray an
   incredible increase in the employment of accountants and auditors
   between 1850 and 1860 followed by a shocking decline the following
   decade. If, however, we swap the 1700 and 1200 between 1860 and 1870,
   the percentages become quite stable: 0.013, 0.015, and 0.014 percent,
   respectively.

   We use these latter numbers, even though the uncorrected numbers seem
   more consistent with the numbers obtained from IPUMS.

   .. rubric:: References
      :name: references

   `Historical Statistics of the United States, Colonial Times to 1970,
   Bicentennial Edition, part 1 (U.S. Department of Commerce, Bureau of
   the Census,
   1975) <https://www.census.gov/library/publications/1975/compendia/hist_stats_colonial-1970.html>`__

   Steven Ruggles, Sarah Flood, Ronald Goeken, Josiah Grover, Erin
   Meyer, Jose Pacas, and Matthew Sobek (2018) `IPUMS USA: Version 8.0
   [dataset]. Minneapolis, MN:
   IPUMS <https://doi.org/10.18128/D010.V8.0>`__.

   Matthew Sobek (2006) Chapter Ba. "Labor Occupations" in Susan B.
   Carter, ed., `Historical Statistics of the United States, Cambridge
   U.
   Pr. <https://en.wikipedia.org/wiki/Historical_Statistics_of_the_United_States>`__

   Ian D. Wyatt and Daniel E. Hecker (2006) `"Occupational changes
   during the 20th century", Monthly Labor Review, March 2006, pp.
   35-57 <https://www.bls.gov/mlr/2006/03/art3full.pdf>`__

   .. rubric:: See Also
      :name: see-also

   ``Index.Source``, ``Index.Economics``, ``Index.Econometrics``,
   ``Index.Observations``

   .. rubric:: Examples
      :name: examples

   ::

      data(AccountantsAuditorsPct)
      plot(names(AccountantsAuditorsPct), AccountantsAuditorsPct, 
        type='l', log='y', cex.axis=1.8)
      # for the version of this contributed to Wikimedia Commons  
