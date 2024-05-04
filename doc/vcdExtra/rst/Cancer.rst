.. container::

   .. container::

      ====== ===============
      Cancer R Documentation
      ====== ===============

      .. rubric:: Survival of Breast Cancer Patients
         :name: survival-of-breast-cancer-patients

      .. rubric:: Description
         :name: description

      Three year survival of 474 breast cancer patients according to
      nuclear grade and diagnostic center.

      .. rubric:: Usage
         :name: usage

      ::

         data(Cancer)

      .. rubric:: Format
         :name: format

      A 3-dimensional array resulting from cross-tabulating 3 variables
      for 474 observations. The variable names and their levels are:

      == ============ =========================
      No Name         Levels
      1  ``Survival`` ``"Died", "Surv"``
      2  ``Grade``    ``"Malignant", "Benign"``
      3  ``Center``   ``"Boston", "Glamorgan"``
      \               
      == ============ =========================

      .. rubric:: Source
         :name: source

      Lindsey, J. K. (1995). Analysis of Frequency and Count Data
      Oxford, UK: Oxford University Press. p. 38, Table 2.5.

      Whittaker, J. (1990) Graphical Models in Applied Multivariate
      Statistics New York: John Wiley and Sons, p. 220.

      .. rubric:: Examples
         :name: examples

      ::

         data(Cancer)

         MASS::loglm(~Survival + Grade + Center, data = Cancer)

         vcd::mosaic(Cancer, shade=TRUE)
