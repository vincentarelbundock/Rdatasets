.. container::

   .. container::

      ======== ===============
      students R Documentation
      ======== ===============

      .. rubric:: Student Risk Taking
         :name: student-risk-taking

      .. rubric:: Description
         :name: description

      Students were administered two parallel forms of a test after a
      random assignment to three different treatments.

      .. rubric:: Usage
         :name: usage

      ::

         data("students")

      .. rubric:: Format
         :name: format

      A data frame with 35 observations on the following 3 variables.

      ``treatment``
         a factor with levels ``AA``, ``C``, and ``NC``.

      ``low``
         the result of the first test.

      ``high``
         the result of the second test.

      .. rubric:: Details
         :name: details

      The data arise from a large study of risk taking (Timm, 2002).
      Students were randomly assigned to three different treatments
      labelled AA, C and NC. Students were administered two parallel
      forms of a test called ``low`` and ``high``. The aim is to carry
      out a test of the equality of the bivariate means of each
      treatment population.

      .. rubric:: Source
         :name: source

      N. H. Timm (2002), *Applied Multivariate Analysis*. Springer, New
      York.

      .. rubric:: Examples
         :name: examples

      ::

           data("students", package = "HSAUR")
           layout(matrix(1:2, ncol = 2))
           boxplot(low ~ treatment, data = students, ylab = "low")
           boxplot(high ~ treatment, data = students, ylab = "high")
