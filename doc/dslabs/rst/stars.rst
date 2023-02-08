.. container::

   ===== ===============
   stars R Documentation
   ===== ===============

   .. rubric:: Physical Properties of Stars
      :name: physical-properties-of-stars

   .. rubric:: Description
      :name: description

   Physical properties of selected stars, including luminosity,
   temperature, and spectral class.

   .. rubric:: Usage
      :name: usage

   ::

      data(stars)

   .. rubric:: Format
      :name: format

   An object of class ``"data.frame"``.

   .. rubric:: Details
      :name: details

   -  star. Name of star.

   -  magnitude. Absolute magnitude of the star, which is a function of
      the star's luminosity and distance to the star.

   -  temp. Surface temperature in degrees Kelvin (K).

   -  type. Spectral class of star in the OBAFGKM system.

   .. rubric:: Source
      :name: source

   Compiled from multiple open-access references on
   `VizieR <http://vizier.u-strasbg.fr/viz-bin/VizieR>`__.

   .. rubric:: Examples
      :name: examples

   ::

      data(stars)
      head(stars)
