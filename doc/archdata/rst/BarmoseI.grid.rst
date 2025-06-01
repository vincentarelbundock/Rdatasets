.. container::

   .. container::

      ============= ===============
      BarmoseI.grid R Documentation
      ============= ===============

      .. rubric:: Flakes per grid unit from Barmose I, South Zealand,
         Denmark
         :name: flakes-per-grid-unit-from-barmose-i-south-zealand-denmark

      .. rubric:: Description
         :name: description

      Flake counts for each of 107 contiguous grid units at the Barmose
      I Maglemosian site used by Blankholm (1991) to illustrate several
      spatial analysis methods.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(BarmoseI.grid)

      .. rubric:: Format
         :name: format

      A data frame with 107 observations on the following 3 variables.

      ``North``
         North coordinate of southwest corner of unit

      ``East``
         East coordinate of southwest corner of unit

      ``Debitage``
         Number of flakes

      .. rubric:: Details
         :name: details

      Barmose I is an early Maglemosian (7500 - 6000 BCE) site located
      in Barmosen in South Zealand, Denmark. The site was excavated in
      1967-1971 by Axel Johansson (Johansson 1971 and 1990). Flake
      counts and grid coordinates were taken from Figure 100 in
      Blankholm (1991) for ``BarmoseI.grid``. ``BarmoseI.pp`` includes
      the locations of 473 artifacts from Appendix C of Blankholm's
      book.

      .. rubric:: Source
         :name: source

      Blankholm, Hans Peter. 1991. *Intrasite Spatial Analysis in Theory
      and Practice*. Aarhus University Press.

      .. rubric:: References
         :name: references

      Carlson, David L. 2017. *Quantitative Methods in Archaeology Using
      R*. Cambridge University Press, pp 358-367.

      Johansson, Axel. 1971. Barmosegruppen. Præboreale Bopladsfund me
      Skiveøkser i Sydsjælland. Foreløbig Meddelelse. *Historisk Samfund
      for Præstø Amt*. Årbog 1968, pp. 101-170.

      Johansson, Axel. 1990. *Barmosegruppen. Præboreale Bopladsfund i
      Sydsjælland*. Årbog. Aarhus University Press.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(BarmoseI.grid)
         plot(North~East, BarmoseI.grid, xlim=c(0, 12), ylim=c(0, 14), type="n", asp=1)
         with(BarmoseI.grid, text(East+.5, North+.5, Debitage, cex=.8))
