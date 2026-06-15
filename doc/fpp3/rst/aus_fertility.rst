============= ===============
aus_fertility R Documentation
============= ===============

Australian fertility rates
--------------------------

Description
~~~~~~~~~~~

``aus_fertility`` contains annual data on one measured variable:

===== ===================================
Rate: Fertility rate (per thousand women)
      
===== ===================================

Format
~~~~~~

Time series of class 'tsibble'

Details
~~~~~~~

Each series is uniquely identified using two keys:

======= =================================
Region: Australia, states and territories
Age:    Age of the woman
        
======= =================================

based on calendar year of registration data. It covers the period from
1975–2022.

Source
~~~~~~

Australian Bureau of Statistics.
https://www.abs.gov.au/statistics/people/population/births-australia/2022

Examples
~~~~~~~~

.. code:: R

   aus_fertility
