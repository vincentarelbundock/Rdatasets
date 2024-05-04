.. container::

   .. container::

      ============== ===============
      solder.balance R Documentation
      ============== ===============

      .. rubric:: Soldering of Components on Printed-Circuit Boards
         :name: soldering-of-components-on-printed-circuit-boards

      .. rubric:: Description
         :name: description

      The ``solder.balance`` data frame has 720 rows and 6 columns,
      representing a balanced subset of a designed experiment varying 5
      factors on the soldering of components on printed-circuit boards.

      The ``solder`` data frame is the full version of the data with 900
      rows. It is located in both the rpart and the survival packages.

      .. rubric:: Usage
         :name: usage

      ::

         solder

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      ``Opening``
         a factor with levels ‘⁠L⁠’, ‘⁠M⁠’ and ‘⁠S⁠’ indicating the
         amount of clearance around the mounting pad.

      ``Solder``
         a factor with levels ‘⁠Thick⁠’ and ‘⁠Thin⁠’ giving the
         thickness of the solder used.

      ``Mask``
         a factor with levels ‘⁠A1.5⁠’, ‘⁠A3⁠’, ‘⁠B3⁠’ and ‘⁠B6⁠’
         indicating the type and thickness of mask used.

      ``PadType``
         a factor with levels ‘⁠D4⁠’, ‘⁠D6⁠’, ‘⁠D7⁠’, ‘⁠L4⁠’, ‘⁠L6⁠’,
         ‘⁠L7⁠’, ‘⁠L8⁠’, ‘⁠L9⁠’, ‘⁠W4⁠’ and ‘⁠W9⁠’ giving the size and
         geometry of the mounting pad.

      ``Panel``
         ``1:3`` indicating the panel on a board being tested.

      ``skips``
         a numeric vector giving the number of visible solder skips.

      .. rubric:: Source
         :name: source

      John M. Chambers and Trevor J. Hastie eds. (1992) *Statistical
      Models in S*, Wadsworth and Brooks/Cole, Pacific Grove, CA.

      .. rubric:: Examples
         :name: examples

      ::

         fit <- rpart(skips ~ Opening + Solder + Mask + PadType + Panel,
                      data = solder.balance, method = "anova")
         summary(residuals(fit))
         plot(predict(fit), residuals(fit))
