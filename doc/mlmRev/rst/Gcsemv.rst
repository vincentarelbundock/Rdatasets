====== ===============
Gcsemv R Documentation
====== ===============

GCSE exam score
---------------

Description
~~~~~~~~~~~

The GCSE exam scores on a science subject. Two components of the exam
were chosen as outcome variables: written paper and course work. There
are 1,905 students from 73 schools in England.

Usage
~~~~~

.. code:: R

   data(Gcsemv)

Format
~~~~~~

A data frame with 1905 observations on the following 5 variables.

school
   School ID - a factor

student
   Student ID - a factor

gender
   Gender of student

written
   Total score on written paper

course
   Total score on coursework paper

Source
~~~~~~

https://www.bristol.ac.uk/cmm/learning/mmsoftware/data-rev.html

References
~~~~~~~~~~

Multivariate response models. (2000). In Rasbash, J., et al, *A user's
guide to MLwiN*, Institute of Education, University of London.

Examples
~~~~~~~~

.. code:: R

   str(Gcsemv)
