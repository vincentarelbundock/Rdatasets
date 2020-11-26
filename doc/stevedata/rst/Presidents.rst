========== ===============
Presidents R Documentation
========== ===============

U.S. Presidents and Their Terms in Office
-----------------------------------------

Description
~~~~~~~~~~~

This should be self-evident. Here are all U.S. presidents who have
completed their terms in office (i.e. excluding the current one).

Usage
~~~~~

::

   Presidents

Format
~~~~~~

A data frame with 44 observations on the following 3 variables.

``president``
   the president

``start``
   the start date of the term, as a date

``end``
   the end date of the term, as a date

Details
~~~~~~~

I scraped this from https://www.presidentsusa.net/presvplist.html. Data
frame is capital-P "Presidents" to avoid a conflict with the
``presidents`` data frame from the ``datasets`` package.
