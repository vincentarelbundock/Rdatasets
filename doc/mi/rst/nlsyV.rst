===== ===============
nlsyV R Documentation
===== ===============

National Longitudinal Survey of Youth Extract
---------------------------------------------

Description
~~~~~~~~~~~

This dataset pertains to children and their families in the United
States and is intended to illustrate missing data issues. Note that
although the original data are longitudinal, this extract is not.

Usage
~~~~~

::

   data(nlsyV)

Format
~~~~~~

A data frame with 400 randomly subsampled observations on the following
7 variables.

``ppvtr.36``
   a numeric vector with data on the Peabody Picture Vocabulary Test
   (Revised) administered at 36 months

``first``
   indicator for whether child was first-born

``b.marr``
   indicator for whether mother was married when child was born

``income``
   a numeric vector with data on family income in year after the child
   was born

``momage``
   a numeric vector with data on the age of the mother when the child
   was born

``momed``
   educational status of mother when child was born (1 = less than high
   school, 2 = high school graduate, 3 = some college, 4 = college
   graduate)

``momrace``
   race of mother (1 = black, 2 = Hispanic, 3 = white)

Note that **momed** would typically be an ordered ``factor`` while
**momrace** would typically be an unorderd ``factor`` but both are
``numeric`` in this ``data.frame`` in order to illustrate the mechanism
to ``change`` the type of a ``missing_variable``

Source
~~~~~~

National Longitudinal Survey of Youth, 1997,
http://www.bls.gov/nls/nlsy97.htm

Examples
~~~~~~~~

::

   data(nlsyV)
   summary(nlsyV)
