.. container::

   .. container::

      ====== ===============
      beanie R Documentation
      ====== ===============

      .. rubric:: Age and value of 50 beanie baby toys
         :name: age-and-value-of-50-beanie-baby-toys

      .. rubric:: Description
         :name: description

      Age and value of 50 beanie baby toys

      .. rubric:: Usage
         :name: usage

      .. code:: R

         beanie

      .. rubric:: Format
         :name: format

      A data frame with 50 rows and 3 columns:

      name
         Name of the toy

      age
         Age of the toy in months

      value
         Market value of the toy in US dollars

      .. rubric:: Source
         :name: source

      Beanie world magazine

      .. rubric:: Examples
         :name: examples

      .. code:: R

          head(beanie)
          summary(beanie)
          plot(beanie$age, beanie$value, xlab="Age", ylab="Value", pch="*", col="red")
