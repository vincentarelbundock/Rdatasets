.. container::

   .. container::

      =========== ===============
      PlantGrowth R Documentation
      =========== ===============

      .. rubric:: Results from an Experiment on Plant Growth
         :name: results-from-an-experiment-on-plant-growth

      .. rubric:: Description
         :name: description

      Results from an experiment to compare yields (as measured by dried
      weight of plants) obtained under a control and two different
      treatment conditions.

      .. rubric:: Usage
         :name: usage

      ::

         PlantGrowth

      .. rubric:: Format
         :name: format

      A data frame of 30 cases on 2 variables.

      ===== ========== =======
      [, 1] ``weight`` numeric
      [, 2] ``group``  factor
      ===== ========== =======

      The levels of ``group`` are ‘ctrl’, ‘trt1’, and ‘trt2’.

      .. rubric:: Source
         :name: source

      Dobson, A. J. (1983) *An Introduction to Statistical Modelling*.
      London: Chapman and Hall.

      .. rubric:: Examples
         :name: examples

      ::

         ## One factor ANOVA example from Dobson's book, cf. Table 7.4:
         require(stats); require(graphics)
         boxplot(weight ~ group, data = PlantGrowth, main = "PlantGrowth data",
                 ylab = "Dried weight of plants", col = "lightgray",
                 notch = TRUE, varwidth = TRUE)
         anova(lm(weight ~ group, data = PlantGrowth))
