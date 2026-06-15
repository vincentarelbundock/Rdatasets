=========== ===============
aus_tobacco R Documentation
=========== ===============

Australian cigarette and tobacco expenditure
--------------------------------------------

Description
~~~~~~~~~~~

The total household expenditure for cigarette and tobacco consumption
(CTC) in Australia.

Format
~~~~~~

Time series of class 'tsibble'

Details
~~~~~~~

``aus_tobacco`` contains quarterly data with one measured variable:

================ =====================
``Expenditure``: The total expenditure
                 
================ =====================

from 1985 Q3 to 2023 Q4 for the 6 states and 2 territories of Australia,
indexed by:

============ =============
``Quarter``: Year-quarter.
             
============ =============

The prices are represented as a chain volume measure (a representation
of constant prices) in billions of dollars.

Each series is uniquely identified using the key:

+------------------------------------+
| ``State``: The state or territory. |
+------------------------------------+
|                                    |
+------------------------------------+

Source
~~~~~~

Australian Bureau of Statistics.
https://www.abs.gov.au/statistics/economy/national-accounts/australian-national-accounts-national-income-expenditure-and-product/mar-2024

Examples
~~~~~~~~

.. code:: R


   aus_tobacco |> autoplot(Expenditure) + scale_y_log10()
