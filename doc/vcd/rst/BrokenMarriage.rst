.. container::

   ============== ===============
   BrokenMarriage R Documentation
   ============== ===============

   .. rubric:: Broken Marriage Data
      :name: broken-marriage-data

   .. rubric:: Description
      :name: description

   Data from the Danish Welfare Study about broken marriages or
   permanent relationships depending on gender and social rank.

   .. rubric:: Usage
      :name: usage

   ::

      data("BrokenMarriage")

   .. rubric:: Format
      :name: format

   A data frame with 20 observations and 4 variables.

   Freq
      frequency.

   gender
      factor indicating gender (male, female).

   rank
      factor indicating social rank (I, II, III, IV, V).

   broken
      factor indicating whether the marriage or permanent relationship
      was broken (yes, no).

   .. rubric:: Source
      :name: source

   E. B. Andersen (1991), The Statistical Analysis of Categorical Data,
   page 177.

   .. rubric:: References
      :name: references

   E. B. Andersen (1991), *The Statistical Analysis of Categorical
   Data*. 2nd edition. Springer-Verlag, Berlin.

   .. rubric:: Examples
      :name: examples

   ::

      data("BrokenMarriage")
      structable(~ ., data = BrokenMarriage)
