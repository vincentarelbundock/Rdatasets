.. container::

   .. container::

      ========= ===============
      ngrip2010 R Documentation
      ========= ===============

      .. rubric:: NGRIP 20-year Average
         :name: ngrip-20-year-average

      .. rubric:: Description
         :name: description

      20-year averaged oxygen isotope data from the North Greenland Ice
      Core Project (GICC05 time scale).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         ngrip2010

      .. rubric:: Format
         :name: format

      A ``data.frame`` with 6114 observations and 4 variables:

      age
         ``integer``: calendar age (years before 2000 AD), GICC05 time
         scale (or GICC05modelext when going beyond 60 ka b2k).

      depth
         ``numeric``: depth (meters).

      delta
         ``numeric``: ``\delta^{18}O`` (per mil).

      MCE
         ``numeric``: maximum counting error (years).

      .. rubric:: Note
         :name: note

      Use the labels GICC05 (or GICC05modelext when going beyond 60 ka
      b2k) on graphs.

      .. rubric:: Source
         :name: source

      https://www.iceandclimate.nbi.ku.dk/data/

      .. rubric:: References
         :name: references

      Vinther, B. M., Clausen, H. B., Johnsen, S. J., Rasmussen, S. O.,
      Andersen, K. K., Buchardt, S. L., Dahl-Jensen, D., Seierstad, I.
      K., Siggaard-Andersen, M.-L., Steffensen, J. P., Svensson, A. M.,
      Olsen, J. & Heinemeier, J. (2006). A synchronized dating of three
      Greenland ice cores throughout the Holocene. *Journal of
      Geophysical Research*, 111, D13102.
      `doi:10.1029/2005JD006921 <https://doi.org/10.1029/2005JD006921>`__.

      Rasmussen, S. O., Andersen, K. K., Svensson, A. M., Steffensen, J.
      P., Vinther, B. M., Clausen, H. B., Siggaard-Andersen, M.-L.,
      Johnsen, S. J., Larsen, L. B., Dahl-Jensen, D., Bigler, M.,
      Röthlisberger, R., Fischer, H., Goto-Azuma, K., Hansson, M. E. &
      Ruth, U. (2006). A new Greenland ice core chronology for the last
      glacial termination. *Journal of Geophysical Research*, 111,
      D06102.
      `doi:10.1029/2005JD006079 <https://doi.org/10.1029/2005JD006079>`__.

      Andersen, K. K., Svensson, A., Johnsen, S. J., Rasmussen, S. O.,
      Bigler, M., Röthlisberger, R., Ruth, U., Siggaard-Andersen, M.-L.,
      Steffensen, J. P., Dahl-Jensen, D., Vinther, B. M. & Clausen, H.B.
      (2005). The Greenland Ice Core Chronology 2005, 15-42 ka. Part 1:
      Constructing the time scale. *Quaternary Science Reviews*,
      25(23-24):3246-3257.
      `doi:10.1016/j.quascirev.2006.08.002 <https://doi.org/10.1016/j.quascirev.2006.08.002>`__.

      Svensson, A., Andersen, K. K., Bigler, M., Clausen, H. B.,
      Dahl-Jensen, D., Davies, S. M., Johnsen, S. J., Muscheler, R.,
      Rasmussen, S. O., Röthlisberger, R., Seierstad, I., Steffensen, J.
      P. & Vinther, B. M. (2008). A 60,000 year Greenland stratigraphic
      ice core chronology. *Climate of the Past*, 4:47–57.
      `doi:10.5194/cp-4-47-2008 <https://doi.org/10.5194/cp-4-47-2008>`__.

      Wolff, E. W., Chappellaz, J., Blunier, T., Rasmussen, S. O. &
      Svensson, A. (2010). Millennial-scale variability during the last
      glacial: The ice core record. *Quaternary Science Reviews*,
      29:2828-2838.
      `doi:10.1016/j.quascirev.2009.10.013 <https://doi.org/10.1016/j.quascirev.2009.10.013>`__.

      .. rubric:: See Also
         :name: see-also

      Other palaeoenvironment data: ``epica2008``, ``law2006``,
      ``lisiecki2005``, ``ngrip2004``, ``spratt2016``

      Other isotopic data: ``lisiecki2005``, ``ngrip2004``,
      ``nydal1996``, ``spratt2016``, ``vegetation``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         plot(
           x = ngrip2010$age / 1000,
           y = ngrip2010$delta,
           type = "l",
           xlim = c(120, 0),
           xlab = "GICC05",
           ylab = expression(delta^{18}*"O")
         )
