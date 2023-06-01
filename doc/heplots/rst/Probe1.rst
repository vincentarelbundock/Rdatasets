.. container::

   ===== ===============
   Probe R Documentation
   ===== ===============

   .. rubric:: Response Speed in a Probe Experiment
      :name: Probe

   .. rubric:: Description
      :name: description

   Data from a probe experiment testing whether immediate memory for
   sentences is influenced by the phrase structure of the sentence. The
   data sets come from Timm (1975), Ex. 3.14 and Ex. 3.16 (p.244)

   Procedure: Subjects listened to tape-recorded sentences. Each
   sentence was followed by a "probe word" from one of 5 positions
   within the sentence. The subject had to respond with the word which
   immediately followed the probe word in the sentence. The dependent
   measure is response speed = k(1/reaction time).

   Sample sentence:

   ::

      *       The tall man met the young girl who got the new hat.
      Pos'ns:      1    2            3    4    5
      Function:   ADJ1 SUBJ        ADJ2  OBJ  REL.PN

   In ``Probe2``, there are two groups of subjects, pre-selected on a
   test of short term memory.

   .. rubric:: Usage
      :name: usage

   ::

        data(Probe1)
        data(Probe2)
          

   .. rubric:: Format
      :name: format

   ``Probe1``: A data frame with 11 observations on the following 5
   variables.

   ``p1``
      speed at position 1

   ``p2``
      speed at position 2

   ``p3``
      speed at position 3

   ``p4``
      speed at position 4

   ``p5``
      speed at position 5

   ``Probe2``: A data frame with 20 observations on the following 6
   variables.

   ``stm``
      Short term memory capacity: a factor with levels ``High`` ``Low``

   ``p1``
      speed at position 1

   ``p2``
      speed at position 2

   ``p3``
      speed at position 3

   ``p4``
      speed at position 4

   ``p5``
      speed at position 5

   .. rubric:: Details
      :name: details

   These data sets (fictitious) are used as examples of single-sample
   and two-sample profile analysis or simple repeated measure designs
   with structured contrasts.

   .. rubric:: Source
      :name: source

   Timm, N. (1975) *Multivariate analysis, with applications in
   education and psychology* Brooks/Cole.

   .. rubric:: Examples
      :name: examples

   ::

      data(Probe1)
      boxplot(Probe1)

      pmod1 <- lm(cbind(p1,p2,p3,p4,p5) ~ 1, data=Probe1)
      idata <- data.frame(position=factor(1:5))

      library(car)
      (pmod1.aov <- Anova(pmod1, idata=idata, idesign=~position))

      # using default contrasts (p5 as reference level)
      heplot(pmod1, manova=pmod1.aov, 
             iterm="position", 
             type="III", 
             idata=idata, idesign=~position)
      pairs(pmod1, manova=pmod1.aov, 
             iterm="position", 
             type="III", 
             idata=idata, idesign=~position)

      # contrasts for substantative hypotheses regarding
      # sentence position effects
      C <- matrix(c(
          1, 1, -1, -1, 0,
          1, -1, 1, -1, 0,
          1, -1, -1, 1, 0,
          1, 1, 1, 1, -4), 5, 4)
      rownames(C) <- paste("p", 1:5, sep="")
      colnames(C) <- c("SubPred", "AdjNoun", "SPxAN", "RelPN")

      contrasts(idata$position)<- C
      (pmod1.aov <- Anova(pmod1, idata=idata, idesign=~position))
      heplot(pmod1, manova=pmod1.aov, iterm="position", type="III", idata=idata, idesign=~position)
      pairs(pmod1, manova=pmod1.aov, iterm="position", type="III", idata=idata, idesign=~position)
