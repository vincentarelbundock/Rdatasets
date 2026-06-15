============= ===============
aus_mortality R Documentation
============= ===============

Australian mortality data
-------------------------

Description
~~~~~~~~~~~

Weekly death counts and mortality rates in Australia.

Format
~~~~~~

Time series of class 'tsibble'

Details
~~~~~~~

``aus_mortality`` contains weekly data with two measured variables:

============== ==============
``Deaths``:    Death count
``Mortality``: Mortality rate
============== ==============

from 2015 week 01 to 2023 week 12 for five different age groups plus the
total, categorised by sex.

Each series is uniquely identified using three keys:

======== ============================================
``Sex``: Sex of the individual: Male, Female, or Both
``Age``: Age group of the individual
======== ============================================

The mortality rate is defined as the number of deaths per thousand
people in Australia in each week.

Source
~~~~~~

https://mortality.org/Data/STMF (Downloaded on 29 May 2024)

Examples
~~~~~~~~

.. code:: R


   aus_mortality
