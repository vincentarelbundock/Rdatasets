.. container::

   ========= ===============
   Alligator R Documentation
   ========= ===============

   .. rubric:: Alligator Food Choice
      :name: Alligator

   .. rubric:: Description
      :name: description

   The Alligator data, from Agresti (2002), comes from a study of the
   primary food choices of alligators in four Florida lakes. Researchers
   classified the stomach contents of 219 captured alligators into five
   categories: Fish (the most common primary food choice), Invertebrate
   (snails, insects, crayfish, etc.), Reptile (turtles, alligators),
   Bird, and Other (amphibians, plants, household pets, stones, and
   other debris).

   .. rubric:: Usage
      :name: usage

   ::

      data(Alligator)

   .. rubric:: Format
      :name: format

   A frequency data frame with 80 observations on the following 5
   variables.

   ``lake``
      a factor with levels ``George`` ``Hancock`` ``Oklawaha``
      ``Trafford``

   ``sex``
      a factor with levels ``female`` ``male``

   ``size``
      alligator size, a factor with levels ``large`` (>2.3m) ``small``
      (<=2.3m)

   ``food``
      primary food choice, a factor with levels ``bird`` ``fish``
      ``invert`` ``other`` ``reptile``

   ``count``
      cell frequency, a numeric vector

   .. rubric:: Details
      :name: details

   The table contains a fair number of 0 counts.

   ``food`` is the response variable. ``fish`` is the most frequent
   choice, and often taken as a baseline category in multinomial
   response models.

   .. rubric:: Source
      :name: source

   Agresti, A. (2002). *Categorical Data Analysis*, New York: Wiley, 2nd
   Ed., Table 7.1

   .. rubric:: Examples
      :name: examples

   ::

      data(Alligator)

      # change from frequency data.frame to table
      allitable <- xtabs(count ~ lake + sex + size + food, data=Alligator)
      # Agresti's Table 7.1
      structable(food ~ lake + sex + size, allitable)


      plot(allitable, shade=TRUE)

      # mutual independence model
      mosaic(~ food + lake + size, allitable, shade=TRUE)

      # food jointly independent of lake and size
      mosaic(~ food + lake + size, allitable, shade=TRUE, 
             expected = ~lake:size + food)

      if (require(nnet)) {
          # multinomial logit model
          mod1 <- multinom(food ~ lake + size + sex, data=Alligator, weights=count)
      }
