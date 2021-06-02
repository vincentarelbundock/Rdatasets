======== ===============
droughts R Documentation
======== ===============

Periods Between Rain Events
---------------------------

Description
~~~~~~~~~~~

Data collected at Winnipeg International Airport (Canada) on periods (in
days) between rain events.

Usage
~~~~~

::

   droughts

Format
~~~~~~

This data frame contains the following columns:

length
   the length of time from the completion of the last rain event to the
   beginning of the next rain event.

year
   the calendar year.

Examples
~~~~~~~~

::

     boxplot(length ~ year, data=droughts)
     boxplot(log(length) ~ year, data=droughts)
     hist(droughts$length, main="Winnipeg Droughts", xlab="length (in days)")
     hist(log(droughts$length), main="Winnipeg Droughts", xlab="length (in days, log scale)")

