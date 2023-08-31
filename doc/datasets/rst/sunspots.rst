.. container::

   ======== ===============
   sunspots R Documentation
   ======== ===============

   .. rubric:: Monthly Sunspot Numbers, 1749–1983
      :name: sunspots

   .. rubric:: Description
      :name: description

   Monthly mean relative sunspot numbers from 1749 to 1983. Collected at
   Swiss Federal Observatory, Zurich until 1960, then Tokyo Astronomical
   Observatory.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      sunspots

   .. rubric:: Format
      :name: format

   A time series of monthly data from 1749 to 1983.

   .. rubric:: Source
      :name: source

   Andrews, D. F. and Herzberg, A. M. (1985) *Data: A Collection of
   Problems from Many Fields for the Student and Research Worker*. New
   York: Springer-Verlag.

   .. rubric:: See Also
      :name: see-also

   ``sunspot.month`` has a longer (and a bit different) series,
   ``sunspot.year`` is a much shorter one. See there for getting more
   current sunspot numbers.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      require(graphics)
      plot(sunspots, main = "sunspots data", xlab = "Year",
           ylab = "Monthly sunspot numbers")
