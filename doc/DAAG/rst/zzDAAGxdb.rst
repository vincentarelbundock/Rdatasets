.. container::

   ========= ===============
   zzDAAGxdb R Documentation
   ========= ===============

   .. rubric:: List, each of whose elements hold rows of a file, in
      character format
      :name: zzDAAGxdb

   .. rubric:: Description
      :name: description

   This is the default alternative database for use with the function
   ``datafile``, which uses elements of this list to place files in the
   working directory. The names of the list elements are bestTimes and
   bostonc.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(zzDAAGxdb)

   .. rubric:: Format
      :name: format

   Successive elements in this list hold character vectors from which
   the corresponding files can be readily generated.

   .. rubric:: Details
      :name: details

   The web site given as the source of the data has additional
   information on the bestTimes data. Records are as at August 7 2006.

   .. rubric:: Source
      :name: source

   http://www.gbrathletics.com/wrec.htm (bestTimes)

   http://lib.stat.cmu.edu/datasets/ (bostonc)

   .. rubric:: References
      :name: references

   Harrison, D. and Rubinfeld, D.L. 'Hedonic prices and the demand for
   clean air', J. Environ. Economics & Management, vol.5, 81-102, 1978.
   corrected by Kelley Pace (kpace@unix1.sncc.lsu.edu)

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(zzDAAGxdb)
      names(zzDAAGxdb)
