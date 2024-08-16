.. container::

   .. container::

      ===== ===============
      twins R Documentation
      ===== ===============

      .. rubric:: twins
         :name: twins

      .. rubric:: Description
         :name: description

      A data frame containing data collected in the mid 20th century by
      Cyril Burt from a study tracked down identical twins who were
      separated at birth: one child was raised in the home of their
      biological parents and the other in a foster home. In an attempt
      to answer the question of whether intelligence is the result of
      nature or nurture, both children were given IQ tests.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         twins

      .. rubric:: Format
         :name: format

      A data frame with 27 observations on the following 2 variables.

      foster
         IQ score of the twin raised by Foster parents.

      biological
         IQ score of the twin raised by Biological parents.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(ggplot2)
         library(dplyr)
         library(tidyr)

         plot_data <- twins |>
           pivot_longer(cols = c(foster, biological), names_to = "twin", values_to = "iq")

         ggplot(plot_data, aes(iq, fill = twin)) +
           geom_histogram(color = "white", binwidth = 5) +
           facet_wrap(~twin) +
           theme_minimal() +
           labs(
             title = "IQ of identical twins",
             subtitle = "Separated at birth",
             x = "IQ",
             y = "Count",
             fill = ""
           )
