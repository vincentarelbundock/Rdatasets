.. container::

   .. container::

      ======== ===============
      phosphor R Documentation
      ======== ===============

      .. rubric:: Phosphorus Content Data
         :name: phosphorus-content-data

      .. rubric:: Description
         :name: description

      This dataset investigates the effect from inorganic and organic
      Phosphorus in the soil upon the phosphorus content of the corn
      grown in this soil, from Prescott (1975).

      .. rubric:: Usage
         :name: usage

      ::

         data(phosphor, package="robustbase")

      .. rubric:: Format
         :name: format

      A data frame with 18 observations on the following 3 variables.

      ``inorg``
         Inorganic soil Phosphorus

      ``organic``
         Organic soil Phosphorus

      ``plant``
         Plant Phosphorus content

      .. rubric:: Source
         :name: source

      P. J. Rousseeuw and A. M. Leroy (1987) *Robust Regression and
      Outlier Detection.* Wiley, p.156, table 24.

      .. rubric:: Examples
         :name: examples

      ::

         data(phosphor)
         plot(phosphor)
         summary(lm.phosphor <- lm(plant ~ ., data = phosphor))
         summary(lts.phosphor <- ltsReg(plant ~ ., data = phosphor))

         phosphor.x <- data.matrix(phosphor[, 1:2])
         cPh <- covMcd(phosphor.x)
         plot(cPh, "dd")
