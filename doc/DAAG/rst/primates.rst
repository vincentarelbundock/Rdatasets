.. container::

   ======== ===============
   primates R Documentation
   ======== ===============

   .. rubric:: Primate Body and Brain Weights
      :name: primate-body-and-brain-weights

   .. rubric:: Description
      :name: description

   A subset of ``Animals`` data frame from the MASS library. It contains
   the average body and brain measurements of five primates.

   .. rubric:: Usage
      :name: usage

   ::

      primates

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   Bodywt
      a numeric vector consisting of the body weights (in kg) of five
      different primates

   Brainwt
      a numeric vector consisting of the corresponding brain weights (in
      g)

   .. rubric:: Source
      :name: source

   P. J. Rousseeuw and A. M. Leroy (1987) Robust Regression and Outlier
   Detection. Wiley, p. 57.

   .. rubric:: Examples
      :name: examples

   ::

      attach(primates)
      plot(x=Bodywt, y=Brainwt, pch=16,
             xlab="Body weight (kg)", ylab="Brain weight (g)",
             xlim=c(5,300), ylim=c(0,1500))
      chw <- par()$cxy[1]
      chh <- par()$cxy[2]
      text(x=Bodywt+chw, y=Brainwt+c(-.1,0,0,.1,0)*chh,
             labels=row.names(primates), adj=0)
      detach(primates)
