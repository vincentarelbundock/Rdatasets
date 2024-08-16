.. container::

   .. container::

      ==== ===============
      pelt R Documentation
      ==== ===============

      .. rubric:: Pelt trading records
         :name: pelt-trading-records

      .. rubric:: Description
         :name: description

      Hudson Bay Company trading records for Snowshoe Hare and Canadian
      Lynx furs from 1845 to 1935. This data contains trade records for
      all areas of the company.

      .. rubric:: Format
         :name: format

      Time series of class ``tsibble``

      .. rubric:: Details
         :name: details

      ``pelt`` is an annual ``tsibble`` with two values:

      ===== =========================================
      Hare: The number of Snowshoe Hare pelts traded.
      Lynx: The number of Canadian Lynx pelts traded.
      \     
      ===== =========================================

      .. rubric:: Source
         :name: source

      Hudson Bay Company

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(tsibble)
         pelt
