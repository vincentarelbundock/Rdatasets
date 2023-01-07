.. container::

   ===== ===============
   orob2 R Documentation
   ===== ===============

   .. rubric:: Germination Data
      :name: germination-data

   .. rubric:: Description
      :name: description

   “A 2 x 2 factorial experiment comparing 2 types of seed and 2 root
   extracts. There are 5 or 6 replicates in each of the 4 treatment
   groups, and each replicate comprises a number of seeds varying
   between 4 and 81. The response variable is the proportion of seeds
   germinating in each replicate.” (Crowder, 1978, Table 3).

   .. rubric:: Usage
      :name: usage

   ::

      data(orob2)

   .. rubric:: Format
      :name: format

   A data frame with 21 observations on the following 4 variables.

   seed
      a factor with 2 levels: ``O73`` and ``O75``.

   root
      a factor with 2 levels ``BEAN`` and ``CUCUMBER``.

   n
      a numeric vector: the number of seeds exposed to germination.

   y
      a numeric vector: the number of seeds which actually germinated.

   .. rubric:: References
      :name: references

   Crowder, M.J., 1978. *Beta-binomial anova for proportions*. Appl.
   Statist. 27, 34-37.
