======== ===============
Titanicp R Documentation
======== ===============

Passengers on the Titanic
-------------------------

Description
~~~~~~~~~~~

Data on passengers on the RMS Titanic, excluding the Crew and some
individual identifier variables.

Format
~~~~~~

A data frame with 1309 observations on the following 6 variables.

``pclass``
   a factor with levels ``⁠1st⁠`` ``⁠2nd⁠`` ``⁠3rd⁠``

``survived``
   a factor with levels ``died`` ``survived``

``sex``
   a factor with levels ``female`` ``male``

``age``
   passenger age in years (or fractions of a year, for children), a
   numeric vector; age is missing for 263 of the passengers

``sibsp``
   number of siblings or spouses aboard, integer: ``0:8``

``parch``
   number of parents or children aboard, integer: ``0:6``

Details
~~~~~~~

There are a number of related versions of the Titanic data, in various
formats. This version was derived from ``ptitanic`` in the rpart.plot
package, modifying it to remove the ``⁠Class 'labelled'⁠`` attributes for
some variables (inherited from Frank Harrell's ``titanic3`` version)
which caused problems with some applications, notably ``ggplot2``.

Other versions:

``Titanic`` is the 4-way frequency table of all 2201 people aboard the
Titanic, including passengers and crew.

Source
~~~~~~

The original R source for this dataset was compiled by Frank Harrell and
Robert Dawson: https://hbiostat.org/data/repo/titanic.txt, described in
more detail in https://hbiostat.org/data/repo/titanic

For this version of the Titanic data, passenger details were deleted,
survived was cast as a factor, and the name changed to ``Titanicp`` to
minimize confusion with other versions.

Examples
~~~~~~~~

.. code:: R


   data(Titanicp)
   ## maybe str(Titanicp) ; plot(Titanicp) ...
