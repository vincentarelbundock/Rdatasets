.. container::

   ============ ===============
   major_survey R Documentation
   ============ ===============

   .. rubric:: Survey of Duke students and the area of their major
      :name: survey-of-duke-students-and-the-area-of-their-major

   .. rubric:: Description
      :name: description

   Survey of 218 students, collecting information on their GPAs and
   their academic major.

   .. rubric:: Usage
      :name: usage

   ::

      major_survey

   .. rubric:: Format
      :name: format

   A data frame with 218 observations on the following 2 variables.

   gpa
      Grade point average (GPA).

   major
      Area of academic major.

   .. rubric:: Examples
      :name: examples

   ::


      library(ggplot2)

      ggplot(major_survey, aes(x = major, y = gpa)) +
        geom_boxplot()
