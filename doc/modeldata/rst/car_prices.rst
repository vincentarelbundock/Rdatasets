.. container::

   ========== ===============
   car_prices R Documentation
   ========== ===============

   .. rubric:: Kelly Blue Book resale data for 2005 model year GM cars
      :name: car_prices

   .. rubric:: Description
      :name: description

   Kuiper (2008) collected data on Kelly Blue Book resale data for 804
   GM cars (2005 model year).

   .. rubric:: Value
      :name: value

   +----------------+----------------------------------------------------+
   | ``car_prices`` | data frame of the suggested retail price (column   |
   |                | ``Price``) and various characteristics of each car |
   |                | (columns ``Mileage``, ``Cylinder``, ``Doors``,     |
   |                | ``Cruise``, ``Sound``, ``Leather``, ``Buick``,     |
   |                | ``Cadillac``, ``Chevy``, ``Pontiac``, ``Saab``,    |
   |                | ``Saturn``, ``convertible``, ``coupe``,            |
   |                | ``hatchback``, ``sedan`` and ``wagon``)            |
   +----------------+----------------------------------------------------+

   .. rubric:: Source
      :name: source

   Kuiper, S. (2008). Introduction to Multiple Regression: How Much Is
   Your Car Worth?, *Journal of Statistics Education*, Vol. 16
   http://jse.amstat.org/jse_archive.htm#2008.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(car_prices)
      str(car_prices)
