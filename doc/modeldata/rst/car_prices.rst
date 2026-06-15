========== ===============
car_prices R Documentation
========== ===============

Kelly Blue Book resale data for 2005 model year GM cars
-------------------------------------------------------

Description
~~~~~~~~~~~

Kuiper (2008) collected data on Kelly Blue Book resale data for 804 GM
cars (2005 model year).

Value
~~~~~

+----------------+-----------------------------------------------------+
| ``car_prices`` | data frame of the suggested retail price (column    |
|                | ``Price``) and various characteristics of each car  |
|                | (columns ``Mileage``, ``Cylinder``, ``Doors``,      |
|                | ``Cruise``, ``Sound``, ``Leather``, ``Buick``,      |
|                | ``Cadillac``, ``Chevy``, ``Pontiac``, ``Saab``,     |
|                | ``Saturn``, ``convertible``, ``coupe``,             |
|                | ``hatchback``, ``sedan`` and ``wagon``)             |
+----------------+-----------------------------------------------------+

Source
~~~~~~

Kuiper, S. (2008). Introduction to Multiple Regression: How Much Is Your
Car Worth?, *Journal of Statistics Education*, Vol. 16
https://jse.amstat.org/jse_archive.htm#2008.

Examples
~~~~~~~~

.. code:: R

   data(car_prices)
   str(car_prices)
