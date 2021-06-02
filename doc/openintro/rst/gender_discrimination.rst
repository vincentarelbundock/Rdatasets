===================== ===============
gender_discrimination R Documentation
===================== ===============

Bank manager recommendations based on gender
--------------------------------------------

Description
~~~~~~~~~~~

Study from the 1970s about whether gender influences hiring
recommendations.

Usage
~~~~~

::

   gender_discrimination

Format
~~~~~~

A data frame with 48 observations on the following 2 variables.

gender
   a factor with levels ``female`` and ``male``

decision
   a factor with levels ``not promoted`` and ``promoted``

Source
~~~~~~

Rosen B and Jerdee T. 1974. Influence of sex role stereotypes on
personnel decisions. Journal of Applied Psychology 59(1):9-14.

Examples
~~~~~~~~

::


   library(ggplot2)

   table(gender_discrimination)

   ggplot(gender_discrimination, aes(y = gender, fill = decision)) +
     geom_bar(position = "fill")

