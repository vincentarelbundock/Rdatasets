=========== ===============
progression R Documentation
=========== ===============

Progression of Record times for track races, 1912 - 2008
--------------------------------------------------------

Description
~~~~~~~~~~~

Progression in world record times for track and road races.

Usage
~~~~~

::

   data(progression)

Format
~~~~~~

A data frame with 227 observations on the following 4 columns.

``year``
   Year that time was first recorded

``Distance``
   distance in kilometers

``Time``
   time in minutes

``race``
   character; descriptor for event (100m, mile, ...)

Details
~~~~~~~

Record times for men's track events, from 1912 onwards. The series
starts with times that were recognized as record times in 1912, where
available.

Source
~~~~~~

Links to sources for the data are at

http://en.wikipedia.org/wiki/Athletics_world_record

Examples
~~~~~~~~

::

   data(progression)
   plot(log(Time) ~ log(Distance), data=progression)
   xyplot(log(Time) ~ log(Distance), data=progression, type=c("p","r"))
   xyplot(log(Time) ~ log(Distance), data=progression,
          type=c("p","smooth"))
   res <- resid(lm(log(Time) ~ log(Distance), data=progression))
   plot(res ~ log(Distance), data=progression,
        ylab="Residuals from regression line on log scales")
