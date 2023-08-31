.. container::

   ==== ===============
   Oslo R Documentation
   ==== ===============

   .. rubric:: Oslo Transect Subset Data
      :name: Oslo

   .. rubric:: Description
      :name: description

   The Oslo data set contains chemical concentrations of 332 samples of
   different plant species collected along a 120 km transect running
   through the city of Oslo, Norway. It is a subset of the
   ``OsloTransect`` data provided by the ``rrcov`` package.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(Oslo)

   .. rubric:: Format
      :name: format

   A data frame with 332 observations on the following 14 variables.

   ``site``
      transect site ID, a factor with levels ``102`` ``103`` ``104``
      ``105`` ``106`` ``107`` ``108`` ``109`` ``111`` ``112`` ``113``
      ``114`` ``115`` ``116`` ``117`` ``118`` ``119`` ``121`` ``122``
      ``123`` ``124`` ``125`` ``126`` ``127`` ``128`` ``129`` ``131``
      ``132`` ``133`` ``134`` ``135`` ``136`` ``138`` ``139`` ``141``
      ``142`` ``143`` ``144``

   ``XC``
      X coordinate, a numeric vector

   ``YC``
      Y coordinate, a numeric vector

   ``forest``
      forest type, a factor with levels ``birspr`` ``mixdec`` ``pine``
      ``sprbir`` ``sprpin`` ``spruce``

   ``weather``
      weather type, a factor with levels ``cloud`` ``moist`` ``nice``
      ``rain``

   ``litho``
      lithological type, a factor with levels ``camsed``
      (Cambro-Silurian sedimentary), ``gneis_o`` (Precambrian gneisses -
      Oslo), ``gneis_r`` (- Randsfjord), ``magm`` (Magmatic rocks)

   ``altitude``
      altitude, a numeric vector

   ``Cu``
      Copper, a numeric vector

   ``Fe``
      Iron, a numeric vector

   ``K``
      Potassium, a numeric vector

   ``Mg``
      Magnesium, a numeric vector

   ``Mn``
      Manganese, a numeric vector

   ``P``
      Lead, a numeric vector

   ``Zn``
      Zinc, a numeric vector

   .. rubric:: Details
      :name: details

   The ``OsloTransect`` contains 360 observations, with 9 observations
   per site. Only 7 chemical elements were retained from the 25
   contained in the ``OsloTransect`` data, and these were all
   log-transformed, following Todorov and Filzmoser (2009).

   Only complete cases on these variables were retained, and two
   lithological types of low frequency were removed, leaving 332
   observations.

   .. rubric:: Source
      :name: source

   Reimann, C., Arnoldussen, A., Boyd, R., Finne, T.E., Koller, F.,
   Nordgulen, Oe., And Englmaier, P. (2007) Element contents in leaves
   of four plant species (birch, mountain ash, fern and spruce) along
   anthropogenic and geogenic concentration gradients, *The Science of
   the Total Environment*, 377, 416-433.

   .. rubric:: References
      :name: references

   Todorov V. and Filzmoser P. (2009) Robust statistic for the one-way
   MANOVA, submitted to the *Journal of Environmetrics*.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(Oslo)
      table(Oslo$litho)

      Oslo.mod <- lm(cbind(Cu, K, Mg, Mn, P, Zn) ~ litho, data=Oslo)
      Anova(Oslo.mod)

      heplot(Oslo.mod, var=c("Cu", "Mn"))
      pairs(Oslo.mod)

      ## Not run: 
      if(require(candisc)) {
        Oslo.can <- candisc(Oslo.mod)
        Oslo.can
        heplot(Oslo.can)
        if(requireNamespace("rgl")){
          heplot3d(Oslo.can, shade=TRUE, wire=FALSE, alpha=0.5, var.col="red")
        }
      }

      ## End(Not run)
