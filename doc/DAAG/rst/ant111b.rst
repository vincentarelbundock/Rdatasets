======= ===============
antigua R Documentation
======= ===============

Averages by block of yields for the Antigua Corn data
-----------------------------------------------------

Description
~~~~~~~~~~~

These data frames have yield averages by blocks (parcels). The
``ant111b``\ dataset is a subset that has block averages of corn yields
for treatment 111 only

Usage
~~~~~

.. code:: R

     data(antigua)
     data(ant111b)
     

Format
~~~~~~

A data frame with 324 observations on 7 variables.

id
   a numeric vector

site
   a factor with 8 levels.

block
   a factor with levels ``I`` ``II`` ``III`` ``IV``

plot
   a numeric vector

trt
   a factor consisting of 12 levels

ears
   a numeric vector; note that -9999 is used as a missing value code.

harvwt
   a numeric vector; the average yield

Source
~~~~~~

Andrews DF; Herzberg AM, 1985. Data. A Collection of Problems from Many
Fields for the Student and Research Worker. Springer-Verlag. (pp.
339-353)
