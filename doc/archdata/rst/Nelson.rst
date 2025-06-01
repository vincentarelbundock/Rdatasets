.. container::

   .. container::

      ====== ===============
      Nelson R Documentation
      ====== ===============

      .. rubric:: Prehistoric Ceramics at Pueblo San Cristobal, New
         Mexico, USA
         :name: prehistoric-ceramics-at-pueblo-san-cristobal-new-mexico-usa

      .. rubric:: Description
         :name: description

      Ceramic distribution in a midden deposit at Pueblo San Cristobal
      reported by Nels Nelson in 1916.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Nelson)

      .. rubric:: Format
         :name: format

      A data frame with 10 observations on the following 8 variables.

      ``Depth``
         Depth in feet from 1 to 10 for 1 foot arbitrary excavation
         levels

      ``Corrugated``
         Number of corrugated ware ceramics

      ``Biscuit``
         Number of Biscuit ware ceramics

      ``Type_I``
         Number of two and three color painted ware ceramics

      ``Type_II_Red``
         Number of two color glazed red ware ceramics

      ``Type_II_Yellow``
         Number of two color glazed yellow ware ceramics

      ``Type_II_Gray``
         Number of two color glazed gray ware ceramics

      ``Type_III``
         Number of three color glazed ware ceramics

      .. rubric:: Details
         :name: details

      Data from a midden deposit at San Cristobal in the American
      Southwest. It has been used as a classic illustration of the
      potential for creating a relative chronology using frequency
      seriation of ceramic artifact types. The site was occupied
      approximately from CE 1350 to 1680. Ceramic artifact fragment
      counts are presented for each 1-foot (30 cm) arbitrary level
      excavated in the midden deposit. When converted to percentages
      (usually excluding the corrugated ware), the data illustrate a
      classical "battleship curve" like those described in Ford (1962).

      .. rubric:: Source
         :name: source

      Nelson, N. C. 1916. Chronology of the Tano Ruins, New Mexico.
      *American Anthropologist* 18(2): 159–180.

      .. rubric:: References
         :name: references

      Carlson, David L. 2017. *Quantitative Methods in Archaeology Using
      R*. Cambridge University Press, pp 381-386, 390-393.

      Ford, J. A. (1962) A Quantitative Method for Deriving Cultural
      Chronology. *Pan American Union, Technical Manual No* 1.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(Nelson)
         # Remove Depth and Corrugated and compute percentages
         Nelson.pct <- prop.table(as.matrix(Nelson[,3:7]), 1)*100
         # Percentages for each type by level
         round(Nelson.pct, 2)

         # Battleship plot from plotrix package
         if (requireNamespace("plotrix", quietly = TRUE)) {
           plotrix::battleship.plot(Nelson.pct, col="gray")
         } else {
           cat("This example requires package plotrix.\n")
         }
