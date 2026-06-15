==== ===============
gpa2 R Documentation
==== ===============

gpa2
----

Description
~~~~~~~~~~~

Wooldridge Source: For confidentiality reasons, I cannot provide the
source of these data. I can say that Data loads lazily.

Usage
~~~~~

.. code:: R

   data('gpa2')

Format
~~~~~~

A data.frame with 4137 observations on 12 variables:

- **sat:** combined SAT score

- **tothrs:** total hours through fall semest

- **colgpa:** GPA after fall semester

- **athlete:** =1 if athlete

- **verbmath:** verbal/math SAT score

- **hsize:** size grad. class, 100s

- **hsrank:** rank in grad. class

- **hsperc:** high school percentile, from top

- **female:** =1 if female

- **white:** =1 if white

- **black:** =1 if black

- **hsizesq:** hsize^2

Used in Text
~~~~~~~~~~~~

pages 106, 184, 208-209, 210-211, 221, 259, 262-263

they come from a midsize research university that also supports men’s
and women’s athletics at the Division I level.

Source
~~~~~~

https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

Examples
~~~~~~~~

.. code:: R

    str(gpa2)
