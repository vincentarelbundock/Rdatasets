.. container::

   ======= ===============
   present R Documentation
   ======= ===============

   .. rubric:: Birth counts
      :name: birth-counts

   .. rubric:: Description
      :name: description

   An updated version of the historical Arbuthnot dataset. Numbers of
   boys and girls born in the United States between 1940 and 2002.

   .. rubric:: Usage
      :name: usage

   ::

      present

   .. rubric:: Format
      :name: format

   A data frame with 63 observations on the following 3 variables.

   year
      Year.

   boys
      Number of boys born.

   girls
      Number of girls born.

   .. rubric:: Source
      :name: source

   Mathews, T. J., and Brady E. Hamilton. "Trend analysis of the sex
   ratio at birth in the United States." National vital statistics
   reports 53.20 (2005): 1-17.

   .. rubric:: Examples
      :name: examples

   ::

      library(ggplot2)

      ggplot(present, mapping = aes(x = year, y = boys / girls)) +
        geom_line()
