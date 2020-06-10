========= ===============
softbacks R Documentation
========= ===============

Measurements on a Selection of Paperback Books
----------------------------------------------

Description
~~~~~~~~~~~

This is a subset of the ``allbacks`` data frame which gives measurements
on the volume and weight of 8 paperback books.

Usage
~~~~~

::

   softbacks

Format
~~~~~~

This data frame contains the following columns:

volume
   a numeric vector giving the book volumes in cubic centimeters

weight
   a numeric vector giving the weights in grams

Source
~~~~~~

The bookshelf of J. H. Maindonald.

Examples
~~~~~~~~

::

   print("Outliers in Simple Regression - Example 5.2")
   paperback.lm <- lm(weight ~ volume, data=softbacks)
   summary(paperback.lm)
   plot(paperback.lm)
