====== ===============
beanie R Documentation
====== ===============

Age and value of 50 beanie baby toys
------------------------------------

Description
~~~~~~~~~~~

Age and value of 50 beanie baby toys

Usage
~~~~~

.. code:: R

   beanie

Format
~~~~~~

A data frame with 50 rows and 3 columns:

name
   Name of the toy

age
   Age of the toy in months

value
   Market value of the toy in US dollars

Source
~~~~~~

Beanie world magazine

Examples
~~~~~~~~

.. code:: R

    head(beanie)
    summary(beanie)
    plot(beanie$age, beanie$value, xlab="Age", ylab="Value", pch="*", col="red")
