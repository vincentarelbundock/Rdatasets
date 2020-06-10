=========== ===============
leafshape17 R Documentation
=========== ===============

Subset of Leaf Shape Data Set
-----------------------------

Description
~~~~~~~~~~~

The ``leafshape17`` data frame has 61 rows and 8 columns. These are leaf
length, width and petiole measurements taken at several sites in
Australia. This is a subset of the ``leafshape`` data frame.

Usage
~~~~~

::

   leafshape17

Format
~~~~~~

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
   logarithm of petiole measurement

loglen
   logarithm of length

arch
   leaf architecture (0 = orthotropic, 1 = plagiotropic)

Source
~~~~~~

King, D.A. and Maindonald, J.H. 1999. Tree architecture in relation to
leaf dimensions and tree stature in temperate and tropical rain forests.
Journal of Ecology 87: 1012-1024.

Examples
~~~~~~~~

::

   print("Discriminant Analysis - Example 11.2")

   require(MASS)
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
