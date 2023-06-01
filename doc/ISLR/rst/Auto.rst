.. container::

   ==== ===============
   Auto R Documentation
   ==== ===============

   .. rubric:: Auto Data Set
      :name: Auto

   .. rubric:: Description
      :name: description

   Gas mileage, horsepower, and other information for 392 vehicles.

   .. rubric:: Usage
      :name: usage

   ::

      Auto

   .. rubric:: Format
      :name: format

   A data frame with 392 observations on the following 9 variables.

   ``mpg``
      miles per gallon

   ``cylinders``
      Number of cylinders between 4 and 8

   ``displacement``
      Engine displacement (cu. inches)

   ``horsepower``
      Engine horsepower

   ``weight``
      Vehicle weight (lbs.)

   ``acceleration``
      Time to accelerate from 0 to 60 mph (sec.)

   ``year``
      Model year (modulo 100)

   ``origin``
      Origin of car (1. American, 2. European, 3. Japanese)

   ``name``
      Vehicle name

   The orginal data contained 408 observations but 16 observations with
   missing values were removed.

   .. rubric:: Source
      :name: source

   This dataset was taken from the StatLib library which is maintained
   at Carnegie Mellon University. The dataset was used in the 1983
   American Statistical Association Exposition.

   .. rubric:: References
      :name: references

   James, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) *An
   Introduction to Statistical Learning with applications in R*,
   https://www.statlearning.com, Springer-Verlag, New York

   .. rubric:: Examples
      :name: examples

   ::

      pairs(Auto)
      attach(Auto)
      hist(mpg)
