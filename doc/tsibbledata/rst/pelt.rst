==== ===============
pelt R Documentation
==== ===============

Pelt trading records
--------------------

Description
~~~~~~~~~~~

Hudson Bay Company trading records for Snowshoe Hare and Canadian Lynx
furs from 1845 to 1935. This data contains trade records for all areas
of the company.

Format
~~~~~~

Time series of class ``tsibble``

Details
~~~~~~~

``pelt`` is an annual ``tsibble`` with two values:

===== =========================================
Hare: The number of Snowshoe Hare pelts traded.
Lynx: The number of Canadian Lynx pelts traded.
      
===== =========================================

Source
~~~~~~

Hudson Bay Company

Examples
~~~~~~~~

.. code:: R

   library(tsibble)
   pelt
