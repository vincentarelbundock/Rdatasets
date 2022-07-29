.. container::

   =========== ===============
   SwimRecords R Documentation
   =========== ===============

   .. rubric:: 100 m Swimming World Records
      :name: m-swimming-world-records

   .. rubric:: Description
      :name: description

   World records for men and women over time from 1905 through 2004.

   .. rubric:: Usage
      :name: usage

   ::

      data(SwimRecords)

   .. rubric:: Format
      :name: format

   A data frame with 62 observations of the following variables.

   -  ``time`` time (in seconds) of the world record

   -  ``year`` Year in which the record was set

   -  ``sex`` a factor with levels ``M`` and ``F``

   .. rubric:: Examples
      :name: examples

   ::

      data(SwimRecords)
      if (require(ggformula)) {
        gf_point(time ~ year, data = SwimRecords, color = ~ sex) 
      }
