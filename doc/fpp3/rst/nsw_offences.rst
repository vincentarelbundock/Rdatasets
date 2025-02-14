.. container::

   .. container::

      ============ ===============
      nsw_offences R Documentation
      ============ ===============

      .. rubric:: Monthly offences in NSW
         :name: monthly-offences-in-nsw

      .. rubric:: Description
         :name: description

      ``nsw_offences`` contains monthly data with one measured variable:

      ====== ===========================
      Count: Number of offences reported
      \      
      ====== ===========================

      .. rubric:: Format
         :name: format

      Time series of class 'tsibble'

      .. rubric:: Details
         :name: details

      Each series is uniquely identified using one key:

      ===== ============
      Type: Offence type
      \     
      ===== ============

      covering the period from Apr 1995–Dec 2023.

      .. rubric:: Source
         :name: source

      NSW Bureau of Crime Statistics and Research.
      https://bocsar.nsw.gov.au/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         nsw_offences
