========= ===============
zzDAAGxdb R Documentation
========= ===============

List, each of whose elements hold rows of a file, in character format
---------------------------------------------------------------------

Description
~~~~~~~~~~~

This is the default alternative database for use with the function
``datafile``, which uses elements of this list to place files in the
working directory. The names of the list elements are bestTimes and
bostonc.

Usage
~~~~~

.. code:: R

   data(zzDAAGxdb)

Format
~~~~~~

Successive elements in this list hold character vectors from which the
corresponding files can be readily generated.

Details
~~~~~~~

The web site given as the source of the data has additional information
on the bestTimes data. Records are as at August 7 2006.

Source
~~~~~~

http://www.gbrathletics.com/wrec.htm (bestTimes)

http://lib.stat.cmu.edu/datasets/ (bostonc)

References
~~~~~~~~~~

Harrison, D. and Rubinfeld, D.L. 'Hedonic prices and the demand for
clean air', J. Environ. Economics & Management, vol.5, 81-102, 1978.
corrected by Kelley Pace (kpace@unix1.sncc.lsu.edu)

Examples
~~~~~~~~

.. code:: R

   data(zzDAAGxdb)
   names(zzDAAGxdb)
