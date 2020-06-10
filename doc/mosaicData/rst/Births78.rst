======== ===============
Births78 R Documentation
======== ===============

US Births in 1978
-----------------

Description
~~~~~~~~~~~

A day by day record of the number of births in the United States in
1978.

Usage
~~~~~

::

   data(Births78)

Format
~~~~~~

A data.frame with 365 observations on the following 8 variables.

-  ``date`` Date

-  ``births`` Number of births on ``date`` (integer)

-  ``wday`` Day of week (ordered factor)

-  ``year`` Year (integer)

-  ``month`` Month (integer)

-  ``day_of_year`` Day of year (integer)

-  ``day_of_month`` Day of month (integer)

-  ``day_of_week`` Day of week (integer)

See Also
~~~~~~~~

``Births2015``, ``Births``

Examples
~~~~~~~~

::

   data(Births78)
   if (require(ggformula)) {
     gf_point(births ~ date, data = Births78)
     gf_point(births ~ date, data = Births78, color = ~ wday)
   }
