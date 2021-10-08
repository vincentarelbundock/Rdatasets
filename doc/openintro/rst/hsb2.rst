.. container::

   ==== ===============
   hsb2 R Documentation
   ==== ===============

   .. rubric:: High School and Beyond survey
      :name: high-school-and-beyond-survey

   .. rubric:: Description
      :name: description

   Two hundred observations were randomly sampled from the High School
   and Beyond survey, a survey conducted on high school seniors by the
   National Center of Education Statistics.

   .. rubric:: Usage
      :name: usage

   ::

      hsb2

   .. rubric:: Format
      :name: format

   A data frame with 200 observations and 11 variables.

   id
      Student ID.

   gender
      Student's gender, with levels ``female`` and ``male``.

   race
      Student's race, with levels ``african american``, ``asian``,
      ``hispanic``, and ``white``.

   ses
      Socio economic status of student's family, with levels ``low``,
      ``middle``, and ``high``.

   schtyp
      Type of school, with levels ``public`` and ``private``.

   prog
      Type of program, with levels ``general``, ``academic``, and
      ``vocational``.

   read
      Standardized reading score.

   write
      Standardized writing score.

   math
      Standardized math score.

   science
      Standardized science score.

   socst
      Standardized social studies score.

   .. rubric:: Source
      :name: source

   UCLA Institute for Digital Research & Education - Statistical
   Consulting.

   .. rubric:: Examples
      :name: examples

   ::


      library(ggplot2)

      ggplot(hsb2, aes(x = read - write, y = ses)) +
        geom_boxplot() +
        labs(
          x = "Difference between reading and writing scores",
          y = "Socio-economic status"
          )
