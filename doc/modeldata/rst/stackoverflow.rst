============= ===============
stackoverflow R Documentation
============= ===============

Annual Stack Overflow Developer Survey Data
-------------------------------------------

Description
~~~~~~~~~~~

Annual Stack Overflow Developer Survey Data

Details
~~~~~~~

These data are a collection of 5,594 data points collected on
developers. These data could be used to try to predict who works
remotely (as used in the source listed below).

Value
~~~~~

================= ========
``stackoverflow`` a tibble
================= ========

Source
~~~~~~

Julia Silge, *Supervised Machine Learning Case Studies in R*

``⁠https://supervised-ml-course.netlify.com/chapter2⁠``

Raw data: ``⁠https://insights.stackoverflow.com/survey/⁠``

Examples
~~~~~~~~

.. code:: R

   data(stackoverflow)
   str(stackoverflow)
