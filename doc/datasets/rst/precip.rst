====== ===============
precip R Documentation
====== ===============

Annual Precipitation in US Cities
---------------------------------

Description
~~~~~~~~~~~

The average amount of precipitation (rainfall) in inches for each of 70
United States (and Puerto Rico) cities.

Usage
~~~~~

::

   precip

Format
~~~~~~

A named vector of length 70.

Note
~~~~

The dataset version up to Nov.16, 2016 had a typo in ``"Cincinnati"``'s
name. The examples show how to recreate that version.

Source
~~~~~~

Statistical Abstracts of the United States, 1975.

References
~~~~~~~~~~

McNeil, D. R. (1977) *Interactive Data Analysis*. New York: Wiley.

Examples
~~~~~~~~

::

   require(graphics)
   dotchart(precip[order(precip)], main = "precip data")
   title(sub = "Average annual precipitation (in.)")

   ## Old ("wrong") version of dataset (just name change):
   precip.O <- local({
      p <- precip; names(p)[names(p) == "Cincinnati"] <- "Cincinati" ; p })
   stopifnot(all(precip == precip.O),
         match("Cincinnati", names(precip)) == 46,
         identical(names(precip)[-46], names(precip.O)[-46]))
