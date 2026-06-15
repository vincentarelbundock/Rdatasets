========== ===============
vegetation R Documentation
========== ===============

``\delta^{13}C`` Values for Vegetation
--------------------------------------

Description
~~~~~~~~~~~

``\delta^{13}C`` Values for Vegetation

Usage
~~~~~

.. code:: R

   vegetation

Format
~~~~~~

A ``data.frame`` with 155 observations and 5 variables:

family
   ``character``: plant family.

species
   ``character``: plant species.

type
   ``character``: C3 or C4 plant.

delta
   ``numeric``: isotopic ratio ``\delta^{13}C`` (per mil).

country
   ``character``: country.

Source
~~~~~~

Cerling, T. E. and Harris, J. M. (1999). Carbon isotope fractionation
between diet and bioapatite in ungulate mammals and implications for
ecological and paleoecological studies. *Oecologia*, 120, 347-363.
`doi:10.1007/s004420050868 <https://doi.org/10.1007/s004420050868>`__

See Also
~~~~~~~~

Other isotopic data: ``lisiecki2005``, ``ngrip2004``, ``ngrip2010``,
``nydal1996``, ``spratt2016``

Examples
~~~~~~~~

.. code:: R

   hist(
     x = vegetation$delta,
     breaks = 20,
     main = "C3 and C4 plants",
     xlab = expression(delta^{13}*"C"),
     xlim = c(-40, 0)
    )

   boxplot(
     delta ~ type,
     data = vegetation,
     horizontal = TRUE,
     xlab = expression(delta^{13}*"C"),
     ylab = "Plant",
     ylim = c(-40, 0)
   )
