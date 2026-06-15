========= ===============
epica2008 R Documentation
========= ===============

EPICA Dome C
------------

Description
~~~~~~~~~~~

EPICA Dome C 800-ka composite ``CO_2`` data.

Usage
~~~~~

.. code:: R

   epica2008

Format
~~~~~~

A ``data.frame`` with 1096 observations and 2 variables:

age
   ``integer``: year BP.

CO2
   ``numeric``: ``CO_2`` (ppmv).

Source
~~~~~~

https://www.ncei.noaa.gov/access/paleo-search/study/6091

References
~~~~~~~~~~

Lüthi, D., Le Floch, M., Bereiter, B., Blunier, T., Barnola, J.-M.,
Siegenthaler, U., Raynaud, D., Jouzel, J., Fischer, H., Kawamura, K. and
Stocker, T. F. (2008). High-resolution carbon dioxide concentration
record 650,000-800,000 years before present. *Nature*, 453, 379-382.
`doi:10.1038/nature06949 <https://doi.org/10.1038/nature06949>`__

Monnin, E., Indermuhle, A., Dallenbach, A., Fluckiger, J., Stauffer, B.,
Stocker, T. F., Raynaud, D. and Barnola, J.-M. (2001). Atmospheric CO2
concentrations over the last glacial termination. *Science*, 291,
112-114.
`doi:10.1126/science.291.5501.112 <https://doi.org/10.1126/science.291.5501.112>`__

Petit, J. R., Jouzel, J., Raynaud, D., Barkov, N. I., Barnola, J.-M.,
Basile, I., Benders, M., Chappellaz, J., Davis, M., Delayque, G.,
Delmotte, M., Kotlyakov, V. M., Legrand, M., Lipenkov, V. Y., Lorius,
C., Pepin, L., Ritz, C., Saltzman, E. and Stievenard, M. (1999). Climate
and atmospheric history of the past 420,000 years from the Vostok ice
core, Antarctica. *Nature*, 399, 429-436.
`doi:10.1038/20859 <https://doi.org/10.1038/20859>`__

Siegenthaler, U., Stocker, T. F., Monnin, E., Luthi, D., Schwander, J.,
Stauffer, B., Raynaud, D., Barnola, J.-M., Fischer, H., Masson-Delmotte,
V., Jouzel, J. (2005). Stable Carbon Cycle-Climate Relationship During
the Late Pleistocene. *Science*, 310, 1313-1317.
`doi:10.1126/science.1120130 <https://doi.org/10.1126/science.1120130>`__

See Also
~~~~~~~~

Other palaeoenvironment data: ``law2006``, ``lisiecki2005``,
``ngrip2004``, ``ngrip2010``, ``spratt2016``

Examples
~~~~~~~~

.. code:: R

   plot(
     x = epica2008$age / 1000,
     y = epica2008$CO2,
     type = "l",
     xlim = c(800, 0),
     xlab = "kilo year BP",
     ylab = expression("CO"[2]~"(ppmv)")
   )
