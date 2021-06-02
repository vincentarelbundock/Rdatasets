====== ===============
friday R Documentation
====== ===============

Friday the 13th
---------------

Description
~~~~~~~~~~~

This data set addresses issues of how superstitions regarding Friday the
13th affect human behavior, and whether Friday the 13th is an unlucky
day. Scanlon, et al. collected data on traffic and shopping patterns and
accident frequency for Fridays the 6th and 13th between October of 1989
and November of 1992.

Usage
~~~~~

::

   friday

Format
~~~~~~

A data frame with 61 observations and 6 variables.

type
   Type of observation, ``traffic``, ``shopping``, or ``accident``.

date
   Year and month of observation.

sixth
   Counts on the 6th of the month.

thirteenth
   Counts on the 13th of the month.

diff
   Difference between the sixth and the thirteenth.

location
   Location where data is collected.

Details
~~~~~~~

There are three types of observations: traffic, shopping, and accident.
For traffic, the researchers obtained information from the British
Department of Transport regarding the traffic flows between junctions 7
to 8 and junctions 9 to 10 of the M25 motorway. For shopping, they
collected the numbers of shoppers in nine different supermarkets in
southeast England. For accidents, they collected numbers of emergency
admissions to hospitals due to transport accidents.

Source
~~~~~~

Scanlon, T.J., Luben, R.N., Scanlon, F.L., Singleton, N. (1993), "Is
Friday the 13th Bad For Your Health?," BMJ, 307, 1584-1586.
https://dasl.datadescription.com/datafile/friday-the-13th-traffic and
https://dasl.datadescription.com/datafile/friday-the-13th-accidents.

Examples
~~~~~~~~

::


   library(dplyr)
   library(ggplot2)

   friday %>%
     filter(type == "traffic") %>%
     ggplot(aes(x = sixth)) +
       geom_histogram(binwidth = 2000) +
       xlim(110000, 140000)

   friday %>%
     filter(type == "traffic") %>%
     ggplot(aes(x = thirteenth)) +
       geom_histogram(binwidth = 2000) +
       xlim(110000, 140000)

