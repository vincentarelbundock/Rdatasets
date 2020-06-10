==== ===============
milk R Documentation
==== ===============

Milk Sweetness Study
--------------------

Description
~~~~~~~~~~~

The ``milk`` data frame has 17 rows and 2 columns. Each of 17 panelists
compared two milk samples for sweetness.

Usage
~~~~~

::

   milk

Format
~~~~~~

This data frame contains the following columns:

four
   a numeric vector consisting of the assessments for four units of
   additive

one
   a numeric vector while the is the assessment for one unit of additive

Source
~~~~~~

J.H. Maindonald

Examples
~~~~~~~~

::

   print("Rug Plot - Example 1.8.1")
   xyrange <- range(milk)
   plot(four ~ one, data = milk, xlim = xyrange, ylim = xyrange, pch = 16)
   rug(milk$one)
   rug(milk$four, side = 2)
   abline(0, 1)
