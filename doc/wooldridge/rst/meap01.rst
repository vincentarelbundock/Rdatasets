====== ===============
meap01 R Documentation
====== ===============

meap01
------

Description
~~~~~~~~~~~

Wooldridge Source: Michigan Department of Education,
www.michigan.gov/mde Data loads lazily.

Usage
~~~~~

.. code:: R

   data('meap01')

Format
~~~~~~

A data.frame with 1823 observations on 11 variables:

- **dcode:** district code

- **bcode:** building code

- **math4:** percent students satisfactory, 4th grade math

- **read4:** percent students satisfactory, 4th grade reading

- **lunch:** percent students eligible for free or reduced lunch

- **enroll:** school enrollment

- **expend:** total spending, $

- **exppp:** expenditures per pupil: expend/enroll

- **lenroll:** log(enroll)

- **lexpend:** log(expend)

- **lexppp:** log(exppp)

Notes
~~~~~

This is another good data set to compare simple and multiple regression
estimates. The expenditure variable (in logs, say) and the poverty
measure (lunch) are negatively correlated in this data set. A simple
regression of math4 on lexppp gives a negative coefficient. Controlling
for lunch makes the spending coefficient positive and significant.

Used in Text: page 18

Source
~~~~~~

https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

Examples
~~~~~~~~

.. code:: R

    str(meap01)
