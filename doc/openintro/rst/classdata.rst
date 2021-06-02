========= ===============
classdata R Documentation
========= ===============

Simulated class data
--------------------

Description
~~~~~~~~~~~

This data is simulated and is meant to represent students scores from
three different lectures who were all given the same exam.

Usage
~~~~~

::

   classdata

Format
~~~~~~

A data frame with 164 observations on the following 2 variables.

m1
   Represents a first midterm score.

lecture
   Three classes: ``a``, ``b``, and ``c``.

References
~~~~~~~~~~

OpenIntro Statistics, Chapter 8.

Examples
~~~~~~~~

::


   anova(lm(m1 ~ lecture, classdata))

