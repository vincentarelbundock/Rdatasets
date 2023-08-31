.. container::

   ========= ===============
   cricketer R Documentation
   ========= ===============

   .. rubric:: Lifespans of UK 1st class cricketers born 1840-1960
      :name: cricketer

   .. rubric:: Description
      :name: description

   Year and birth, lifespan, etc, of British first class cricketers,
   born 1840-1960, whose handedness could be determined from information
   in the Who's who of cricketers. The status (alive=0, dead =1), and
   lifetime or lifespan, is for 1992.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(cricketer)

   .. rubric:: Format
      :name: format

   A data frame with 5960 observations on the following 8 variables.

   ``left``
      a factor with levels ``right`` ``left``

   ``year``
      numeric, year of birth

   ``life``
      numeric, lifetime or lifespan to 1992

   ``dead``
      numeric (0 = alive (censored), 1 = dead, in 1992)

   ``acd``
      numeric (0 = not accidental or not dead, 1 = accidental death)

   ``kia``
      numeric (0 = not killed in action, 1 = killed in action)

   ``inbed``
      numeric (0 = did not die in bed, 1 = died in bed)

   ``cause``
      a factor with levels ``alive`` ``acd`` (accidental death)
      ``inbed`` (died in bed)

   .. rubric:: Details
      :name: details

   Note that those 'killed in action' (mostly during World Wars I and
   II) form a subset of those who died by accident.

   .. rubric:: Source
      :name: source

   John Aggleton, Martin Bland. Data were collated as described in
   Aggleton et al.

   .. rubric:: References
      :name: references

   Aggleton JP, Bland JM, Kentridge RW, Neave NJ 1994. Handedness and
   longevity: an archival study of cricketers. British Medical Journal
   309, 1681-1684.

   Bailey P, Thorne P, Wynne-Thomas P. 1993. Who's Who of Cricketers.
   2nd ed, London, Hamlyn.

   Bland M and Altman D. 2005. Do the left-handed die young?
   Significance 2, 166-170.

   .. rubric:: See Also
      :name: see-also

   ``earlycrcktr``.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(cricketer)
      numLH <- xtabs(~ left+year, data=cricketer)
      propLH <- prop.table(numLH, margin=2)[2,]
      yr <- as.numeric(colnames(numLH))
      plot(propLH ~ yr)
      cricketer$lh <- unclass(cricketer$left)-1
      left2.hat <- fitted(lm(lh ~ poly(year,2), data=cricketer))
      ord <- order(cricketer$year)
      lines(left2.hat[ord] ~ cricketer$year[ord])
      library(splines)
      ns3.hat <- fitted(lm(lh ~ ns(year,3), data=cricketer))
      lines(ns3.hat[ord] ~ cricketer$year[ord], col="red")
      require(survival)
      summary(coxph(Surv(life, kia) ~ bs(year,3) +left, data=cricketer))
      cricketer$notacdDead <- with(cricketer, {dead[acd==1]<-0; dead})
      summary(coxph(Surv(life, notacdDead) ~ ns(year,2) +left, data=cricketer))
