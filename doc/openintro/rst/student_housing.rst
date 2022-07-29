.. container::

   =============== ===============
   student_housing R Documentation
   =============== ===============

   .. rubric:: Community college housing (simulated data, 2015)
      :name: community-college-housing-simulated-data-2015

   .. rubric:: Description
      :name: description

   These are simulated data and intended to represent housing prices of
   students at a college.

   .. rubric:: Usage
      :name: usage

   ::

      student_housing

   .. rubric:: Format
      :name: format

   A data frame with 175 observations on the following variable.

   price
      Monthly housing price, simulated.

   .. rubric:: Examples
      :name: examples

   ::

      set.seed(5)
      generate_student_housing <- data.frame(
        price = round(rnorm(175, 515, 65) + exp(rnorm(175, 4.2, 1)))
      )
      hist(student_housing$price, 20)
      t.test(student_housing$price)
      mean(student_housing$price)
      sd(student_housing$price)
      identical(student_housing, generate_student_housing)
