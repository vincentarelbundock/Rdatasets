======== ===============
oddbooks R Documentation
======== ===============

Measurements on 12 books
------------------------

Description
~~~~~~~~~~~

Data giving thickness (mm), height (cm), width (cm) and weight (g), of
12 books. Books were selected so that thickness decreased as page area
increased

Usage
~~~~~

::

   data(oddbooks)

Format
~~~~~~

A data frame with 12 observations on the following 4 variables.

thick
   a numeric vector

height
   a numeric vector

breadth
   a numeric vector

weight
   a numeric vector

Source
~~~~~~

JM took books from his library.

Examples
~~~~~~~~

::

   data(oddbooks)
   str(oddbooks)
   plot(oddbooks) 
