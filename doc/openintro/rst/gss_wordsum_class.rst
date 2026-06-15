================= ===============
gss_wordsum_class R Documentation
================= ===============

gss_wordsum_class
-----------------

Description
~~~~~~~~~~~

A data frame containing data from the General Social Survey.

Usage
~~~~~

.. code:: R

   gss_wordsum_class

Format
~~~~~~

A data frame with 795 observations on the following 2 variables.

wordsum
   A vocabulary score calculated based on a ten question vocabulary
   test, where a higher score means better vocabulary. Scores range from
   1 to 10.

class
   Self-identified social class has 4 levels: lower, working, middle,
   and upper class.

Examples
~~~~~~~~

.. code:: R


   library(dplyr)

   gss_wordsum_class |>
     group_by(class) |>
     summarize(mean_wordsum = mean(wordsum))
