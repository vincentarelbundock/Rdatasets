=== ===============
PBS R Documentation
=== ===============

Monthly Medicare Australia prescription data
--------------------------------------------

Description
~~~~~~~~~~~

``PBS`` is a monthly ``tsibble`` with two values:

======== ===========================
Scripts: Total number of scripts
Cost:    Cost of the scripts in $AUD
         
======== ===========================

Format
~~~~~~

Time series of class ``tsibble``

Details
~~~~~~~

The data is disaggregated using four keys:

+-------------+--------------------------------------------------------+
| Concession: | Concessional scripts are given to pensioners,          |
|             | unemployed, dependents, and other card holders         |
+-------------+--------------------------------------------------------+
| Type:       | Co-payments are made until an individual's script      |
|             | expenditure hits a threshold ($290.00 for concession,  |
|             | $1141.80 otherwise). Safety net subsidies are provided |
|             | to individuals exceeding this amount.                  |
+-------------+--------------------------------------------------------+
| ATC1:       | Anatomical Therapeutic Chemical index (level 1)        |
+-------------+--------------------------------------------------------+
| ATC2:       | Anatomical Therapeutic Chemical index (level 2)        |
+-------------+--------------------------------------------------------+
|             |                                                        |
+-------------+--------------------------------------------------------+

Source
~~~~~~

Medicare Australia

Examples
~~~~~~~~

.. code:: R

   library(tsibble)
   PBS
