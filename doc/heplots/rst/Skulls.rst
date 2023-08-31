.. container::

   ====== ===============
   Skulls R Documentation
   ====== ===============

   .. rubric:: Egyptian Skulls
      :name: Skulls

   .. rubric:: Description
      :name: description

   Measurements made on Egyptian skulls from five epochs.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("Skulls")

   .. rubric:: Format
      :name: format

   A data frame with 150 observations on the following 5 variables.

   ``epoch``
      the epoch the skull as assigned to, an ordered factor with levels
      ``c4000BC`` ``c3300BC``, ``c1850BC``, ``c200BC``, and ``cAD150``,
      where the years are only given approximately, of course.

   ``mb``
      maximal breadth of the skull.

   ``bh``
      basibregmatic height of the skull.

   ``bl``
      basialiveolar length of the skull.

   ``nh``
      nasal height of the skull.

   .. rubric:: Details
      :name: details

   The epochs correspond to the following periods of Egyptian history:

   #. the early predynastic period (circa 4000 BC);

   #. the late predynastic period (circa 3300 BC);

   #. the 12th and 13th dynasties (circa 1850 BC);

   #. the Ptolemiac period (circa 200 BC);

   #. the Roman period (circa 150 AD).

   The question is whether the measurements change over time.
   Non-constant measurements of the skulls over time would indicate
   interbreeding with immigrant populations.

   Note that using polynomial contrasts for ``epoch`` essentially treats
   the time points as equally spaced.

   .. rubric:: Source
      :name: source

   D. J. Hand, F. Daly, A. D. Lunn, K. J. McConway and E. Ostrowski
   (1994). *A Handbook of Small Datasets*, Chapman and Hall/CRC, London.

   .. rubric:: References
      :name: references

   Thomson, A. and Randall-Maciver, R. (1905) *Ancient Races of the
   Thebaid*, Oxford: Oxford University Press.

   Hand, D. J., F. Daly, A. D. Lunn, K. J. McConway and E. Ostrowski
   (1994). *A Handbook of Small Datasets*, Chapman and Hall/CRC, London.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(Skulls)
      library(car)    # for Anova

      # make shorter labels for epochs
      Skulls$epoch <- factor(Skulls$epoch, labels=sub("c","",levels(Skulls$epoch)))

      # longer variable labels
      vlab <- c("maxBreadth", "basibHeight", "basialLength", "nasalHeight")

      # fit manova model
      sk.mod <- lm(cbind(mb, bh, bl, nh) ~ epoch, data=Skulls)

      Anova(sk.mod)
      summary(Anova(sk.mod))

      # test trends over epochs
      print(linearHypothesis(sk.mod, "epoch.L"), SSP=FALSE) # linear component
      print(linearHypothesis(sk.mod, "epoch.Q"), SSP=FALSE) # quadratic component

      # typical scatterplots are not very informative
      scatterplot(mb ~ bh|epoch, data=Skulls, 
                  ellipse = list(levels=0.68), 
                  smooth=FALSE, 
                  legend = list(coords="topright"),
                  xlab=vlab[2], ylab=vlab[1])

      scatterplot(mb ~ bl|epoch, data=Skulls, 
                  ellipse = list(levels=0.68), 
                  smooth=FALSE, 
                  legend = list(coords="topright"),
                  xlab=vlab[3], ylab=vlab[1])

      # HE plots

      heplot(sk.mod, 
             hypotheses=list(Lin="epoch.L", Quad="epoch.Q"), 
             xlab=vlab[1], ylab=vlab[2])

      pairs(sk.mod, 
            hypotheses=list(Lin="epoch.L", Quad="epoch.Q"), 
            var.labels=vlab)

      # 3D plot shows that nearly all of hypothesis variation is linear!
      ## Not run: 
      heplot3d(sk.mod, hypotheses=list(Lin="epoch.L", Quad="epoch.Q"), col=c("pink", "blue"))

      # view in canonical space
      if (require(candisc)) {
          sk.can <- candisc(sk.mod)
          sk.can
          heplot(sk.can)
          heplot3d(sk.can)
      }

      ## End(Not run)
