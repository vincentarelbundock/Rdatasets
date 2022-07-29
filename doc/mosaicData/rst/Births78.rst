.. container::

   ======== ===============
   Births78 R Documentation
   ======== ===============

   .. rubric:: US Births in 1978
      :name: us-births-in-1978

   .. rubric:: Description
      :name: description

   A day by day record of the number of births in the United States in
   1978.

   .. rubric:: Usage
      :name: usage

   ::

      data(Births78)

   .. rubric:: Format
      :name: format

   A data.frame with 365 observations on the following 8 variables.

   -  ``date`` Date

   -  ``births`` Number of births on ``date`` (integer)

   -  ``wday`` Day of week (ordered factor)

   -  ``year`` Year (integer)

   -  ``month`` Month (integer)

   -  ``day_of_year`` Day of year (integer)

   -  ``day_of_month`` Day of month (integer)

   -  ``day_of_week`` Day of week (integer)

   .. rubric:: See Also
      :name: see-also

   ``Births2015``, ``Births``

   .. rubric:: Examples
      :name: examples

   ::

      data(Births78)
      if (require(ggformula)) {
        gf_point(births ~ date, data = Births78)
        gf_point(births ~ date, data = Births78, color = ~ wday)
      }
