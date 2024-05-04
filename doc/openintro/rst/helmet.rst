.. container::

   .. container::

      ====== ===============
      helmet R Documentation
      ====== ===============

      .. rubric:: Socioeconomic status and reduced-fee school lunches
         :name: socioeconomic-status-and-reduced-fee-school-lunches

      .. rubric:: Description
         :name: description

      Examining the relationship between socioeconomic status measured
      as the percentage of children in a neighborhood receiving
      reduced-fee lunches at school (lunch) and the percentage of bike
      riders in the neighborhood wearing helmets (helmet).

      .. rubric:: Usage
         :name: usage

      ::

         helmet

      .. rubric:: Format
         :name: format

      A data frame with 12 observations representing neighborhoods on
      the following 2 variables.

      lunch
         Percent of students receiving reduced-fee school lunches.

      helmet
         Percent of bike riders wearing helmets.

      .. rubric:: Examples
         :name: examples

      ::

         library(ggplot2)

         ggplot(helmet, aes(x = lunch, y = helmet)) +
           geom_point()
