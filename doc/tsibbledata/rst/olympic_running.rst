=============== ===============
olympic_running R Documentation
=============== ===============

Fastest running times for Olympic races
---------------------------------------

Description
~~~~~~~~~~~

``olympic_running`` is a quadrennial ``tsibble`` with one value:

===== ============================================
Time: Fastest running time for the event (seconds)
      
===== ============================================

Format
~~~~~~

Time series of class ``tsibble``

Details
~~~~~~~

The event is identified using two keys:

======= ===============================
Length: The length of the race (meters)
Sex:    The sex of the event
        
======= ===============================

The data contains missing values in 1916, 1940 and 1944 due to the World
Wars.

Source
~~~~~~

https://olympics.com/en/sports/athletics/

Examples
~~~~~~~~

.. code:: R

   library(tsibble)
   olympic_running

   if(requireNamespace("ggplot2")){
   library(ggplot2)
   olympic_running %>% as_tibble %>%
     ggplot(aes(x=Year, y = Time, colour = Sex)) +
     geom_line() +
     facet_wrap(~ Length, scales = "free_y")
   }
