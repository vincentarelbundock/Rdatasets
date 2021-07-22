====== ===============
satgpa R Documentation
====== ===============

SAT and GPA data
----------------

Description
~~~~~~~~~~~

SAT and GPA data for 1000 students at an unnamed college.

Usage
~~~~~

::

   satgpa

Format
~~~~~~

A data frame with 1000 observations on the following 6 variables.

sex
   Gender of the student.

sat_v
   Verbal SAT percentile.

sat_m
   Math SAT percentile.

sat_sum
   Total of verbal and math SAT percentiles.

hs_gpa
   High school grade point average.

fy_gpa
   First year (college) grade point average.

Source
~~~~~~

Educational Testing Service originally collected the data.

References
~~~~~~~~~~

https://chance.dartmouth.edu/course/Syllabi/Princeton96/ETSValidation.html

Examples
~~~~~~~~

::


   library(ggplot2)
   library(broom)

   # Verbal scores
   ggplot(satgpa, aes(x = sat_v, fy_gpa)) +
     geom_point() +
     geom_smooth(method = "lm") +
     labs(
       x = "Verbal SAT percentile",
       y = "First year (college) grade point average"
       )

   mod <- lm(fy_gpa ~ sat_v, data = satgpa)
   tidy(mod)

   # Math scores
   ggplot(satgpa, aes(x = sat_m, fy_gpa)) +
     geom_point() +
     geom_smooth(method = "lm") +
     labs(
       x = "Math SAT percentile",
       y = "First year (college) grade point average"
       )

   mod <- lm(fy_gpa ~ sat_m, data = satgpa)
   tidy(mod)
