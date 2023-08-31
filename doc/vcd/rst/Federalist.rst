.. container::

   ========== ===============
   Federalist R Documentation
   ========== ===============

   .. rubric:: ‘May’ in Federalist Papers
      :name: Federalist

   .. rubric:: Description
      :name: description

   Data from Mosteller & Wallace (1984) investigating the use of certain
   keywords (‘may’ in this data set) to identify the author of 12
   disputed ‘Federalist Papers’ by Alexander Hamilton, John Jay and
   James Madison.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("Federalist")

   .. rubric:: Format
      :name: format

   A 1-way table giving the number of occurrences of ‘may’ in 262 blocks
   of text. The variable and its levels are

   == ==== ============
   No Name Levels
   1  nMay 0, 1, ..., 6
   \       
   == ==== ============

   .. rubric:: Source
      :name: source

   Michael Friendly (2000), Visualizing Categorical Data, page 19.

   .. rubric:: References
      :name: references

   F. Mosteller & D. L. Wallace (1984), *Applied Bayesian and Classical
   Inference: The Case of the Federalist Papers*. Springer-Verlag, New
   York, NY.

   M. Friendly (2000), *Visualizing Categorical Data*. SAS Institute,
   Cary, NC.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data("Federalist")
      gf <- goodfit(Federalist, type = "nbinomial")
      summary(gf)
      plot(gf)
