.. container::

   =========== ===============
   NonResponse R Documentation
   =========== ===============

   .. rubric:: Non-Response Survey Data
      :name: NonResponse

   .. rubric:: Description
      :name: description

   Data about non-response for a Danish survey in 1965.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("NonResponse")

   .. rubric:: Format
      :name: format

   A data frame with 12 observations and 4 variables.

   Freq
      frequency.

   residence
      factor indicating whether residence was in Copenhagen, in a city
      outside Copenhagen or at the countryside (Copenhagen, City,
      Country).

   response
      factor indicating whether a response was given (yes, no).

   gender
      factor indicating gender (male, female).

   .. rubric:: Source
      :name: source

   E. B. Andersen (1991), The Statistical Analysis of Categorical Data,
   Table 5.17.

   .. rubric:: References
      :name: references

   E. B. Andersen (1991), *The Statistical Analysis of Categorical
   Data*. 2nd edition. Springer-Verlag, Berlin.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data("NonResponse")
      structable(~ ., data = NonResponse)
