.. container::

   .. container::

      ======== ===============
      AirCrash R Documentation
      ======== ===============

      .. rubric:: Air Crash Data
         :name: air-crash-data

      .. rubric:: Description
         :name: description

      Data on all fatal commercial airplane crashes from 1993–2015.
      Excludes small planes (less than 6 passengers) and non-commercial
      (cargo, military, private) aircraft.

      .. rubric:: Usage
         :name: usage

      ::

         data("AirCrash")

      .. rubric:: Format
         :name: format

      A data frame with 439 observations on the following 5 variables.

      ``Phase``
         phase of the flight, a factor with levels ``en route``
         ``landing`` ``standing`` ``take-off`` ``unknown``

      ``Cause``
         a factor with levels ``criminal`` ``human error``
         ``mechanical`` ``unknown`` ``weather``

      ``date``
         date of crash, a Date

      ``Fatalities``
         number of fatalities, a numeric vector

      ``Year``
         year, a numeric vector

      .. rubric:: Details
         :name: details

      ``Phase`` of the flight was cleaned by combining related variants,
      spelling, etc.

      .. rubric:: Source
         :name: source

      Originally from David McCandless,
      https://informationisbeautiful.net/visualizations/plane-truth-every-single-commercial-plane-crash-visualized/,
      with the data at
      https://docs.google.com/spreadsheets/d/1OvDq4_BtbR6nSnnHnjD5hVC3HQ-ulZPGbo0RDGbzM3Q/edit?usp=drive_web,
      downloaded April 14, 2015.

      .. rubric:: References
         :name: references

      Rick Wicklin,
      http://blogs.sas.com/content/iml/2015/03/30/visualizing-airline-crashes.html

      .. rubric:: Examples
         :name: examples

      ::

         data(AirCrash)
         aircrash.tab <- xtabs(~Phase + Cause, data=AirCrash)
         mosaic(aircrash.tab, shade=TRUE)

         # fix label overlap
         mosaic(aircrash.tab, shade=TRUE,
                labeling_args=list(rot_labels=c(30, 30, 30, 30)))

         # reorder by Phase
         phase.ord <- rev(c(3,4,1,2,5))
         mosaic(aircrash.tab[phase.ord,], shade=TRUE,
                labeling_args=list(rot_labels=c(30, 30, 30, 30)),
                offset_varnames=0.5)

         # reorder by frequency
         phase.ord <- order(rowSums(aircrash.tab), decreasing=TRUE)
         cause.ord <- order(colSums(aircrash.tab), decreasing=TRUE)
         mosaic(aircrash.tab[phase.ord,cause.ord], shade=TRUE,
                labeling_args=list(rot_labels=c(30, 30, 30, 30)))


         library(ca)
         aircrash.ca <- ca(aircrash.tab)
         plot(aircrash.ca)
