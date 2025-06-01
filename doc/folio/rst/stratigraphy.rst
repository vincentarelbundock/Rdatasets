.. container::

   .. container::

      ============ ===============
      stratigraphy R Documentation
      ============ ===============

      .. rubric:: Chronostratigraphic Chart
         :name: chronostratigraphic-chart

      .. rubric:: Description
         :name: description

      The ICS international chronostratigraphic chart (v2022/2).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         stratigraphy

      .. rubric:: Format
         :name: format

      A ``data.frame`` with 176 observations and 5 variables:

      type
         ``character``: unit type ("``eon``", "``era``", "``period``",
         "``series``" or "``stage``"). Precambrian and Hadean are
         informal units.

      name
         ``character``: unit name.

      age
         ``numeric``: numerical age (Ma).

      error
         ``numeric``: error on numerical ``age`` (Ma).

      parent
         ``character``: parent unit.

      .. rubric:: Source
         :name: source

      https://stratigraphy.org/ICSchart/ChronostratChart2022-02.pdf

      .. rubric:: References
         :name: references

      Cohen, K. M., Finney, S. C., Gibbard, P. L. and Fan, J.-X. (2013).
      The ICS International Chronostratigraphic Chart. *Episodes*,
      36(3): 199-204.
      `doi:10.18814/epiiugs/2013/v36i3/002 <https://doi.org/10.18814/epiiugs/2013/v36i3/002>`__
