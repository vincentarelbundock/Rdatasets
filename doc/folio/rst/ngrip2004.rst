.. container::

   .. container::

      ========= ===============
      ngrip2004 R Documentation
      ========= ===============

      .. rubric:: NGRIP 50-year Average
         :name: ngrip-50-year-average

      .. rubric:: Description
         :name: description

      50-year averaged oxygen isotope data from the North Greenland Ice
      Core Project (ss09sea time scale).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         ngrip2004

      .. rubric:: Format
         :name: format

      A ``data.frame`` with 4918 observations and 2 variables:

      age
         ``integer``: calendar age (years before 2000 AD), ss09sea time
         scale.

      delta
         ``numeric``: ``\delta^{18}O`` (per mil).

      .. rubric:: Source
         :name: source

      https://www.ncei.noaa.gov/access/paleo-search/study/2481

      .. rubric:: References
         :name: references

      North Greenland Ice Core Project members (2004). High-resolution
      record of Northern Hemisphere climate extending into the last
      interglacial period. *Nature*, 431(7005), 147-151.
      `doi:10.1038/nature02805 <https://doi.org/10.1038/nature02805>`__

      .. rubric:: See Also
         :name: see-also

      Other palaeoenvironment data: ``epica2008``, ``law2006``,
      ``lisiecki2005``, ``ngrip2010``, ``spratt2016``

      Other isotopic data: ``lisiecki2005``, ``ngrip2010``,
      ``nydal1996``, ``spratt2016``, ``vegetation``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         plot(
           x = ngrip2004$age / 1000,
           y = ngrip2004$delta,
           type = "l",
           xlim = c(120, 0),
           xlab = "ss09sea (ka b2k)",
           ylab = expression(delta^{18}*"O")
         )
