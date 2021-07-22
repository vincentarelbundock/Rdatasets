========= ===============
Utilities R Documentation
========= ===============

Utility bills
-------------

Description
~~~~~~~~~~~

Data from utility bills at a residence. ``Utilities2`` is a similar data
set with some additional variables.

Usage
~~~~~

::

   data(Utilities)

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

Source
~~~~~~

Daniel T. Kaplan, *Statistical modeling: A fresh approach*, 2009.

See Also
~~~~~~~~

``Utilities2``.

Examples
~~~~~~~~

::

   data(Utilities)
   if (require(ggformula)) {
     gf_point(gasbill ~ temp, data = Utilities)
   }
