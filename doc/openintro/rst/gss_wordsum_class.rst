.. container::

   .. container::

      ================= ===============
      gss_wordsum_class R Documentation
      ================= ===============

      .. rubric:: gss_wordsum_class
         :name: gss_wordsum_class

      .. rubric:: Description
         :name: description

      A data frame containing data from the General Social Survey.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         gss_wordsum_class

      .. rubric:: Format
         :name: format

      A data frame with 795 observations on the following 2 variables.

      wordsum
         A vocabulary score calculated based on a ten question
         vocabulary test, where a higher score means better vocabulary.
         Scores range from 1 to 10.

      class
         Self-identified social class has 4 levels: lower, working,
         middle, and upper class.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(dplyr)

         gss_wordsum_class |>
           group_by(class) |>
           summarize(mean_wordsum = mean(wordsum))
