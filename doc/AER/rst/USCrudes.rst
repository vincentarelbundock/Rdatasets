======== ===============
USCrudes R Documentation
======== ===============

US Crudes Data
--------------

Description
~~~~~~~~~~~

Cross-section data originating from 99 US oil field postings.

Usage
~~~~~

::

   data("USCrudes")

Format
~~~~~~

A data frame containing 99 observations on 3 variables.

price
   Crude prices (USD/barrel).

gravity
   Gravity (degree API).

sulphur
   Sulphur (in %).

Source
~~~~~~

The data is from Baltagi (2002).

References
~~~~~~~~~~

Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

See Also
~~~~~~~~

``Baltagi2002``

Examples
~~~~~~~~

::

   data("USCrudes")
   plot(price ~ gravity, data = USCrudes)
   plot(price ~ sulphur, data = USCrudes)
   fm <- lm(price ~ sulphur + gravity, data = USCrudes)

   ## 3D Visualization
   if(require("scatterplot3d")) {
     s3d <- scatterplot3d(USCrudes[, 3:1], pch = 16)
     s3d$plane3d(fm, lty.box = "solid", col = 4)
   }
