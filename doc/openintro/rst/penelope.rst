.. container::

   ======== ===============
   penelope R Documentation
   ======== ===============

   .. rubric:: Guesses at the weight of Penelope (a cow)
      :name: penelope

   .. rubric:: Description
      :name: description

   The data was collected by the Planet Money podcast to test a theory
   about crowd-sourcing. Penelope's actual weight was 1,355 pounds.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      penelope

   .. rubric:: Format
      :name: format

   A data frame with 17,184 observations on the following variable.

   weight
      Guesses of Penelope's weight, in pounds.

   .. rubric:: Source
      :name: source

   https://www.npr.org/sections/money/2015/08/07/429720443/17-205-people-guessed-the-weight-of-a-cow-heres-how-they-did

   .. rubric:: Examples
      :name: examples

   .. code:: R

      library(ggplot2)

      ggplot(penelope, aes(x = weight)) +
        geom_histogram(binwidth = 250)

      summary(penelope$weight)
