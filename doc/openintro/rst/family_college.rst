.. container::

   .. container::

      ============== ===============
      family_college R Documentation
      ============== ===============

      .. rubric:: Simulated sample of parent / teen college attendance
         :name: simulated-sample-of-parent-teen-college-attendance

      .. rubric:: Description
         :name: description

      A simulated dataset based on real population summaries.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         family_college

      .. rubric:: Format
         :name: format

      A data frame with 792 observations on the following 2 variables.

      teen
         Whether the teen goes to ``college`` or ``not``.

      parents
         Whether the parent holds a college ``degree`` or ``not``.

      .. rubric:: Source
         :name: source

      Simulation based off of summary information provided at
      https://eric.ed.gov/?id=ED460660.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(dplyr)

         family_college |>
           count(teen, parents)
