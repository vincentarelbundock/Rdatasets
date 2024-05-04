.. container::

   .. container::

      ====== ===============
      births R Documentation
      ====== ===============

      .. rubric:: North Carolina births, 100 cases
         :name: north-carolina-births-100-cases

      .. rubric:: Description
         :name: description

      Data on a random sample of 100 births for babies in North Carolina
      where the mother was not a smoker and another 50 where the mother
      was a smoker.

      .. rubric:: Usage
         :name: usage

      ::

         births

      .. rubric:: Format
         :name: format

      A data frame with 150 observations on the following 14 variables.

      f_age
         Father's age.

      m_age
         Mother's age.

      weeks
         Weeks at which the mother gave birth.

      premature
         Indicates whether the baby was premature or not.

      visits
         Number of hospital visits.

      gained
         Weight gained by mother.

      weight
         Birth weight of the baby.

      sex_baby
         Gender of the baby.

      smoke
         Whether or not the mother was a smoker.

      .. rubric:: Source
         :name: source

      Birth records released by North Carolina in 2004.

      .. rubric:: See Also
         :name: see-also

      We do not have ideal provenance for these data. For a better
      documented and more recent dataset on a similar topic with similar
      variables, see births14. Additionally, ncbirths also contains
      similar data.

      .. rubric:: Examples
         :name: examples

      ::

         library(ggplot2)

         ggplot(births, aes(x = smoke, y = weight)) +
           geom_boxplot()
