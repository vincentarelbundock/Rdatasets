============ ===============
major_survey R Documentation
============ ===============

Survey of Duke students and the area of their major
---------------------------------------------------

Description
~~~~~~~~~~~

Survey of 218 students, collecting information on their GPAs and their
academic major.

Usage
~~~~~

.. code:: R

   major_survey

Format
~~~~~~

A data frame with 218 observations on the following 2 variables.

gpa
   Grade point average (GPA).

major
   Area of academic major.

Examples
~~~~~~~~

.. code:: R


   library(ggplot2)

   ggplot(major_survey, aes(x = major, y = gpa)) +
     geom_boxplot()
