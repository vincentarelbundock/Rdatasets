========== ===============
deliveries R Documentation
========== ===============

Food Delivery Time Data
-----------------------

Description
~~~~~~~~~~~

Food Delivery Time Data

Details
~~~~~~~

These data are from a study of food delivery times in minutes (i.e., the
time from the initial order to receiving the food) for a single
restaurant. The data contains 10,012 orders from a specific restaurant.
The predictors include:

- The time, in decimal hours, of the order.

- The day of the week for the order.

- The approximate distance in miles between the restaurant and the
  delivery location.

- A set of 27 predictors that count the number of distinct menu items in
  the order.

No times are censored.

Value
~~~~~

============== ========
``deliveries`` a tibble
============== ========

Examples
~~~~~~~~

.. code:: R

   data(deliveries)
   str(deliveries)
