========= ===============
nydal1996 R Documentation
========= ===============

``{}^{14}C`` Measurements in Atmospheric ``CO_2``
-------------------------------------------------

Description
~~~~~~~~~~~

Corrected ``{}^{14}C`` measurements from air samples collected at five
Norwegian sites from 1962-1993.

Usage
~~~~~

.. code:: R

   nydal1996

Format
~~~~~~

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

Source
~~~~~~

Nydal, R. and Lövseth, K. (1996). *Carbon-14 Measurements in Atmospheric
CO2 from Northern and Southern Hemisphere Sites, 1962-1993*.
ORNL/CDIAC-93; NDP-057. Washington, DC: USDOE Office of Energy Research.
`doi:10.2172/461185 <https://doi.org/10.2172/461185>`__

See Also
~~~~~~~~

Other isotopic data: ``lisiecki2005``, ``ngrip2004``, ``ngrip2010``,
``spratt2016``, ``vegetation``

Examples
~~~~~~~~

.. code:: R

   plot(
     x = nydal1996$start,
     y = nydal1996$delta,
     type = "p",
     xlab = "Date",
     ylab = expression(Delta^{14}*"C")
   )
