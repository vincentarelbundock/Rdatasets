========== ===============
aus_retail R Documentation
========== ===============

Australian retail trade turnover
--------------------------------

Description
~~~~~~~~~~~

``aus_retail`` is a monthly ``tsibble`` with one value:

========= ===============================
Turnover: Retail turnover in $Million AUD
          
========= ===============================

Format
~~~~~~

Time series of class ``tsibble``

Details
~~~~~~~

Each series is uniquely identified using two keys:

========= ===================================
State:    The Australian state (or territory)
Industry: The industry of retail trade
          
========= ===================================

Source
~~~~~~

Australian Bureau of Statistics, catalogue number 8501.0, table 11.

Examples
~~~~~~~~

.. code:: R

   library(tsibble)
   aus_retail
