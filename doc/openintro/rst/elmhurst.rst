.. container::

   .. container::

      ======== ===============
      elmhurst R Documentation
      ======== ===============

      .. rubric:: Elmhurst College gift aid
         :name: elmhurst-college-gift-aid

      .. rubric:: Description
         :name: description

      A random sample of 50 students gift aid for students at Elmhurst
      College.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         elmhurst

      .. rubric:: Format
         :name: format

      A data frame with 50 observations on the following 3 variables.

      family_income
         Family income of the student.

      gift_aid
         Gift aid, in $1000s.

      price_paid
         Price paid by the student (tuition - gift aid).

      .. rubric:: Source
         :name: source

      These data were sampled from a table of data for all freshman from
      the 2011 class at Elmhurst College that accompanied an article
      titled What Students Really Pay to Go to College published online
      by The Chronicle of Higher Education:
      https://www.chronicle.com/article/what-students-really-pay-to-go-to-college/.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(ggplot2)
         library(broom)

         ggplot(elmhurst, aes(x = family_income, y = gift_aid)) +
           geom_point() +
           geom_smooth(method = "lm")

         mod <- lm(gift_aid ~ family_income, data = elmhurst)
         tidy(mod)
