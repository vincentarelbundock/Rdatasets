=========== ===============
exam_grades R Documentation
=========== ===============

Exam and course grades for statistics students
----------------------------------------------

Description
~~~~~~~~~~~

Grades on three exams and overall course grade for 233 students during
several years for a statistics course at a university.

Usage
~~~~~

::

   exam_grades

Format
~~~~~~

A data frame with 233 observations, each representing a student.

semester
   Semester when grades were recorded.

sex
   Sex of the student as recorded on the university registration system:
   Man or Woman.

exam1
   Exam 1 grade.

exam2
   Exam 2 grade.

exam3
   Exam 3 grade.

course_grade
   Overall course grade.

Examples
~~~~~~~~

::


   library(ggplot2)
   library(dplyr)

   # Course grade vs. each exam
   ggplot(exam_grades, aes(x = exam1, y = course_grade)) +
     geom_point()

   ggplot(exam_grades, aes(x = exam2, y = course_grade)) +
     geom_point()

   ggplot(exam_grades, aes(x = exam2, y = course_grade)) +
     geom_point()

   # Semester averages
   exam_grades %>%
     group_by(semester) %>%
     summarise(across(exam1:course_grade, mean, na.rm = TRUE))

