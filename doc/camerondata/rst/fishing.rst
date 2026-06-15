======= ===============
fishing R Documentation
======= ===============

Fishing mode choice
-------------------

Description
~~~~~~~~~~~

Data sample of 1,182 people from a survey conducted by Thomson and
Crooke (1991) and analyzed by Herriges and Kling (1999). Cameron and
Trivedi (2005).

Usage
~~~~~

.. code:: R

   fishing

Format
~~~~~~

A data frame with 1182 observations and 16 variables:

mode
   fishing mode choice, = 1 beach, = 2 pier, = 3 private boat, = 4
   charter boat

price
   price for chosen alternative, usd

crate
   catch rate for chosen alternative, sum of per-hour catch rates of
   targeted species.

dbeach
   = 1 if beach mode chosen, = 0 otherwise

dpier
   = 1 if pier mode chosen, = 0 otherwise

dprivate
   = 1 if private boat mode chosen, = 0 otherwise

dcharter
   = 1 if charter boat mode chosen, = 0 otherwise

pbeach
   price for beach mode, usd

ppier
   price for pier mode, usd

pprivate
   price for private boat mode, usd

pcharter
   price for charter boat mode, usd

qbeach
   catch rate for beach mode

qpier
   catch rate for pier mode

qprivate
   catch rate for private boat mode

qcharter
   catch rate for charter boat mode

income
   monthly income, usd

Section in Text
~~~~~~~~~~~~~~~

14.2 Binary Outcome Example: Fishing Mode Choice, pp. 464-6, 486

15.2 Choice of Fishing Mode, pp. 491-5

Source
~~~~~~

http://cameron.econ.ucdavis.edu/mmabook/mmadata.html

References
~~~~~~~~~~

Cameron, A. and Trivedi, P. (2005), "Microeconometrics: Methods and
Applications," Cambridge University Press, New York.

Herriges, J. and Kling, C. (1999), "Nonlinear Income Effects in Random
Utility Models," Review of Economics and Statistics, 81, 62-72.

Thomson, C., and Crooke, S. (1991), "Results of the Southern California
Sportfish Economic Survey," NOAA Technical Memorandum, National Marine
Fisheries Service, Southwest Fisheries Science Center.

Examples
~~~~~~~~

.. code:: R

   summary(fishing)
