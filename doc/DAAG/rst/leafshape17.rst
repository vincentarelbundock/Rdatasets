.. container::

   .. container::

      ========= ===============
      leafshape R Documentation
      ========= ===============

      .. rubric:: Full Leaf Shape Data Set
         :name: full-leaf-shape-data-set

      .. rubric:: Description
         :name: description

      Leaf length, width and petiole measurements taken at various sites
      worldwide. The ``leafshape17`` data frame is the subset that has
      data for North Queensland sites.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(leafshape)
         data(leafshape17)

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      bladelen
         leaf length (in mm)

      petiole
         a numeric vector

      bladewid
         leaf width (in mm)

      latitude
         latitude

      logwid
         natural logarithm of width

      logpet
         logarithm of petiole

      loglen
         logarithm of length

      arch
         leaf architecture (0 = plagiotropic, 1 = orthotropic

      location
         a factor with levels ``Sabah``, ``Panama``, ``Costa Rica``,
         ``N Queensland``, ``S Queensland``, ``Tasmania``

      .. rubric:: Source
         :name: source

      King, D.A. and Maindonald, J.H. 1999. Tree architecture in
      relation to leaf dimensions and tree stature in temperate and
      tropical rain forests. Journal of Ecology 87: 1012-1024.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(MASS)
         leaf17.lda <- lda(arch ~ logwid+loglen, data=leafshape17)
         leaf17.hat <- predict(leaf17.lda)
         leaf17.lda
          table(leafshape17$arch, leaf17.hat$class)
         pause()

         tab <- table(leafshape17$arch, leaf17.hat$class)
          sum(tab[row(tab)==col(tab)])/sum(tab)
         leaf17cv.lda <- lda(arch ~ logwid+loglen, data=leafshape17, CV=TRUE)
         tab <- table(leafshape17$arch, leaf17cv.lda$class)
         pause()

         leaf17.glm <- glm(arch ~ logwid + loglen, family=binomial, data=leafshape17)
          options(digits=3)
         summary(leaf17.glm)$coef
         pause()

         leaf17.one <- cv.binary(leaf17.glm)
         table(leafshape17$arch, round(leaf17.one$internal))     # Resubstitution
         pause()

         table(leafshape17$arch, round(leaf17.one$cv))           # Cross-validation
