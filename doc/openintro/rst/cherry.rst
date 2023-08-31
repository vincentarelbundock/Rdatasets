.. container::

   ====== ===============
   cherry R Documentation
   ====== ===============

   .. rubric:: Summary information for 31 cherry trees
      :name: cherry

   .. rubric:: Description
      :name: description

   Researchers wanting to understand the relationship between these
   variables for black cherry trees collected data from 31 trees in the
   Allegheny National Forest, Pennsylvania.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      cherry

   .. rubric:: Format
      :name: format

   A data frame with 31 observations on the following 3 variables.

   diam
      diameter in inches (at 54 inches above ground)

   height
      height is measured in feet

   volume
      volume in cubic feet

   .. rubric:: Source
      :name: source

   D.J. Hand. A handbook of small data sets. Chapman & Hall/CRC, 1994.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      library(ggplot2)
      library(broom)

      ggplot(cherry, aes(x = diam, y = volume)) +
        geom_point() +
        geom_smooth(method = "lm")

      mod <- lm(volume ~ diam + height, cherry)
      tidy(mod)
