.. container::

   .. container::

      ======== ===============
      RBGlass1 R Documentation
      ======== ===============

      .. rubric:: Romano-British Glass, Major and Minor Elements
         :name: romano-british-glass-major-and-minor-elements

      .. rubric:: Description
         :name: description

      The concentrations for 11 major and minor elements in 105
      Romano-British waste glass specimens from two furnace sites
      (Leicester and Mancetter).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("RBGlass1")

      .. rubric:: Format
         :name: format

      A data frame with 105 observations on the following 12 variables.

      ``Site``
         a factor with levels ``Leicester`` and ``Mancetter``

      ``Al``
         Percentage Aluminum

      ``Fe``
         Percentage Iron

      ``Mg``
         Percentage Magnesium

      ``Ca``
         Percentage Calcium

      ``Na``
         Percentage Sodium

      ``K``
         Percentage Potassium

      ``Ti``
         Percentage Titanium

      ``P``
         Percentage Phosphorus

      ``Mn``
         Percentage Manganese

      ``Sb``
         Percentage Antinmony

      ``Pb``
         Percentage Lead

      .. rubric:: Details
         :name: details

      The concentrations for 11 major and minor elements in 105
      Romano-British waste glass specimens from two furnace sites
      (Leicester and Mancetter) come from Caroline Jackson's Ph. D.
      thesis at Bradford University. The data here were scanned from
      from Baxter (1994) Table A1. Measurements are percentage for each
      element.

      .. rubric:: Source
         :name: source

      Baxter, M. J. 1994. *Exploratory Multivariate Analysis in
      Archaeology*. Edinburgh University Press.

      Jackson, C. M. 1992. A Compositional Analysis of Roman and Early
      Post-Roman Glass and Glass Working Waste from Selected British
      Sites Towards an Understanding of the Technology of Glass-Making
      Through Analysis by Inductively-Coupled Plasma Spectrometry.
      Unpublished PhD thesis. Bradford University (BL: D214554).

      .. rubric:: References
         :name: references

      Baxter, M. J., Cool H.E.M., Heyworth M.P. and Jackson, C.M. 1995.
      Compositional Variability in Colourless Roman Vessel Glass.
      *Archaeometry* 37(1), 129-141.

      Baxter, M. J., Cool, H. E. M. and Jackson, C. M. (2005). Further
      Studies in the Compositional Variability of Colourless
      Romano-British Glass. *Archaeometry* 47, 47-68.

      Carlson, David L. 2017. *Quantitative Methods in Archaeology Using
      R*. Cambridge University Press, pp 245-247, 256-261.

      Jackson, C M, J R Hunter, S E Warren, and H E M Cool. 1991. The
      Analysis of Blue-Green Glass and Glassy Waste from Two
      Romano-British Glass Working Sites. In *Archaeometry 1990*, edited
      by E. Pernicka and G. A. Wagner, pp 295-304. Birkhäuser Verlag.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(RBGlass1)
         RBGlass1.pca <- prcomp(RBGlass1[, -1], scale.=TRUE)
         biplot(RBGlass1.pca, xlabs=abbreviate(RBGlass1$Site, 1), cex=.75)
