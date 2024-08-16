.. container::

   .. container::

      =========== ===============
      aus_inbound R Documentation
      =========== ===============

      .. rubric:: Monthly short term (<1 year) visitor arrivals to
         Australia
         :name: monthly-short-term-1-year-visitor-arrivals-to-australia

      .. rubric:: Description
         :name: description

      ``aus_inbound`` contains monthly data with one measured variable:

      ====== ===========================================
      Count: Number of individuals arriving in Australia
      \      
      ====== ===========================================

      .. rubric:: Format
         :name: format

      Time series of class 'tsibble'

      .. rubric:: Details
         :name: details

      Each series is uniquely identified using two keys:

      ======== =========================
      County:  Country of stay/residence
      Purpose: Purpose of travel
      ======== =========================

      covering the period from Jan 2005–Feb 2020.

      .. rubric:: Source
         :name: source

      Tourism Research Australia

      .. rubric:: Examples
         :name: examples

      .. code:: R

         aus_inbound
