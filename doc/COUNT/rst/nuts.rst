.. container::

   ==== ===============
   nuts R Documentation
   ==== ===============

   .. rubric:: nuts
      :name: nuts

   .. rubric:: Description
      :name: description

   Squirrel data set (nuts) from Zuur, Hilbe, and Ieno (2013). As
   originally reported by Flaherty et al (2012), researchers recorded
   information about squirrel behavior and forest attributes across
   various plots in Scotland's Abernathy Forest. The study focused on
   the following variables. response cones number of cones stripped by
   red squirrels per plot predictor sntrees standardized number of trees
   per plot sheight standardized mean tree height per plot scover
   standardized percentage of canopy cover per plot The stripped cone
   count was only taken when the mean diameter of trees was under 0.6m
   (dbh).

   .. rubric:: Usage
      :name: usage

   ::

      data(nuts)

   .. rubric:: Format
      :name: format

   A data frame with 52 observations on the following 8 variables.

   ``cones``
      number cones stripped by squirrels

   ``ntrees``
      number of trees per plot

   ``dbh``
      number DBH per plot

   ``height``
      mean tree height per plot

   ``cover``
      canopy closure (as a percentage)

   ``sntrees``
      standardized number of trees per plot

   ``sheight``
      standardized mean tree height per plot

   ``scover``
      standardized canopy closure (as a percentage)

   .. rubric:: Details
      :name: details

   nuts is saved as a data frame. Count models use ntrees as response
   variable. Counts start at 3

   .. rubric:: Source
      :name: source

   Zuur, Hilbe, Ieno (2013), A Beginner's Guide to GLM and GLMM using R,
   Highlands

   .. rubric:: References
      :name: references

   Hilbe, Joseph M (2014), Modeling Count Data, Cambridge University
   Press Zuur, Hilbe, Ieno (2013), A Beginner's Guide to GLM and GLMM
   using R, Highlands. Flaherty, S et al (2012), "The impact of forest
   stand structure on red squirrels habitat use", Forestry 85:437-444.

   .. rubric:: Examples
      :name: examples

   ::

      data(nuts)
      nut <- subset(nuts, dbh < 0.6)
      # sntrees <- scale(nuts$ntrees)
      # sheigtht <- scale(nuts$height)
      # scover <- scale(nuts$cover)
      summary(PO <- glm(cones ~ sntrees + sheight + scover, family=quasipoisson, data=nut))
