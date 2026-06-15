================= ===============
aus_vehicle_sales R Documentation
================= ===============

Australian vehicle sales
------------------------

Description
~~~~~~~~~~~

The number of new motor vehicles sold in Australia.

Format
~~~~~~

Time series of class 'tsibble'

Details
~~~~~~~

``aus_vehicle_sales`` contains monthly data with one measured variable:

========== ===========================
``Count``: The number of vehicles sold
           
========== ===========================

from January 1994 to December 2017 in Australia, indexed by:

========== ===========
``Month``: Year-month.
           
========== ===========

Each series is uniquely identified using the key:

+-----------------------------------------------------------------+
| ``Type``: The type of the vehicle sold (Passenger, SUV, Other). |
+-----------------------------------------------------------------+
|                                                                 |
+-----------------------------------------------------------------+

Source
~~~~~~

Australian Bureau of Statistics.
https://www.abs.gov.au/statistics/industry/tourism-and-transport/sales-new-motor-vehicles/dec-2017.
Cat No. 931401.

Examples
~~~~~~~~

.. code:: R


   aus_vehicle_sales
