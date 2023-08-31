.. container::

   ======== ===============
   droughts R Documentation
   ======== ===============

   .. rubric:: Periods Between Rain Events
      :name: droughts

   .. rubric:: Description
      :name: description

   Data collected at Winnipeg International Airport (Canada) on periods
   (in days) between rain events.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      droughts

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   length
      the length of time from the completion of the last rain event to
      the beginning of the next rain event.

   year
      the calendar year.

   .. rubric:: Examples
      :name: examples

   .. code:: R

        boxplot(length ~ year, data=droughts)
        boxplot(log(length) ~ year, data=droughts)
        hist(droughts$length, main="Winnipeg Droughts", xlab="length (in days)")
        hist(log(droughts$length), main="Winnipeg Droughts", xlab="length (in days, log scale)")
