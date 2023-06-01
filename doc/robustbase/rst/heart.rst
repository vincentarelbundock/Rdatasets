.. container::

   ===== ===============
   heart R Documentation
   ===== ===============

   .. rubric:: Heart Catherization Data
      :name: heart

   .. rubric:: Description
      :name: description

   This data set was analyzed by Weisberg (1980) and Chambers et al.
   (1983). A catheter is passed into a major vein or artery at the
   femoral region and moved into the heart. The proper length of the
   introduced catheter has to be guessed by the physician. The aim of
   the data set is to describe the relation between the catheter length
   and the patient's height (X1) and weight (X2).

   This data sets is used to demonstrate the effects caused by
   collinearity. The correlation between height and weight is so high
   that either variable almost completely determines the other.

   .. rubric:: Usage
      :name: usage

   ::

      data(heart)

   .. rubric:: Format
      :name: format

   A data frame with 12 observations on the following 3 variables.

   ``height``
      Patient's height in inches

   ``weight``
      Patient's weights in pounds

   ``clength``
      Y: Catheter Length (in centimeters)

   .. rubric:: Note
      :name: note

   There are other ``heart`` datasets in other R packages, notably
   `survival <https://CRAN.R-project.org/package=survival>`__, hence
   considering using ``package = "robustbase"``, see examples.

   .. rubric:: Source
      :name: source

   Weisberg (1980)

   Chambers et al. (1983)

   P. J. Rousseeuw and A. M. Leroy (1987) *Robust Regression and Outlier
   Detection*; Wiley, p.103, table 13.

   .. rubric:: Examples
      :name: examples

   ::

      data(heart, package="robustbase")
      heart.x <- data.matrix(heart[, 1:2]) # the X-variables
      plot(heart.x)
      covMcd(heart.x)
      summary( lm.heart <-     lm(clength ~ . , data = heart))
      summary(lts.heart <- ltsReg(clength ~ . , data = heart))
