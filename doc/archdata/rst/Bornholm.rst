.. container::

   .. container::

      ======== ===============
      Bornholm R Documentation
      ======== ===============

      .. rubric:: Female Iron Age Graves, Bornholm, Denmark
         :name: female-iron-age-graves-bornholm-denmark

      .. rubric:: Description
         :name: description

      Data on the occurrence of 39 different types of ornamentation in
      77 female graves at Iron age sites in in Bornholm, Denmark.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("Bornholm")

      .. rubric:: Format
         :name: format

      A data frame with 77 observations on the following 42 variables.

      ``Number``
         Observation Number

      ``Site``
         Site/Bural Number

      ``Period``
         Chronological period: ``1a``, ``1b``, ``2a``, ``2b``, ``2c``,
         ``3a``, and ``3b``

      ``N2c``
         count

      ``R3d``
         count

      ``N2a``
         count

      ``Q3b``
         count

      ``R3c``
         count

      ``N1``
         count

      ``Q3c``
         count

      ``O1``
         count

      ``O2``
         count

      ``N2e``
         count

      ``I3``
         count

      ``R3b``
         count

      ``K1a``
         count

      ``Q3a``
         count

      ``I2``
         count

      ``K1c``
         count

      ``K1b``
         count

      ``H``
         count

      ``Q3d``
         count

      ``J1d``
         count

      ``S1``
         count

      ``D``
         count

      ``Q2``
         count

      ``S3``
         count

      ``P2``
         count

      ``P4``
         count

      ``G3``
         count

      ``E2a``
         count

      ``P3``
         count

      ``R3a``
         count

      ``R1``
         count

      ``E2b``
         count

      ``G2``
         count

      ``I1b``
         count

      ``G1``
         count

      ``F``
         count

      ``P1``
         count

      ``I1a``
         count

      ``A2e``
         count

      .. rubric:: Details
         :name: details

      Nielsen used data on 39 different types of ornaments from Ørsnes
      (1966) to seriate a series of 77 Late Germanic Iron Age (CE 550 -
      800) graves from Bornholm, Denmark (1988, Table 4 and Figure 7).
      Baxter re-analyzed the data to illustrate correspondence analysis
      (1994: 104-107, Table A6). These data were taken from Nielsen's
      Table 4 showing her seriation. Baxter's version is scrambled in
      order to evaluate different seriation methods and does not include
      the ornament types (illustrated in Nielson's Figure 7). The data
      include Ørsnes's period and subperiod designations (1966).

      .. rubric:: Source
         :name: source

      Baxter, M. J. 1994. *Exploratory Multivariate Analysis in
      Archaeology*. Edinburgh University Press. Edinburgh.

      Nielsen, K. H. 1988. Correspondence Analysis Applied to Hords and
      Graves of the Germanic Iron Age. In *Multivariate Archaeology:
      Numerical Approaches in Scandinavian Archaeology*, edited by
      Torsten Madsen, pp 37-54. Jutland Archaeological Society
      Publications XXI. Arahus University Press.

      Ørsnes, M. 1966. *Form og stil i Sydskandinaviens yngre germanske
      jernalder*. Nationalmuseets skrifter. Arkæologisk-historisk række
      11. Copenhagen.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         if (requireNamespace("MASS", quietly = TRUE)) {
           data(Bornholm)
           Bornholm.ca <- MASS::corresp(Bornholm[, 4:42], nf=2)
           plot(Bornholm.ca$rscore, pch=substring(Bornholm$Period, 1, 1), cex=.75)
           boxplot(Bornholm.ca$rscore[, 1]~Bornholm$Period, main="First CA Axis by Period")
         } else {
           cat("This example requires the MASS package.\n")
         }
