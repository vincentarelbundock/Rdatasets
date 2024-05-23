.. container::

   .. container::

      =========== ===============
      progression R Documentation
      =========== ===============

      .. rubric:: Progression of Record times for track races, 1912 -
         2008
         :name: progression-of-record-times-for-track-races-1912---2008

      .. rubric:: Description
         :name: description

      Progression in world record times for track and road races.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(progression)

      .. rubric:: Format
         :name: format

      A data frame with 227 observations on the following 4 columns.

      ``year``
         Year that time was first recorded

      ``Distance``
         distance in kilometers

      ``Time``
         time in minutes

      ``race``
         character; descriptor for event (100m, mile, ...)

      .. rubric:: Details
         :name: details

      Record times for men's track events, from 1912 onwards. The series
      starts with times that were recognized as record times in 1912,
      where available.

      .. rubric:: Source
         :name: source

      Links to sources for the data are at

      https://en.wikipedia.org/wiki/Athletics_world_record

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(progression)
         plot(log(Time) ~ log(Distance), data=progression)
         res <- resid(lm(log(Time) ~ log(Distance), data=progression))
         plot(res ~ log(Distance), data=progression,
              ylab="Residuals from regression line on log scales")
         library(lattice)
         xyplot(log(Time) ~ log(Distance), data=progression, type=c("p","r"))
         xyplot(log(Time) ~ log(Distance), data=progression,
                type=c("p","smooth"))
