======================== ===============
EBMT cause of death data R Documentation
======================== ===============

Data from the European Society for Blood and Marrow Transplantation (EBMT)
--------------------------------------------------------------------------

Description
~~~~~~~~~~~

A data frame of 8966 patients transplanted at the EBMT. The included
variables are

id
   Patient identification number

time
   Time in months from transplantation to death or last follow-up

status
   Survival status; 0 = censored; 1,...,6 = death due to the following
   causes: Relapse (1), GvHD (2), Bacterial infections (3), Viral
   infections (4), Fungal infections (5), Other causes (6)

cod
   Cause of death as factor with levels "Alive", "Relapse", "GvHD",
   "Bacterial", "Viral", "Fungal", "Other"

dissub
   Disease subclassification; factor with levels "AML", "ALL", "CML"

match
   Donor-recipient gender match; factor with levels "No gender
   mismatch", "Gender mismatch"

tcd
   T-cell depletion; factor with levels "No TCD", "TCD", "Unknown"

year
   Year of transplantation; factor with levels "1985-1989", "1990-1994",
   "1995-1998"

age
   Patient age at transplant; factor with levels "<=20", "20-40", ">40"

Format
~~~~~~

A data frame, see ``data.frame``.

Source
~~~~~~

We acknowledge the European Society for Blood and Marrow Transplantation
(EBMT) for making available these data. Disclaimer: these data were
simplified for the purpose of illustration of the analysis of competing
risks and multi-state models and do not reflect any real life situation.
No clinical conclusions should be drawn from these data.

References
~~~~~~~~~~

Fiocco M, Putter H, van Houwelingen JC (2005). Reduced rank proportional
hazards model for competing risks. *Biostatistics* **6**, 465–478.
