.. container::

   .. container::

      ================ ===============
      Olorgesailie.sub R Documentation
      ================ ===============

      .. rubric:: Stone tool subclasses, Olorgesailie, Kenya
         :name: stone-tool-subclasses-olorgesailie-kenya

      .. rubric:: Description
         :name: description

      The data represent the number of specimens in each of 16 artifact
      subclasses recovered from 19 localities at the Lower Paleolithic
      site of Olorgesailie as described in Isaac (1977).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Olorgesailie.sub)

      .. rubric:: Format
         :name: format

      A data frame with 19 observations showing the stratum, locality
      and the number of specimens for each of 16 stone artifact types.

      ``Strat``
         stratum: ``Lower``, ``Middle``, ``Upper``

      ``Locality``
         Locality

      ``HA``
         Number of handaxes

      ``PHA``
         Number of pick-like handaxes

      ``CHA``
         Number of chisel handaxes

      ``CL``
         Number of cleavers

      ``KN``
         Number of knives

      ``BLCT``
         Number of broken large cutting tools

      ``PAT``
         Number of picks and trièdres

      ``CH``
         Number of choppers

      ``CS``
         Number of core scrapers

      ``LFS``
         Number of large flake scrapers

      ``CB``
         Number of core bifaces

      ``OLT``
         Number of other large tools

      ``SSS``
         Number of small scrapers simple

      ``SSNP``
         Number of small scrapers nosed point

      ``OST``
         Number of other small tools

      ``SP``
         Number of spheroids

      .. rubric:: Details
         :name: details

      The data come from Table E1 in Isaac (1977: 239). The ``Locality``
      contains the column headings in the original table. The
      ``rownames`` are the same as those in ``Olorgesailie.maj``. The
      attribute ``Variables`` in the data frame includes the full
      variable names. Potts (2011) provides updated information on the
      site complex.

      .. rubric:: Source
         :name: source

      Isaac, Glynn Ll. 1977. *Olorgesailie: Archeological Studies of a
      Middle Pleistocene Lake Basin in Kenya*. The University of Chicago
      Press.

      .. rubric:: References
         :name: references

      Carlson, David L. 2017. *Quantitative Methods in Archaeology Using
      R*. Cambridge University Press, pp 280-293.

      Potts, R. 2011. Olorgesailie–Retrospective and current synthesis.
      In *Casting the net wide: papers in honor of Glynn Isaac and his
      approach to human origins research*, edited by J. Sept and D.
      Pilbeam, pp 1–20. American School of Prehistoric Research
      Monographs in Archaeology and Paleoanthropology.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Olorgesailie.sub)
         # Chi square after removing the first two columns and simulating the p
         # value since there are a number of very small expected values
         chisq.test(Olorgesailie.sub[,3:18], simulate.p.value=TRUE)
         # Compute percentages over the localities
         Olor.pct <- prop.table(as.matrix(Olorgesailie.sub[,3:18]), 1)*100
         boxplot(Olor.pct, cex.axis=.7)
