.. container::

   ======== ===============
   Pottery2 R Documentation
   ======== ===============

   .. rubric:: Chemical Analysis of Romano-British Pottery
      :name: Pottery2

   .. rubric:: Description
      :name: description

   Results of chemical analyses of 48 specimens of Romano-British
   pottery published by Tubb et al. (1980). The numbers are the
   percentage of various metal oxides found in each sample for elements
   of concentrations greater than 0.01%. This is the original data set
   from Tubb et al. (1980), in contrast to ``Pottery``.

   .. rubric:: Usage
      :name: usage

   ::

      data(Pottery2)

   .. rubric:: Format
      :name: format

   A data frame with 48 observations on the following 12 variables.

   ``Region``
      a factor with levels ``Gl`` ``NF`` ``Wales``

   ``Site``
      a factor with levels ``AshleyRails`` ``Caldicot`` ``Gloucester``
      ``IsleThorns`` ``Llanedryn``

   ``Kiln``
      a factor with levels ``1`` ``2`` ``3`` ``4`` ``5``

   ``Al``
      amount of aluminum oxide, ``Al_2O_3``

   ``Fe``
      amount of iron oxide, ``Fe_2O_3``

   ``Mg``
      amount of magnesium oxide, MgO

   ``Ca``
      amount of calcium oxide, CaO

   ``Na``
      amount of sodium oxide, ``Na_2O``

   ``K``
      amount of potassium oxide, ``K_2O``

   ``Ti``
      amount of titanium oxide, ``TiO_2``

   ``Mn``
      amount of manganese oxide, MnO

   ``Ba``
      amount of BaO

   .. rubric:: Details
      :name: details

   The specimens are identified by their ``rownames`` in the data frame.
   ``Kiln`` indicates at which kiln site the pottery was found; ``Site``
   gives the location names of those sites. The kiln sites come from
   three ``Region``\ s, ``("Gl"=1, "Wales"=(2, 3), "NF"=(4, 5))``, where
   the full names are "Gloucester", "Wales", and "New Forrest".

   The variable ``Kiln`` comes pre-supplied with contrasts to test
   interesting hypotheses related to ``Site`` and ``Region``.

   .. rubric:: Source
      :name: source

   Originally slightly modified from files by David Carlson, now at
   ``RBPottery``.

   .. rubric:: References
      :name: references

   Baxter, M. J. 2003. *Statistics in Archaeology*. Arnold, London.

   Carlson, David L. 2017. *Quantitative Methods in Archaeology Using
   R*. Cambridge University Press, pp 247-255, 335-342.

   Tubb, A., A. J. Parker, and G. Nickless. 1980. The Analysis of
   Romano-British Pottery by Atomic Absorption Spectrophotometry.
   *Archaeometry*, **22**, 153-171.

   .. rubric:: See Also
      :name: see-also

   ``Pottery`` for the related (subset) data set; ``RBPottery`` for a
   newer version with more variables.

   .. rubric:: Examples
      :name: examples

   ::

      data(Pottery2)
      # contrasts for Kiln correspond to between Region [,1:2] and within Region [,3:4]
      contrasts(Pottery2$Kiln)

      pmod <-lm(cbind(Al,Fe,Mg,Ca,Na,K,Ti,Mn,Ba)~Kiln, data=Pottery2)
      Anova(pmod)

      # extract coefficient names for linearHypotheses
      coefs <- rownames(coef(pmod))[-1]

      # test differences among regions
      linearHypothesis(pmod, coefs[1:2])
      # test differences within regions B, C
      linearHypothesis(pmod, coefs[3:4])

      heplot(pmod, fill=c(TRUE,FALSE), hypotheses=list("Region" =coefs[1:2], "WithinBC"=coefs[3:4]))

      # all pairwise views;  note that Ba shows no effect
      pairs(pmod, fill=c(TRUE,FALSE))

      # canonical view, via candisc::heplot

      if (require(candisc)) {

      # canonical analysis: how many dimensions?
      (pcan <- candisc(pmod))

      heplot(pcan, scale=18, fill=c(TRUE,FALSE), var.col="darkgreen", var.lwd=2, var.cex=1.5)

      ## Not run: 
      heplot3d(pcan, scale=8)

      ## End(Not run)
      }
