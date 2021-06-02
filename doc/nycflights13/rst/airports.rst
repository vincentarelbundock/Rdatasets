======== ===============
airports R Documentation
======== ===============

Airport metadata
----------------

Description
~~~~~~~~~~~

Useful metadata about airports.

Usage
~~~~~

::

   airports

Format
~~~~~~

A data frame with columns:

faa
   FAA airport code.

name
   Usual name of the aiport.

lat, lon
   Location of airport.

alt
   Altitude, in feet.

tz
   Timezone offset from GMT.

dst
   Daylight savings time zone. A = Standard US DST: starts on the second
   Sunday of March, ends on the first Sunday of November. U = unknown. N
   = no dst.

tzone
   IANA time zone, as determined by GeoNames webservice.

Source
~~~~~~

https://openflights.org/data.html, downloaded 2014-06-27

Examples
~~~~~~~~

::

   airports

   if (require("dplyr")) {

   airports %>% rename(dest = faa) %>% semi_join(flights)
   flights %>% anti_join(airports %>% rename(dest = faa))
   airports %>% rename(origin = faa) %>% semi_join(flights)

   }
