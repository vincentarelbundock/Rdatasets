.. container::

   =========== ===============
   medExpenses R Documentation
   =========== ===============

   .. rubric:: Family Medical Expenses
      :name: medExpenses

   .. rubric:: Description
      :name: description

   The ``medExpenses`` data frame contains average weekly medical
   expenses including drugs for 33 families randomly sampled from a
   community of 600 families which contained 2700 individuals. These
   data were collected in the 1970's at an unknown location.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      medExpenses

   .. rubric:: Format
      :name: format

   familysize
      number of individuals in a family

   expenses
      average weekly cost for medical expenses per family member

   .. rubric:: Examples
      :name: examples

   .. code:: R

      with(medExpenses, weighted.mean(expenses, familysize))
