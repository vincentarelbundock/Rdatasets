.. container::

   .. container::

      ========= ===============
      oecdpanel R Documentation
      ========= ===============

      .. rubric:: Cross Country Growth Panel
         :name: cross-country-growth-panel

      .. rubric:: Description
         :name: description

      Cross country GDP growth panel covering the period 1960-1995 used
      by Liu and Stengos (2000) and Maasoumi, Racine, and Stengos
      (2007). There are 616 observations in total. ``data("oecdpanel")``
      makes available the dataset ``"oecdpanel"`` plus an additional
      object ``"bw"``.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("oecdpanel")

      .. rubric:: Format
         :name: format

      A data frame with 7 columns, and 616 rows. This panel covers 7
      5-year periods: 1960-1964, 1965-1969, 1970-1974, 1975-1979,
      1980-1984, 1985-1989 and 1990-1994.

      A separate local-linear ``rbandwidth`` object (``bw``) has been
      computed for the user's convenience which can be used to visualize
      this dataset using ``plot(bw)``.

      growth
         the first column, of type ``numeric``: growth rate of real GDP
         per capita for each 5-year period

      oecd
         the second column, of type ``factor``: equal to 1 for OECD
         members, 0 otherwise

      year
         the third column, of type ``integer``

      initgdp
         the fourth column, of type ``numeric``: per capita real GDP at
         the beginning of each 5-year period

      popgro
         the fifth column, of type ``numeric``: average annual
         population growth rate for each 5-year period

      inv
         the sixth column, of type ``numeric``: average investment/GDP
         ratio for each 5-year period

      humancap
         the seventh column, of type ``numeric``: average secondary
         school enrolment rate for each 5-year period

      .. rubric:: Source
         :name: source

      Thanasis Stengos

      .. rubric:: References
         :name: references

      Liu, Z. and T. Stengos (1999), “Non-linearities in cross country
      growth regressions: a semiparametric approach,” Journal of Applied
      Econometrics, 14, 527-538.

      Maasoumi, E. and J.S. Racine and T. Stengos (2007), “Growth and
      convergence: a profile of distribution dynamics and mobility,”
      Journal of Econometrics, 136, 483-508

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data("oecdpanel")
         attach(oecdpanel)
         summary(oecdpanel)
         detach(oecdpanel)
