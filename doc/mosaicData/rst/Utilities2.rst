========== ===============
Utilities2 R Documentation
========== ===============

Utility bills
-------------

Description
~~~~~~~~~~~

Data from utility bills at a private residence. This is an augmented
version of ``Utilities``.

Usage
~~~~~

::

   data(Utilities2)

Format
~~~~~~

A data frame containing 117 observations for the following variables.

-  ``month`` month (coded as a number)

-  ``day`` day of month on which bill was calculated

-  ``year`` year of bill

-  ``temp`` average temperature (F) for billing period

-  ``kwh`` electricity usage (kwh)

-  ``ccf`` gas usage (ccf)

-  ``thermsPerDay`` a numeric vector

-  ``billingDays`` number of billing days in billing period

-  ``totalbill`` total bill (in dollars)

-  ``gasbill`` gas bill (in dollars)

-  ``elecbill`` electric bill (in dollars)

-  ``notes`` notes about the billing period

-  ``ccfpday`` average gas usage per day (``Utilities2`` only)

-  ``kwhpday`` average electric usage per day (``Utilities2`` only)

-  ``gasbillpday`` gas bill divided by billing days (``Utilities2``
   only)

-  ``elecbillpday`` electric bill divided by billing days a numeric
   vector (``Utilities2`` only)

-  ``totalbillpday`` total bill divided by billing days a numeric vector
   (``Utilities2`` only)

-  ``therms`` ``thermsPerDay * billingDays`` (``Utilities2`` only)

-  ``monthsSinceY2K`` months since 2000 (``Utilities2`` only)

Source
~~~~~~

Daniel T. Kaplan, *Statistical modeling: A fresh approach*, 2009.

See Also
~~~~~~~~

``Utilities``.

Examples
~~~~~~~~

::

   data(Utilities2)
   if (require(ggformula)) {
     gf_point(gasbillpday ~ temp, data = Utilities2)
   }

