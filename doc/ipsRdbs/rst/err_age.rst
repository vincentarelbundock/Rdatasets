======= ===============
err_age R Documentation
======= ===============

Errors in guessing ages of Southampton mathematicians
-----------------------------------------------------

Description
~~~~~~~~~~~

Errors in guessing ages of Southampton mathematicians

Usage
~~~~~

.. code:: R

   err_age

Format
~~~~~~

A data frame with 550 rows and 10 columns

group
   Group number of the students guessing the ages

size
   Number of students in the group

females
   How many female guessers were in the group

photo
   Photograph number guessed, can take value 1 to 10.

sex
   Gender of the photographed person.

race
   Race of the photographed person.

est_age
   Estimated age of the photographed person.

tru_age
   True age of the photographed person.

error
   The value of error, estimated age minus true age

abs_error
   Absolute value of the error

Examples
~~~~~~~~

.. code:: R

    summary(err_age)
