=========== ===============
aus_inbound R Documentation
=========== ===============

Monthly short term (<1 year) visitor arrivals to Australia
----------------------------------------------------------

Description
~~~~~~~~~~~

``aus_inbound`` contains monthly data with one measured variable:

====== ===========================================
Count: Number of individuals arriving in Australia
       
====== ===========================================

Format
~~~~~~

Time series of class 'tsibble'

Details
~~~~~~~

Each series is uniquely identified using two keys:

======== =========================
County:  Country of stay/residence
Purpose: Purpose of travel
======== =========================

covering the period from Jan 2005–Feb 2020.

Source
~~~~~~

Tourism Research Australia

Examples
~~~~~~~~

.. code:: R

   aus_inbound
