======== ===============
hpc_data R Documentation
======== ===============

High-performance computing system data
--------------------------------------

Description
~~~~~~~~~~~

Kuhn and Johnson (2013) describe a data set where characteristics of
unix jobs were used to classify there completion times as either very
fast (1 min or less, ``VF``), fast (1–50 min, ``F``), moderate (5–30
min, ``M``), or long (greater than 30 min, ``L``).

Value
~~~~~

============ ========
``hpc_data`` a tibble
============ ========

Source
~~~~~~

Kuhn, M., Johnson, K. (2013) *Applied Predictive Modeling*, Springer.

Examples
~~~~~~~~

.. code:: R


   data(hpc_data)
   str(hpc_data)
