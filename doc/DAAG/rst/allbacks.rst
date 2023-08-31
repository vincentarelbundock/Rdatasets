.. container::

   ======== ===============
   allbacks R Documentation
   ======== ===============

   .. rubric:: Measurements on a Selection of Books
      :name: allbacks

   .. rubric:: Description
      :name: description

   The ``allbacks`` data frame gives measurements on the volume and
   weight of 15 books, some of which are softback (pb) and some of which
   are hardback (hb). Area of the hardback covers is also included.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      allbacks

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   volume
      book volumes in cubic centimeters

   area
      hard board cover areas in square centimeters

   weight
      book weights in grams

   cover
      a factor with levels ``hb`` hardback, ``pb`` paperback

   .. rubric:: Source
      :name: source

   The bookshelf of J. H. Maindonald.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      print("Multiple Regression - Example 6.1")
      attach(allbacks)
      volume.split <- split(volume, cover)
      weight.split <- split(weight, cover)
      plot(weight.split$hb ~ volume.split$hb, pch=16, xlim=range(volume), ylim=range(weight),
           ylab="Weight (g)", xlab="Volume (cc)")
      points(weight.split$pb ~ volume.split$pb, pch=16, col=2)
      pause()

      allbacks.lm <- lm(weight ~ volume+area)
      summary(allbacks.lm)
      detach(allbacks)
      pause()

      anova(allbacks.lm)
      pause()

      model.matrix(allbacks.lm)
      pause()

      print("Example 6.1.1")
      allbacks.lm0 <- lm(weight ~ -1+volume+area, data=allbacks)
      summary(allbacks.lm0)
      pause()

      print("Example 6.1.2")
      oldpar <- par(mfrow=c(2,2))
      plot(allbacks.lm0)
      par(oldpar)
      allbacks.lm13 <- lm(weight ~ -1+volume+area, data=allbacks[-13,])
      summary(allbacks.lm13)
      pause()

      print("Example 6.1.3")
      round(coef(allbacks.lm0),2)  # Baseline for changes
      round(lm.influence(allbacks.lm0)$coef,2)
