======== ===============
RBGlass2 R Documentation
======== ===============

Romano-British Glass, Trace Elements
------------------------------------

Description
~~~~~~~~~~~

The concentrations for 11 trace elements in 105 Romano-British waste
glass specimens from two furnace sites (Leicester and Mancetter).

Usage
~~~~~

.. code:: R

   data("RBGlass2")

Format
~~~~~~

A data frame with 105 observations on the following 12 variables.

``Site``
   a factor with levels ``Leicester`` and ``Mancetter``

``Ba``
   Barium ppm

``Co``
   Cobalt ppm

``Cr``
   Chromium ppm

``Cu``
   Copper ppm

``Li``
   Lithium ppm

``Ni``
   Nickel ppm

``Sr``
   Strontium ppm

``V``
   Vanadium ppm

``Y``
   Yttrium ppm

``Zn``
   Zinc ppm

``Zr``
   Zirconium ppm

Details
~~~~~~~

The concentrations for 11 trace elements in 105 Romano-British waste
glass specimens from two furnace sites (Leicester and Mancetter) come
from Caroline Jackson's Ph. D. thesis at Bradford University. The data
here were scanned from from Baxter (1994) Table A2. Measurements are
parts per million (ppm) for each of 11 elements.

Source
~~~~~~

Baxter, M. J. 1994. *Exploratory Multivariate Analysis in Archaeology*.
Edinburgh University Press.

Jackson, C. M. 1992. A Compositional Analysis of Roman and Early
Post-Roman Glass and Glass Working Waste from Selected British Sites
Towards an Understanding of the Technology of Glass-Making Through
Analysis by Inductively-Coupled Plasma Spectrometry. Unpublished PhD
thesis. Bradford University (BL: D214554).

References
~~~~~~~~~~

Baxter, M. J., Cool H.E.M., Heyworth M.P. and Jackson, C.M. 1995.
Compositional Variability in Colourless Roman Vessel Glass.
*Archaeometry* 37(1), 129-141.

Baxter, M. J., Cool, H. E. M. and Jackson, C. M. (2005). Further Studies
in the Compositional Variability of Colourless Romano-British Glass.
*Archaeometry* 47, 47-68.

Jackson, C M, J R Hunter, S E Warren, and H E M Cool. 1991. The Analysis
of Blue-Green Glass and Glassy Waste from Two Romano-British Glass
Working Sites. In *Archaeometry 1990*, edited by E. Pernicka and G. A.
Wagner, pp 295-304. Birkhäuser Verlag.

Examples
~~~~~~~~

.. code:: R

   data(RBGlass2)
   RBGlass2.pca <- prcomp(RBGlass2[, -1], scale.=TRUE)
   biplot(RBGlass2.pca, xlabs=abbreviate(RBGlass2$Site, 1), cex=.75)
