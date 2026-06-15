============== ===============
aus_production R Documentation
============== ===============

Quarterly production of selected commodities in Australia.
----------------------------------------------------------

Description
~~~~~~~~~~~

Quarterly estimates of selected indicators of manufacturing production
in Australia.

Format
~~~~~~

Time series of class ``tsibble``.

Details
~~~~~~~

``aus_production`` is a half-hourly ``tsibble`` with six values:

============ ==================================================
Beer:        Beer production in megalitres.
Tobacco:     Tobacco and cigarette production in tonnes.
Bricks:      Clay brick production in millions of bricks.
Cement:      Portland cement production in thousands of tonnes.
Electricity: Electricity production in gigawatt hours.
Gas:         Gas production in petajoules.
             
============ ==================================================

Source
~~~~~~

Australian Bureau of Statistics, catalogue number 8301.0.55.001 table 1.

Examples
~~~~~~~~

.. code:: R

   library(tsibble)
   aus_production
