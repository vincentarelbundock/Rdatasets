.. container::

   .. container::

      ================= ===============
      aus_vehicle_sales R Documentation
      ================= ===============

      .. rubric:: Australian vehicle sales
         :name: australian-vehicle-sales

      .. rubric:: Description
         :name: description

      The number of new motor vehicles sold in Australia.

      .. rubric:: Format
         :name: format

      Time series of class 'tsibble'

      .. rubric:: Details
         :name: details

      ``aus_vehicle_sales`` contains monthly data with one measured
      variable:

      ========== ===========================
      ``Count``: The number of vehicles sold
      \          
      ========== ===========================

      from January 1994 to December 2017 in Australia, indexed by:

      ========== ===========
      ``Month``: Year-month.
      \          
      ========== ===========

      Each series is uniquely identified using the key:

      +-----------------------------------------------------------------+
      | ``Type``: The type of the vehicle sold (Passenger, SUV, Other). |
      +-----------------------------------------------------------------+
      |                                                                 |
      +-----------------------------------------------------------------+

      .. rubric:: Source
         :name: source

      Australian Bureau of Statistics.
      https://www.abs.gov.au/statistics/industry/tourism-and-transport/sales-new-motor-vehicles/dec-2017.
      Cat No. 931401.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         aus_vehicle_sales
