=========== ===============
BarmoseI.pp R Documentation
=========== ===============

Piece plotted artifacts from Barmose I, South Zealand, Denmark
--------------------------------------------------------------

Description
~~~~~~~~~~~

Two dimensional locations of 473 artifacts at the Barmose I Maglemosian
site used by Blankholm (1991) to illustrate several spatial analysis
methods.

Usage
~~~~~

.. code:: R

   data(BarmoseI.pp)

Format
~~~~~~

A data frame with 473 observations on the following 4 variables.

``North``
   North coordinate

``East``
   East coordinate

``Class``
   Numeric code used by Blankholm: ``1``, ``2``, ``3``, ``4``, ``5``,
   ``6``, ``7``, ``8``, ``9``, ``10``, ``11``

``Label``
   Artifact type: ``Scrapers``, ``Burins``, ``Lanceolate Microliths``,
   ``Microburins``, ``Flake Axes``, ``Core Axes``, ``Square Knives``,
   ``Blade/Flake Knives``, ``Denticulated/Notched Pieces``, ``Cores``,
   ``Core Platforms``

Details
~~~~~~~

Barmose I is an early Maglemosian (7500 - 6000 BCE) site located in
Barmosen in South Zealand, Denmark. The site was excavated in 1967-1971
by Axel Johansson (Johansson 1971 and 1990). Flake counts and grid
coordinates were taken from Figure 100 in Blankholm (1991) for
``BarmoseI.grid``. ``BarmoseI.pp`` includes the locations of 473
artifacts from Appendix C of Blankholm's book (1991).

Source
~~~~~~

Blankholm, Hans Peter. 1991. *Intrasite Spatial Analysis in Theory and
Practice*. Aarhus University Press.

References
~~~~~~~~~~

Carlson, David L. 2017. *Quantitative Methods in Archaeology Using R*.
Cambridge University Press, pp 367-377.

Johansson, Axel. 1971. Barmosegruppen. Præboreale Bopladsfund me
Skiveøkser i Sydsjælland. Foreløbig Meddelelse. *Historisk Samfund for
Præstø Amt*. Årbog 1968, pp. 101–170.

Johansson, Axel. 1990. *Barmosegruppen. Præboreale Bopladsfund i
Sydsjælland*. Årbog. Aarhus University Press.

Examples
~~~~~~~~

.. code:: R

   data(BarmoseI.pp)
   plot(North~East, BarmoseI.pp, asp=1, pch=as.numeric(Class))
   legend("bottomleft", levels(BarmoseI.pp$Label), pch=1:11, cex=.75)
