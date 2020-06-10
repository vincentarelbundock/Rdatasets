======== ===============
nasshead R Documentation
======== ===============

Documentation of names of columns in nass9702cor
------------------------------------------------

Description
~~~~~~~~~~~

``SASname`` and ``longname`` are from the SAS XPT file nass9702cor.XPT
that is available from the webite noted below. The name ``shortname`` is
the name used in the data frame ``nass9702cor``, not included in this
package, but available from my website that is noted below. It is also
used in ``nassCDS``, for columns that ``nassCDS`` includes.

Usage
~~~~~

::

   data(nasshead)

Format
~~~~~~

A data frame with 56 observations on the following 3 variables.

``shortname``
   a character vector

``SASname``
   a character vector

``longname``
   a character vector

Details
~~~~~~~

For full details of the coding of values in columns of ``nass9702cor``,
consult one of the SAS format files that can be obtained by following
the instructions on Dr Meyer's web site that is noted below.

Source
~~~~~~

http://www.stat.colostate.edu/~meyer/airbags.htm\\
ftp://ftp.nhtsa.dot.gov/nass/\\ Click, e.g., on 1997 and then on
SASformats. See also http://www.maths.anu.edu.au/~johnm/datasets/airbags

References
~~~~~~~~~~

Meyer, M.C. and Finney, T. (2005): *Who wants airbags?*. Chance 18:3-16.

Farmer, C.H. 2006. *Another look at Meyer and Finney's 'Who wants
airbags?'*. Chance 19:15-22.

Meyer, M.C. 2006. *Commentary on "Another look at Meyer and Finney's
‘Who wants airbags?’"*. Chance 19:23-24.

Examples
~~~~~~~~

::

   data(nasshead)
