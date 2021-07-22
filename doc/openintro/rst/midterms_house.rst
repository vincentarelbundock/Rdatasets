============== ===============
midterms_house R Documentation
============== ===============

President's party performance and unemployment rate
---------------------------------------------------

Description
~~~~~~~~~~~

Covers midterm elections.

Usage
~~~~~

::

   midterms_house

Format
~~~~~~

A data frame with 29 observations on the following 5 variables.

year
   Year.

potus
   The president in office.

party
   President's party: Democrat or Republican.

unemp
   Unemployment rate.

house_change
   Change in House seats for the President's party.

Details
~~~~~~~

An older version of this data is at ``unemploy_pres``.

Source
~~~~~~

Wikipedia.

Examples
~~~~~~~~

::


   library(ggplot2)

   ggplot(midterms_house, aes(x = unemp, y = house_change)) +
     geom_point()
