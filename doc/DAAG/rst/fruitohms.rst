.. container::

   ========= ===============
   fruitohms R Documentation
   ========= ===============

   .. rubric:: Electrical Resistance of Kiwi Fruit
      :name: electrical-resistance-of-kiwi-fruit

   .. rubric:: Description
      :name: description

   Data are from a study that examined how the electrical resistance of
   a slab of kiwifruit changed with the apparent juice content.

   .. rubric:: Usage
      :name: usage

   ::

      fruitohms

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   juice
      apparent juice content (percent)

   ohms
      electrical resistance (in ohms)

   .. rubric:: Source
      :name: source

   Harker, F. R. and Maindonald J.H. 1994. Ripening of nectarine fruit.
   *Plant Physiology* 106: 165 - 171.

   .. rubric:: Examples
      :name: examples

   ::

      plot(ohms ~ juice, xlab="Apparent juice content (%)",ylab="Resistance (ohms)", data=fruitohms)
      lines(lowess(fruitohms$juice, fruitohms$ohms), lwd=2)
      pause()

      require(splines)
      attach(fruitohms)
      plot(ohms ~ juice, cex=0.8, xlab="Apparent juice content (%)",
           ylab="Resistance (ohms)", type="n")
      fruit.lmb4 <- lm(ohms ~ bs(juice,4))
      ord <- order(juice)
      lines(juice[ord], fitted(fruit.lmb4)[ord], lwd=2)
      ci <- predict(fruit.lmb4, interval="confidence")
      lines(juice[ord], ci[ord,"lwr"])
      lines(juice[ord], ci[ord,"upr"])
