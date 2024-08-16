.. container::

   .. container::

      ============ ===============
      aus_outbound R Documentation
      ============ ===============

      .. rubric:: Monthly short term (<1 year) resident departures in
         Australia
         :name: monthly-short-term-1-year-resident-departures-in-australia

      .. rubric:: Description
         :name: description

      ``aus_outbound`` contains monthly data with one measured variable:

      ====== =========================================
      Count: Number of individuals departing Australia
      \      
      ====== =========================================

      .. rubric:: Format
         :name: format

      Time series of class 'tsibble'

      .. rubric:: Details
         :name: details

      Each series is uniquely identified using two keys:

      ======== =================
      County:  Destination
      Purpose: Purpose of travel
      ======== =================

      covering the period from Jan 2005–Jun 2017.

      .. rubric:: Source
         :name: source

      Tourism Research Australia

      .. rubric:: Examples
         :name: examples

      .. code:: R

         aus_outbound
