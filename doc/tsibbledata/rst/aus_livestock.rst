============= ===============
aus_livestock R Documentation
============= ===============

Australian livestock slaughter
------------------------------

Description
~~~~~~~~~~~

Meat production in Australia for human consumption

Format
~~~~~~

Time series of class ``tsibble``

Details
~~~~~~~

``aus_livestock`` is a monthly ``tsibble`` with one value:

====== ==============================
Count: Number of animals slaughtered.
       
====== ==============================

Each series is uniquely identified using two keys:

======= ====================================
Animal: The animal slaughtered.
State:  The Australian state (or territory).
        
======= ====================================

Source
~~~~~~

Australian Bureau of Statistics, catalogue number 7218.0.55.001 tables 1
to 7.

Examples
~~~~~~~~

.. code:: R

   library(tsibble)
   aus_livestock
