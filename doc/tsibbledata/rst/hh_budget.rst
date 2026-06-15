========= ===============
hh_budget R Documentation
========= ===============

Household budget characteristics
--------------------------------

Description
~~~~~~~~~~~

Annual indicators of household budgets for Australia, Japan, Canada and
USA from 1995-2016.

Format
~~~~~~

Time series of class ``tsibble``.

Details
~~~~~~~

``hh_budget`` is an annual ``tsibble`` with six values:

============= =======================================================
Debt:         Debt as a percentage of net disposable income.
DI:           Annual growth rate of disposable income.
Expenditure:  Annual growth rate of expenditure.
Savings:      Savings as a percentage of household disposable income.
Wealth:       Wealth as a percentage of net disposable income.
Unemployment: Percentage of unemployed in the labour force.
              
============= =======================================================

Each country is uniquely identified by one key:

======== ==========================
Country: The country of the series.
         
======== ==========================

Source
~~~~~~

The Organisation for Economic Co-operation and Development
(https://data.oecd.org/)

Examples
~~~~~~~~

.. code:: R

   library(tsibble)
   hh_budget
