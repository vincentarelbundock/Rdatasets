.. container::

   .. container::

      ====== ===============
      cfseal R Documentation
      ====== ===============

      .. rubric:: Cape Fur Seal Data
         :name: cape-fur-seal-data

      .. rubric:: Description
         :name: description

      The ``cfseal`` data frame has 30 rows and 11 columns consisting of
      weight measurements for various organs taken from 30 Cape Fur
      Seals that died as an unintended consequence of commercial
      fishing.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         cfseal

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      age
         a numeric vector

      weight
         a numeric vector

      heart
         a numeric vector

      lung
         a numeric vector

      liver
         a numeric vector

      spleen
         a numeric vector

      stomach
         a numeric vector

      leftkid
         a numeric vector

      rightkid
         a numeric vector

      kidney
         a numeric vector

      intestines
         a numeric vector

      .. rubric:: Source
         :name: source

      Stewardson, C.L., Hemsley, S., Meyer, M.A., Canfield, P.J. and
      Maindonald, J.H. 1999. Gross and microscopic visceral anatomy of
      the male Cape fur seal, Arctocephalus pusillus pusillus
      (Pinnepedia: Otariidae), with reference to organ size and growth.
      Journal of Anatomy (Cambridge) 195: 235-255. (WWF project ZA-348)

      .. rubric:: Examples
         :name: examples

      .. code:: R

         print("Allometric Growth - Example 5.7")

         cfseal.lm <- lm(log(heart) ~ log(weight), data=cfseal); summary(cfseal.lm)
         plot(log(heart) ~ log(weight), data = cfseal, pch=16, xlab = "Heart Weight (g, log scale)", 
         ylab = "Body weight (kg, log scale)", axes=FALSE)
         heartaxis <- 100*(2^seq(0,3))
         bodyaxis <- c(20,40,60,100,180)
         axis(1, at = log(bodyaxis), lab = bodyaxis)
         axis(2, at = log(heartaxis), lab = heartaxis)
         box()
         abline(cfseal.lm)
