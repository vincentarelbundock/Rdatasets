.. container::

   .. container::

      =============== ===============
      pr_death_counts R Documentation
      =============== ===============

      .. rubric:: Puerto Rico daily mortality
         :name: puerto-rico-daily-mortality

      .. rubric:: Description
         :name: description

      A data frame with Puerto Rico daily mortality counts 2015 to May
      2018. This includes the day hurricanes Maria made 2017-09-20.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         pr_death_counts

      .. rubric:: Format
         :name: format

      An object of class ``data.frame``.

      .. rubric:: Details
         :name: details

      -  date. Date of the count.

      -  deaths. Number of deaths reported that day.

      .. rubric:: Source
         :name: source

      Puerto Rico Demographic Registry. Data was extracted from PDF
      provided in 'system.file("extdata",
      "RD-Mortality-Report_2015-18-180531.pdf", package = "dslabs")'

      .. rubric:: Examples
         :name: examples

      .. code:: R

         with(pr_death_counts, plot(date, deaths))
