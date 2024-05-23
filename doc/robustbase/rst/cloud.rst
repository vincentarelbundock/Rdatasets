.. container::

   .. container::

      ===== ===============
      cloud R Documentation
      ===== ===============

      .. rubric:: Cloud point of a Liquid
         :name: cloud-point-of-a-liquid

      .. rubric:: Description
         :name: description

      This data set contains the measurements concerning the cloud point
      of a Liquid, from Draper and Smith (1969). The cloud point is a
      measure of the degree of crystallization in a stock.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(cloud, package="robustbase")

      .. rubric:: Format
         :name: format

      A data frame with 19 observations on the following 2 variables.

      ``Percentage``
         Percentage of I-8

      ``CloudPoint``
         Cloud point

      .. rubric:: Source
         :name: source

      P. J. Rousseeuw and A. M. Leroy (1987) *Robust Regression and
      Outlier Detection*; Wiley, p.96, table 10.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(cloud)
         summary(lm.cloud <- lm(CloudPoint ~., data=cloud))
