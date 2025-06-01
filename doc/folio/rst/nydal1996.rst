.. container::

   .. container::

      ========= ===============
      nydal1996 R Documentation
      ========= ===============

      .. rubric:: ``{}^{14}C`` Measurements in Atmospheric ``CO_2``
         :name: c-measurements-in-atmospheric-co_2

      .. rubric:: Description
         :name: description

      Corrected ``{}^{14}C`` measurements from air samples collected at
      five Norwegian sites from 1962-1993.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         nydal1996

      .. rubric:: Format
         :name: format

      A ``data.frame`` with 620 observations and 5 variables:

      site
         ``character``: sampling station.

      start
         ``Date``: beginning date of the sampling period.

      end
         ``Date``: ending date of the sampling period.

      delta
         ``numeric``: isotopic ratio ``\Delta^{14}C`` (per mil).

      sigma
         ``numeric``: error on ``delta`` (per mil).

      .. rubric:: Source
         :name: source

      Nydal, R. and Lövseth, K. (1996). *Carbon-14 Measurements in
      Atmospheric CO2 from Northern and Southern Hemisphere Sites,
      1962-1993*. ORNL/CDIAC-93; NDP-057. Washington, DC: USDOE Office
      of Energy Research.
      `doi:10.2172/461185 <https://doi.org/10.2172/461185>`__

      .. rubric:: See Also
         :name: see-also

      Other isotopic data: ``lisiecki2005``, ``ngrip2004``,
      ``ngrip2010``, ``spratt2016``, ``vegetation``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         plot(
           x = nydal1996$start,
           y = nydal1996$delta,
           type = "p",
           xlab = "Date",
           ylab = expression(Delta^{14}*"C")
         )
