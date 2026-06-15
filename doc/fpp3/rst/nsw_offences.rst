============ ===============
nsw_offences R Documentation
============ ===============

Monthly offences in NSW
-----------------------

Description
~~~~~~~~~~~

``nsw_offences`` contains monthly data with one measured variable:

====== ===========================
Count: Number of offences reported
       
====== ===========================

Format
~~~~~~

Time series of class 'tsibble'

Details
~~~~~~~

Each series is uniquely identified using one key:

===== ============
Type: Offence type
      
===== ============

covering the period from Apr 1995–Dec 2023.

Source
~~~~~~

NSW Bureau of Crime Statistics and Research. https://bocsar.nsw.gov.au/

Examples
~~~~~~~~

.. code:: R

   nsw_offences
