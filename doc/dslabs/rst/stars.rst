===== ===============
stars R Documentation
===== ===============

Physical Properties of Stars
----------------------------

Description
~~~~~~~~~~~

Physical properties of selected stars, including luminosity,
temperature, and spectral class.

Usage
~~~~~

.. code:: R

   stars

Format
~~~~~~

An object of class ``"data.frame"``.

Details
~~~~~~~

- star. Name of star.

- magnitude. Absolute magnitude of the star, which is a function of the
  star's luminosity and distance to the star.

- temp. Surface temperature in degrees Kelvin (K).

- type. Spectral class of star in the OBAFGKM system.

Source
~~~~~~

Compiled from multiple open-access references on
`VizieR <http://vizier.u-strasbg.fr/viz-bin/VizieR>`__.

Examples
~~~~~~~~

.. code:: R

   head(stars)
