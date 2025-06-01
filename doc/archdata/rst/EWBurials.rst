.. container::

   .. container::

      ========= ===============
      EWBurials R Documentation
      ========= ===============

      .. rubric:: Ernest Witte Cemetery, Austin, County, Texas, U.S.A.
         :name: ernest-witte-cemetery-austin-county-texas-u.s.a.

      .. rubric:: Description
         :name: description

      Sex, age, burial group, location, and burial orientation and
      direction facing from the Ernest Witte site, a Late Archaic
      cemetery in Texas (Hall 1981).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(EWBurials)

      .. rubric:: Format
         :name: format

      A data frame with 49 observations on the following 7 variables.

      ``Group``
         Cemetery group, a factor with levels ``1``, ``2``

      ``North``
         North grid location of the burial in meters (excavation grid
         system)

      ``West``
         East grid location of the burial in meters (excavation grid
         system)

      ``Age``
         Age category, a factor with levels ``Fetus``, ``Infant``,
         ``Child``, ``Adolescent``, ``Young Adult``, ``Adult``,
         ``Middle Adult``, ``Old Adult``

      ``Sex``
         a factor with levels ``Female``, ``Male``

      ``Direction``
         circular data in degrees indicating the direction of the
         individual measured from the head along the vertebral column

      ``Looking``
         circular data in degrees indication the direction the
         individual is facing

      ``Goods``
         Presence or absence of grave goods

      .. rubric:: Details
         :name: details

      The Ernest Witte site in Austin County, Texas contains four burial
      groups from different time periods. Group 1 includes 60 interments
      and that occurred between about 2000 and 1200 BCE. Group 2 is the
      largest with 148 interments. The burials in this group were
      interred between about CE 200 and 500. Groups 3 and 4 include only
      10 and 13 interments and date to CE 500 to 1500, but are not
      included in this data set which was taken from Appendix II (Hall
      1981). Two of the variables, ``direction`` and ``looking``, are
      circular data and require package ``circular``. Hall (2010)
      provides a summary of the site and its significance.

      .. rubric:: Source
         :name: source

      Hall, G. D. 1981. Allen's Creek: A Study in the Cultural
      Prehistory of the Lower Brazos River Valley. *The University of
      Texas at Austin. Texas Archeological Survey. Texas. Research
      Report No.* 61.

      .. rubric:: References
         :name: references

      Carlson, David L. 2017. *Quantitative Methods in Archaeology Using
      R*. Cambridge University Press, pp 350-357.

      Hall, G. D. 2010. Ernest Witte site. *Handbook of Texas Online*
      https://www.tshaonline.org/handbook/entries/ernest-witte-site.
      Texas State Historical Association.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(EWBurials)
         xtabs(~Age+Sex+Group, EWBurials)

         if (requireNamespace("circular", quietly = TRUE)) {
           plot(EWBurials$Direction)
         } else {
           cat("This example requires package circular.\n")
         }
