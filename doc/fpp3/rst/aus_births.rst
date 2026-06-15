========== ===============
aus_births R Documentation
========== ===============

Australian births data
----------------------

Description
~~~~~~~~~~~

Number of births in Australia.

Format
~~~~~~

Time series of class 'tsibble'

Details
~~~~~~~

``aus_births`` contains monthly data with one measured variable:

=========== ================
``Births``: Number of births
            
=========== ================

from January 1975 to December 2021 for the 6 states and 2 territories of
Australia, indexed by:

========== ===========
``Month``: Year-month.
           
========== ===========

#' Each series is uniquely identified using the key:

+------------------------------------+
| ``State``: The state or territory. |
+------------------------------------+
|                                    |
+------------------------------------+

Source
~~~~~~

Australian Bureau of Statistics.
https://www.abs.gov.au/statistics/people/population/births-australia/2022

Examples
~~~~~~~~

.. code:: R


   aus_births
