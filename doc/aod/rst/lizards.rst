.. container::

   .. container::

      ======= ===============
      lizards R Documentation
      ======= ===============

      .. rubric:: A Comparison of Site Preferences of Two Species of
         Lizard
         :name: a-comparison-of-site-preferences-of-two-species-of-lizard

      .. rubric:: Description
         :name: description

      “These data describe the daytime habits of two species of lizards,
      *grahami* and *opalinus*. They were collected by observing
      occupied sites or perches and recording the appropriate
      description, namely species involved, time of the day, height and
      diameter of the perch and whether the site was sunny or shaded.
      Time of the day is recorded as early, mid-day or late.” (McCullagh
      and Nelder, 1989, p.129).

      .. rubric:: Usage
         :name: usage

      ::

         data(lizards)

      .. rubric:: Format
         :name: format

      A data frame with 24 observations on the following 6 variables.

      Site
         A factor with levels ``Sun`` and ``Shade``.

      Diameter
         A factor with levels ``D <= 2`` and ``D > 2`` (inches).

      Height
         A factor with levels ``H < 5`` and ``H >= 5`` (feet).

      Time
         A factor with levels ``Early``, ``Mid-day`` and ``Late``.

      grahami
         A numeric vector giving the observed sample size for *grahami*
         lizards.

      opalinus
         A numeric vector giving the observed sample size for *opalinus*
         lizards.

      .. rubric:: Details
         :name: details

      The data were originally published in Fienberg (1970).

      .. rubric:: Source
         :name: source

      McCullagh, P., Nelder, J.A., 1989. *Generalized linear models*.
      London, Chapman & Hall, 511 p.

      .. rubric:: References
         :name: references

      Fienberg, S.E., 1970. *The analysis of multidimensional
      contingency tables*. Ecology 51: 419-433.

      .. rubric:: Examples
         :name: examples

      ::

         data(lizards)
