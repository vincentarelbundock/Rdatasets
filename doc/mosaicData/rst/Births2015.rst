========== ===============
Births2015 R Documentation
========== ===============

US Births in 2015
-----------------

Description
~~~~~~~~~~~

A day by day record of the number of births in the United States in
2015.

Usage
~~~~~

::

   data(Births2015)

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

Source
~~~~~~

Obtained from the National Center for Health Statistics, National Vital
Statistics System, Natality, 2015 data.

See Also
~~~~~~~~

``Births78``, ``Births``

Examples
~~~~~~~~

::

   data(Births2015)
   if (require(ggformula)) {
     gf_point(births ~ date, data = Births2015)
     gf_point(births ~ date, data = Births2015, color = ~ wday)
   }
   if (require(dplyr)) {
     Births78 %>% 
       group_by(wday) %>% summarise(births = sum(births)) %>% 
       ungroup() %>% mutate(frac = births / sum(births))
     Births2015 %>% 
       group_by(wday) %>% summarise(births = sum(births)) %>% 
       ungroup() %>% mutate(frac = births / sum(births))
   }
