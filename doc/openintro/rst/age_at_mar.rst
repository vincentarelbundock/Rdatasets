.. container::

   ========== ===============
   age_at_mar R Documentation
   ========== ===============

   .. rubric:: Age at first marriage of 5,534 US women.
      :name: age-at-first-marriage-of-5534-us-women.

   .. rubric:: Description
      :name: description

   Age at first marriage of 5,534 US women who responded to the National
   Survey of Family Growth (NSFG) conducted by the CDC in the 2006 and
   2010 cycle.

   .. rubric:: Usage
      :name: usage

   ::

      age_at_mar

   .. rubric:: Format
      :name: format

   A data frame with 5,534 observations and 1 variable.

   age
      Age a first marriage.

   .. rubric:: Source
      :name: source

   National Survey of Family Growth, 2006-2010 cycle,
   https://www.cdc.gov/nchs/nsfg/nsfg_2006_2010_puf.htm.

   .. rubric:: Examples
      :name: examples

   ::


      library(ggplot2)

      ggplot(age_at_mar, mapping = aes(x = age)) +
        geom_histogram(binwidth = 3) +
        labs(x = "Age", y = "Count", title = "Age at first marriage, US Women",
             subtitle = "Source: National Survey of Family Growth Survey, 2006 - 2010")
