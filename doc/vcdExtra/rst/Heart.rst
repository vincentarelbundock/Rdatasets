===== ===============
Heart R Documentation
===== ===============

Sex, Occupation and Heart Disease
---------------------------------

Description
~~~~~~~~~~~

Classification of individuals by gender, occupational category and
occurrence of heart disease

Format
~~~~~~

A 3-dimensional array resulting from cross-tabulating 3 variables for
21522 observations. The variable names and their levels are:

== =========== ===================================
No Name        Levels
1  ``Disease`` ``⁠"Disease", "None"⁠``
2  ``Gender``  ``⁠"Male", "Female"⁠``
3  ``Occup``   ``⁠"Unempl", "WhiteCol", "BlueCol"⁠``
               
== =========== ===================================

Source
~~~~~~

% Karger, 1980 Karger, (1980).

Examples
~~~~~~~~

.. code:: R


   data(Heart)
   str(Heart)

   # Display the frequencies for occupational categories.
   # Each row is a 2 x 2 table
   vcd::structable(Disease + Gender ~ Occup, data=Heart)

   # display as fourfold plots
   vcd::cotabplot(~ Disease + Gender | Occup, data=Heart, panel = cotab_fourfold)
