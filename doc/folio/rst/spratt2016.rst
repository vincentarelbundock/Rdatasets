========== ===============
spratt2016 R Documentation
========== ===============

Late Pleistocene Sea Level Stack
--------------------------------

Description
~~~~~~~~~~~

A Late Pleistocene sea level stack based on marine sediment core data
(foraminiferal carbonate ``\delta^{18}O``).

Usage
~~~~~

.. code:: R

   spratt2016

Format
~~~~~~

A ``data.frame`` with 799 observations and 9 variables:

age_calkaBP
   ``integer``: age (calendar kilo year BP).

SeaLev_shortPC1
   ``numeric``: sea Level (meters above present day), climate
   reconstructions (scaled first principal component of seven sea level
   reconstructions (0-430 ka)).

SeaLev_shortPC1_err_sig
   ``numeric``: sea Level standard deviation from bootstrap (meters),
   climate reconstructions (scaled first principal component of seven
   sea level reconstructions (0-430 ka)).

SeaLev_shortPC1_err_lo
   ``numeric``: sea Level 95% confidence interval lower bound (meters),
   climate reconstructions (scaled first principal component of seven
   sea level reconstructions (0-430 ka)).

SeaLev_shortPC1_err_up
   ``numeric``: sea Level 95% confidence interval upper bound (meters),
   climate reconstructions (scaled first principal component of seven
   sea level reconstructions (0-430 ka)).

SeaLev_longPC1
   ``numeric``: sea Level (meters above present day), climate
   reconstructions (scaled first principal component of five sea level
   reconstructions (0-798 ka)).

SeaLev_longPC1_err_sig
   ``numeric``: sea Level standard deviation from bootstrap (meters),
   climate reconstructions (scaled first principal component of five sea
   level reconstructions (0-798 ka)).

SeaLev_longPC1_err_lo
   ``numeric``: sea Level 95% confidence interval lower bound (meters),
   climate reconstructions (scaled first principal component of five sea
   level reconstructions (0-798 ka)).

SeaLev_longPC1_err_up
   ``numeric``: sea Level 95% confidence interval upper bound (meters),
   climate reconstructions (scaled first principal component of five sea
   level reconstructions (0-798 ka)).

Source
~~~~~~

https://www.ncei.noaa.gov/access/paleo-search/study/19982

References
~~~~~~~~~~

Spratt, R. M. and Lisiecki, L. E. (2016). A Late Pleistocene sea level
stack. *Climate of the Past*, 12, 1079-1092.
`doi:10.5194/cp-12-1079-2016 <https://doi.org/10.5194/cp-12-1079-2016>`__

See Also
~~~~~~~~

Other palaeoenvironment data: ``epica2008``, ``law2006``,
``lisiecki2005``, ``ngrip2004``, ``ngrip2010``

Other isotopic data: ``lisiecki2005``, ``ngrip2004``, ``ngrip2010``,
``nydal1996``, ``vegetation``

Examples
~~~~~~~~

.. code:: R

   plot(
     x = spratt2016$age_calkaBP,
     y = spratt2016$SeaLev_longPC1,
     type = "l",
     xlim = c(500, 0),
     xlab = "kilo year BP",
     ylab = "Sea level (meters above present)"
   )
