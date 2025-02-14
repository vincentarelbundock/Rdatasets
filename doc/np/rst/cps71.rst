.. container::

   .. container::

      ===== ===============
      cps71 R Documentation
      ===== ===============

      .. rubric:: Canadian High School Graduate Earnings
         :name: canadian-high-school-graduate-earnings

      .. rubric:: Description
         :name: description

      Canadian cross-section wage data consisting of a random sample
      taken from the 1971 Canadian Census Public Use Tapes for male
      individuals having common education (grade 13). There are 205
      observations in total.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("cps71")

      .. rubric:: Format
         :name: format

      A data frame with 2 columns, and 205 rows.

      logwage
         the first column, of type ``numeric``

      age
         the second column, of type ``integer``

      .. rubric:: Source
         :name: source

      Aman Ullah

      .. rubric:: References
         :name: references

      Pagan, A. and A. Ullah (1999), *Nonparametric Econometrics,*
      Cambridge University Press.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data("cps71")
         attach(cps71)

         plot(age, logwage, xlab="Age", ylab="log(wage)")

         detach(cps71)
