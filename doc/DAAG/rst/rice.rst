.. container::

   ==== ===============
   rice R Documentation
   ==== ===============

   .. rubric:: Genetically Modified and Wild Type Rice Data
      :name: rice

   .. rubric:: Description
      :name: description

   The ``rice`` data frame has 72 rows and 7 columns. The data are from
   an experiment that compared wild type (wt) and genetically modified
   rice plants (ANU843), each with three different chemical treatments
   (F10, NH4Cl, and NH4NO3).

   .. rubric:: Usage
      :name: usage

   ::

      rice

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   PlantNo
      a numeric vector

   Block
      a numeric vector

   RootDryMass
      a numeric vector

   ShootDryMass
      a numeric vector

   trt
      a factor with levels ``F10``, ``NH4Cl``, ``NH4NO3``,
      ``F10 +ANU843``, ``NH4Cl +ANU843``, ``NH4NO3 +ANU843``

   fert
      a factor with levels ``F10`` ``NH4Cl`` ``NH4NO3``

   variety
      a factor with levels ``wt`` ``ANU843``

   .. rubric:: Source
      :name: source

   Perrine, F.M., Prayitno, J., Weinman, J.J., Dazzo, F.B. and Rolfe, B.
   2001. Rhizobium plasmids are involved in the inhibition or
   stimulation of rice growth and development. Australian Journal of
   Plant Physiology 28: 923-927.

   .. rubric:: Examples
      :name: examples

   ::

      print("One and Two-Way Comparisons - Example 4.5")
      attach(rice)
      oldpar <- par(las = 2)
      stripchart(ShootDryMass ~ trt, pch=1, cex=1, xlab="Level of factor 1")
      detach(rice)
      pause()

      rice.aov <- aov(ShootDryMass ~ trt, data=rice); anova(rice.aov)
      anova(rice.aov)
      pause()

      summary.lm(rice.aov)$coef
      pause()

      rice$trt <- relevel(rice$trt, ref="NH4Cl")
        # Set NH4Cl as the baseline

      fac1 <- factor(sapply(strsplit(as.character(rice$trt)," \\+"), function(x)x[1]))
      anu843 <- sapply(strsplit(as.character(rice$trt), "\\+"), 
      function(x)c("wt","ANU843")[length(x)])
      anu843 <- factor(anu843, levels=c("wt", "ANU843"))
      attach(rice)
      interaction.plot(fac1, anu843, ShootDryMass)
      detach(rice)
      par(oldpar)
