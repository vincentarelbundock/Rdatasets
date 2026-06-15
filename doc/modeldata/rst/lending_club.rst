============ ===============
lending_club R Documentation
============ ===============

Loan data
---------

Description
~~~~~~~~~~~

Loan data

Details
~~~~~~~

These data were downloaded from the Lending Club access site (see below)
and are from the first quarter of 2016. A subset of the rows and
variables are included here. The outcome is in the variable ``Class``
and is either "good" (meaning that the loan was fully paid back or
currently on-time) or "bad" (charged off, defaulted, of 21-120 days
late). A data dictionary can be found on the source website.

Value
~~~~~

================ ============
``lending_club`` a data frame
================ ============

Source
~~~~~~

Lending Club Statistics
https://www.lendingclub.com/info/download-data.action

Examples
~~~~~~~~

.. code:: R

   data(lending_club)
   str(lending_club)
