============ ===============
aus_outbound R Documentation
============ ===============

Monthly short term (<1 year) resident departures in Australia
-------------------------------------------------------------

Description
~~~~~~~~~~~

``aus_outbound`` contains monthly data with one measured variable:

====== =========================================
Count: Number of individuals departing Australia
       
====== =========================================

Format
~~~~~~

Time series of class 'tsibble'

Details
~~~~~~~

Each series is uniquely identified using two keys:

======== =================
County:  Destination
Purpose: Purpose of travel
======== =================

covering the period from Jan 2005–Jun 2017.

Source
~~~~~~

Tourism Research Australia

Examples
~~~~~~~~

.. code:: R

   aus_outbound
