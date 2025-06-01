.. container::

   .. container::

      ========= ===============
      Snodgrass R Documentation
      ========= ===============

      .. rubric:: House pits at the Mississippian Snodgrass site in
         Butler County, Missouri, U.S.A.
         :name: house-pits-at-the-mississippian-snodgrass-site-in-butler-county-missouri-u.s.a.

      .. rubric:: Description
         :name: description

      Information on the size, location and contents of 91 house pits at
      the Snodgrass site which was occupied between about CE 1325-1420.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Snodgrass)

      .. rubric:: Format
         :name: format

      A data frame with 91 observations on the following 15 variables.

      ``East``
         East grid location of house in feet (excavation grid system)

      ``South``
         East grid location of house in feet (excavation grid system)

      ``Length``
         House length in feet

      ``Width``
         House width in feet

      ``Segment``
         Three areas within the site ``1``, ``2``, ``3``

      ``Inside``
         Location within or outside the "white wall" ``Inside``,
         ``Outside``

      ``Area``
         Area in square feet

      ``Points``
         Number of projectile points

      ``Abraders``
         Number of abraders

      ``Discs``
         Number of discs

      ``Earplugs``
         Number of earplugs

      ``Effigies``
         Number of effigies

      ``Ceramics``
         Number of ceramics

      ``Total``
         Total Number of artifacts listed above

      ``Types``
         Number of kinds of artifacts listed above

      .. rubric:: Details
         :name: details

      The data from 91 house pits at the Snodgrass site were reported by
      Price and Giffin in 1979. The layout of the houses follows a grid
      pattern with the long axis oriented northeast surrounded by a
      fortification trench. There is also evidence of an interior wall
      that may have separated the houses inside that wall from those
      outside the wall. Price and Griffin use differences in house size
      and artifact composition to suggest that those differences may
      have reflected rank differences between the occupants of the two
      areas. That conclusion has been questioned on a number of grounds
      by Cogswell, et al (2001), but the data are still useful for
      illustrating a number of quantitative methods. The data come from
      the appendices except for the house locations which were estimated
      from the base map in Figure 10 (Price and Griffin 1979).

      .. rubric:: Source
         :name: source

      Price, J. E. and J. B. Griffin. 1979. The Snodgrass Site of the
      Powers Phase of Southeast Missouri. *Anthropological Papers.
      Museum of Anthropology, University of Michigan, No.* 66.

      .. rubric:: References
         :name: references

      Carlson, David L. 2017. *Quantitative Methods in Archaeology Using
      R*. Cambridge University Press, pp 171-183, 232-242.

      Cogswell, J. W., M. J. O'Brien, and D. S. Glover. 2001. The
      Artifactual Content of Selected House Floors at Turner and
      Snodgrass. In *Mississippian Community Organization: The Powers
      Phase in Southeastern Missouri*, edited by M. J. O'Brien, pp
      181–229. Kluwer Academic/Plenum.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Snodgrass)
         plot(-South~East, Snodgrass, main="Snodgrass Site", pch=as.numeric(Inside)+4, asp=1)
         legend("topleft", levels(Snodgrass$Inside), pch=5:6)
         boxplot(Area~Inside, Snodgrass)
