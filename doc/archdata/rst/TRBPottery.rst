.. container::

   .. container::

      ========== ===============
      TRBPottery R Documentation
      ========== ===============

      .. rubric:: Neolithic TRB Pottery from Demark
         :name: neolithic-trb-pottery-from-demark

      .. rubric:: Description
         :name: description

      Measurements at 8 landmarks along one side of 118 Neolithic TRB
      (Trichterrandbecherkultur, Funnelneckbeaker culture) pottery
      vessels representing 3 different groups.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("TRBPottery")

      .. rubric:: Format
         :name: format

      A data frame with 118 observations on the following 17 variables.

      ``Form``
         a factor with levels ``Funnel beakers``, ``Bowls``, and
         ``Flasks``

      ``AX``
         Point 1, x

      ``AY``
         Point 1, y

      ``BX``
         Point 2, x

      ``BY``
         Point 2, y

      ``CX``
         Point 3, x

      ``CY``
         Point 3, y

      ``DX``
         Point 4, x

      ``DY``
         Point 4, y

      ``EX``
         Point 5, x

      ``EY``
         Point 5, y

      ``FX``
         Point 6, x

      ``FY``
         Point 6, y

      ``GX``
         Point 7, x

      ``GY``
         Point 7, y

      ``HX``
         Point 8, x

      ``HY``
         Point 8, y

      .. rubric:: Details
         :name: details

      The data are based on a study by E. K. Nielsen (1983) of Neolithic
      Pottery of 135 complete pots. The measurements are taken at
      landmarks identified along the profile of each pot (see Madsen,
      1988 Figure 5). The data were reanalyzed by Madsen (1988). Baxter
      (1994) reanalyzed the data using several different methods. The
      data were scanned from Table 1 in Madsen (1988, p. 18) which
      included only 118 pots.

      .. rubric:: Source
         :name: source

      Madsen, T. 1988. Multivariate Statistics and Archaeology. In
      *Multivariate Archaeology: Numerical Approaches in Scandinavian
      Archaeology*, edited by T. Madsen, pp 7 - 28.

      Nielsen, E. K. 1983. Tidligneolitiske Keramikfund. Unpublished
      thesis. Institute of Archaeology, University of Copenhagen.

      .. rubric:: References
         :name: references

      Baxter, M. J. 1994. *Exploratory Multivariate Analysis in
      Archaeology*. Edinburgh University Press, pp 128-132.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(TRBPottery)
         TRBPottery.frm <- aggregate(TRBPottery[, -1], list(Form=TRBPottery$Form), mean)
         Xvals <- TRBPottery.frm[, seq(2, 16, by=2)]
         Yvals <- TRBPottery.frm[, seq(3, 17, by=2)]
         matplot(t(Xvals), t(Yvals), xlab="X", ylab="Y", type="l", asp=1, las=1, col="black", lwd=2)
         legend("topleft", levels(TRBPottery$Form), lty=1:3, col="black", lwd=2)
