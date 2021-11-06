.. container::

   ================== ===============
   sex_discrimination R Documentation
   ================== ===============

   .. rubric:: Bank manager recommendations based on sex
      :name: bank-manager-recommendations-based-on-sex

   .. rubric:: Description
      :name: description

   Study from the 1970s about whether sex influences hiring
   recommendations.

   .. rubric:: Usage
      :name: usage

   ::

      sex_discrimination

   .. rubric:: Format
      :name: format

   A data frame with 48 observations on the following 2 variables.

   sex
      a factor with levels ``female`` and ``male``

   decision
      a factor with levels ``not promoted`` and ``promoted``

   .. rubric:: Source
      :name: source

   Rosen B and Jerdee T. 1974. Influence of sex role stereotypes on
   personnel decisions. Journal of Applied Psychology 59(1):9-14.

   .. rubric:: Examples
      :name: examples

   ::


      library(ggplot2)

      table(sex_discrimination)

      ggplot(sex_discrimination, aes(y = sex, fill = decision)) +
        geom_bar(position = "fill")

