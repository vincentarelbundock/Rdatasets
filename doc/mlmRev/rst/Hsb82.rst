===== ===============
Hsb82 R Documentation
===== ===============

High School and Beyond - 1982
-----------------------------

Description
~~~~~~~~~~~

Data from the 1982 study “High School and Beyond”.

Usage
~~~~~

.. code:: R

   data(Hsb82)

Format
~~~~~~

A data frame with 7185 observations on students including the following
8 variables.

school
   an ordered factor designating the school that the student attends.

minrty
   a factor with levels

sx
   a factor with levels ``Male`` and ``Female``

ses
   a numeric vector of socio-economic scores

mAch
   a numeric vector of Mathematics achievement scores

meanses
   a numeric vector of mean ``ses`` for the school

sector
   a factor with levels ``Public`` and ``Catholic``

cses
   a numeric vector of centered ``ses`` values where the centering is
   with respect to the ``meanses`` for the school.

Details
~~~~~~~

Each row in this data frame contains the data for one student.

References
~~~~~~~~~~

Raudenbush, Stephen and Bryk, Anthony (2002), *Hierarchical Linear
Models: Applications and Data Analysis Methods*, Sage (chapter 4).

Examples
~~~~~~~~

.. code:: R

   data(Hsb82)
   summary(Hsb82)
