.. container::

   .. container::

      ========== ===============
      deliveries R Documentation
      ========== ===============

      .. rubric:: Food Delivery Time Data
         :name: food-delivery-time-data

      .. rubric:: Description
         :name: description

      Food Delivery Time Data

      .. rubric:: Details
         :name: details

      These data are from a study of food delivery times in minutes
      (i.e., the time from the initial order to receiving the food) for
      a single restaurant. The data contains 10,012 orders from a
      specific restaurant. The predictors include:

      -  The time, in decimal hours, of the order.

      -  The day of the week for the order.

      -  The approximate distance in miles between the restaurant and
         the delivery location.

      -  A set of 27 predictors that count the number of distinct menu
         items in the order.

      No times are censored.

      .. rubric:: Value
         :name: value

      ============== ========
      ``deliveries`` a tibble
      ============== ========

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(deliveries)
         str(deliveries)
