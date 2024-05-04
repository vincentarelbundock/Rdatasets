.. container::

   .. container::

      ======== ===============
      bushfire R Documentation
      ======== ===============

      .. rubric:: Campbell Bushfire Data
         :name: campbell-bushfire-data

      .. rubric:: Description
         :name: description

      This data set was used by Campbell (1984) to locate bushfire
      scars. The dataset contains satelite measurements on five
      frequency bands, corresponding to each of 38 pixels.

      .. rubric:: Usage
         :name: usage

      ::

         data(bushfire, package="robustbase")

      .. rubric:: Format
         :name: format

      A data frame with 38 observations on 5 variables.

      .. rubric:: Source
         :name: source

      Maronna, R.A. and Yohai, V.J. (1995) The Behavoiur of the
      Stahel-Donoho Robust Multivariate Estimator. *Journal of the
      American Statistical Association* **90**, 330–341.

      .. rubric:: Examples
         :name: examples

      ::

         data(bushfire)
         plot(bushfire)
         covMcd(bushfire)
