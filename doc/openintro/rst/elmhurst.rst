======== ===============
elmhurst R Documentation
======== ===============

Elmhurst College gift aid
-------------------------

Description
~~~~~~~~~~~

A random sample of 50 students gift aid for students at Elmhurst
College.

Usage
~~~~~

::

   elmhurst

Format
~~~~~~

A data frame with 50 observations on the following 3 variables.

family_income
   Family income of the student.

gift_aid
   Gift aid, in $1000s.

price_paid
   Price paid by the student (tuition - gift aid).

Source
~~~~~~

These data were sampled from a table of data for all freshman from the
2011 class at Elmhurst College that accompanied an article titled What
Students Really Pay to Go to College published online by The Chronicle
of Higher Education:
https://www.chronicle.com/article/what-students-really-pay-to-go-to-college/.

Examples
~~~~~~~~

::


   library(ggplot2)
   library(broom)

   ggplot(elmhurst, aes(x = family_income, y = gift_aid)) +
     geom_point() +
     geom_smooth(method = "lm")

   mod <- lm(gift_aid ~ family_income, data = elmhurst)
   tidy(mod)

