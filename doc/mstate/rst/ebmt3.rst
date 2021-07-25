=========================== ===============
EBMT platelet recovery data R Documentation
=========================== ===============

Data from the European Society for Blood and Marrow Transplantation (EBMT)
--------------------------------------------------------------------------

Description
~~~~~~~~~~~

A data frame of 2204 patients transplanted at the EBMT between 1995 and
1998. These data were used in Section 4 of the tutorial on competing
risks and multi-state models (Putter, Fiocco & Geskus, 2007). The
included variables are

id
   Patient identification number

prtime
   Time in days from transplantation to platelet recovery or last
   follow-up

prstat
   Platelet recovery status; 1 = platelet recovery, 0 = censored

rfstime
   Time in days from transplantation to relapse or death or last
   follow-up (relapse-free survival time)

rfsstat
   Relapse-free survival status; 1 = relapsed or dead, 0 = censored

dissub
   Disease subclassification; factor with levels "AML", "ALL", "CML"

age
   Patient age at transplant; factor with levels "<=20", "20-40", ">40"

drmatch
   Donor-recipient gender match; factor with levels "No gender
   mismatch", "Gender mismatch"

tcd
   T-cell depletion; factor with levels "No TCD", "TCD"

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

Putter H, Fiocco M, Geskus RB (2007). Tutorial in biostatistics:
Competing risks and multi-state models. *Statistics in Medicine* **26**,
2389–2430.
