.. container::

   ============= ===============
   stackoverflow R Documentation
   ============= ===============

   .. rubric:: Annual Stack Overflow Developer Survey Data
      :name: annual-stack-overflow-developer-survey-data

   .. rubric:: Description
      :name: description

   Annual Stack Overflow Developer Survey Data

   .. rubric:: Details
      :name: details

   These data are a collection of 5,594 data points collected on
   developers. These data could be used to try to predict who works
   remotely (as used in the source listed below).

   .. rubric:: Value
      :name: value

   ================= ========
   ``stackoverflow`` a tibble
   ================= ========

   .. rubric:: Source
      :name: source

   Julia Silge, *Supervised Machine Learning Case Studies in R*

   https://supervised-ml-course.netlify.com/chapter2

   Raw data: https://insights.stackoverflow.com/survey/

   .. rubric:: Examples
      :name: examples

   ::

      data(stackoverflow)
      str(stackoverflow)
