========= ===============
Birthdays R Documentation
========= ===============

US Births in 1969 - 1988
------------------------

Description
~~~~~~~~~~~

A day by day record of the number of births in each US State.

Usage
~~~~~

::

   data(Birthdays)

Format
~~~~~~

A data frame with 374221 observations on the following variables.

-  ``state`` state where child was born

-  ``year`` year (1969-1988)

-  ``month`` month (1-12)

-  ``day`` day of month

-  ``date`` date as a date object

-  ``births`` number of births

Examples
~~~~~~~~

::

   data(Birthdays)
   if (require(mosaic)) {
     MI <- Birthdays %>% filter(state == "MI")
     gf_point(births ~ date, Birthdays, data = MI) 
     gf_line(births ~ date, Birthdays, data = MI, color = ~ wday)
     gf_line(births ~ date, 
       data = Birthdays %>% group_by(date) %>% summarise(births = sum(births)))
     }
