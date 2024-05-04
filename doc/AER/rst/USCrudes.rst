.. container::

   .. container::

      ======== ===============
      USCrudes R Documentation
      ======== ===============

      .. rubric:: US Crudes Data
         :name: us-crudes-data

      .. rubric:: Description
         :name: description

      Cross-section data originating from 99 US oil field postings.

      .. rubric:: Usage
         :name: usage

      ::

         data("USCrudes")

      .. rubric:: Format
         :name: format

      A data frame containing 99 observations on 3 variables.

      price
         Crude prices (USD/barrel).

      gravity
         Gravity (degree API).

      sulphur
         Sulphur (in %).

      .. rubric:: Source
         :name: source

      The data is from Baltagi (2002).

      .. rubric:: References
         :name: references

      Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

      .. rubric:: See Also
         :name: see-also

      ``Baltagi2002``

      .. rubric:: Examples
         :name: examples

      ::

         data("USCrudes")
         plot(price ~ gravity, data = USCrudes)
         plot(price ~ sulphur, data = USCrudes)
         fm <- lm(price ~ sulphur + gravity, data = USCrudes)

         ## 3D Visualization
         library("scatterplot3d")
         s3d <- scatterplot3d(USCrudes[, 3:1], pch = 16)
         s3d$plane3d(fm, lty.box = "solid", col = 4)
