.. container::

   ==== ===============
   gaba R Documentation
   ==== ===============

   .. rubric:: Effect of pentazocine on post-operative pain (average VAS
      scores)
      :name: gaba

   .. rubric:: Description
      :name: description

   The table shows, separately for males and females, the effect of
   pentazocine on post-operative pain profiles (average VAS scores),
   with (mbac and fbac) and without (mpl and fpl) preoperatively
   administered baclofen. Pain scores are recorded every 20 minutes,
   from 10 minutes to 170 minutes.

   .. rubric:: Usage
      :name: usage

   ::

      gaba

   .. rubric:: Format
      :name: format

   A data frame with 9 observations on the following 7 variables.

   ``min``
      a numeric vector

   ``mbac``
      a numeric vector

   ``mpl``
      a numeric vector

   ``fbac``
      a numeric vector

   ``fpl``
      a numeric vector

   ``avbac``
      a numeric vector

   ``avplac``
      a numeric vector

   .. rubric:: Details
      :name: details

   15 females were given baclofen, as against 3 males. 7 females
   received the placebo, as against 16 males. Averages for the two
   treatments (baclofen/placebo), taken over all trial participants and
   ignoring sex, are misleading.

   .. rubric:: Source
      :name: source

   Gordon, N. C. et al.(1995): 'Enhancement of Morphine Analgesia by the
   GABA\ ``_B`` against Baclofen'. *Neuroscience* 69: 345-349.

   .. rubric:: Examples
      :name: examples

   ::

      data(gaba)
      mr <- range(gaba$min)
      tran <- range(gaba[, c("mbac","mpl","fbac","fpl")])
      ## Means by treatment and sex
      par(mfrow=c(1,2))
      plot(mr, tran, xlab = "Time post pentazocine (min)",
           ylab = "Reduction in VAS pain rating", 
           type = "n", xlim = c(0, 170), ylim = tran)
      points(gaba$min, gaba$fbac, pch = 1, col = 8, lwd = 2, lty = 2, 
             type = "b")
      points(gaba$min, gaba$fpl, pch = 0, col = 8, lwd = 2, lty = 2, 
             type = "b")
      points(gaba$min, gaba$mbac, pch = 16, col = 8, lty = 2, type = "b")
      points(gaba$min, gaba$mpl, pch = 15, col = 8, lty = 2, type = "b")
      box()
      ## Now plot means, by treatment, averaged over all participants
      plot(mr, tran, xlab = "Time post pentazocine (min)",
           ylab = "Reduction in VAS pain rating", 
           type = "n", xlim = c(0, 170), ylim = tran)
      bac <- (15 * gaba$fbac + 3 * gaba$mbac)/18
      plac <- (7 * gaba$fpl + 9 * gaba$mpl)/16
      points(gaba$min, plac, pch = 15, lty = 1, col=1, type = "b")
      points(gaba$min, bac, pch = 16, lty = 1, col=1, type = "b")
      box()
      par(mfrow=c(1,1))
