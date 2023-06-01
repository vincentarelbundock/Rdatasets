.. container::

   ===== ===============
   farms R Documentation
   ===== ===============

   .. rubric:: Ecological Factors in Farm Management
      :name: farms

   .. rubric:: Description
      :name: description

   The ``farms`` data frame has 20 rows and 4 columns. The rows are
   farms on the Dutch island of Terschelling and the columns are factors
   describing the management of grassland.

   .. rubric:: Usage
      :name: usage

   ::

      farms

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   ``Mois``
      Five levels of soil moisture – level 3 does not occur at these 20
      farms.

   ``Manag``
      Grassland management type (``SF`` = standard, ``BF`` = biological,
      ``HF`` = hobby farming, ``NM`` = nature conservation).

   ``Use``
      Grassland use (``U1`` = hay production, ``U2`` = intermediate,
      ``U3`` = grazing).

   ``Manure``
      Manure usage – classes ``C0`` to ``C4``.

   .. rubric:: Source
      :name: source

   J.C. Gower and D.J. Hand (1996) *Biplots*. Chapman & Hall, Table 4.6.

   | Quoted as from:
   | R.H.G. Jongman, C.J.F. ter Braak and O.F.R. van Tongeren (1987)
     *Data Analysis in Community and Landscape Ecology.* PUDOC,
     Wageningen.

   .. rubric:: References
      :name: references

   Venables, W. N. and Ripley, B. D. (2002) *Modern Applied Statistics
   with S.* Fourth edition. Springer.

   .. rubric:: Examples
      :name: examples

   ::

      farms.mca <- mca(farms, abbrev = TRUE)  # Use levels as names
      eqscplot(farms.mca$cs, type = "n")
      text(farms.mca$rs, cex = 0.7)
      text(farms.mca$cs, labels = dimnames(farms.mca$cs)[[1]], cex = 0.7)
