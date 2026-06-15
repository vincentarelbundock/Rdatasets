========= ===============
EBMT data R Documentation
========= ===============

Data from the European Society for Blood and Marrow Transplantation (EBMT)
--------------------------------------------------------------------------

Description
~~~~~~~~~~~

A data frame of 2279 patients transplanted at the EBMT between 1985 and
1998. These data were used in Fiocco, Putter & van Houwelingen (2008),
van Houwelingen & Putter (2008, 2012) and de Wreede, Fiocco & Putter
(2011). The included variables are

id
   Patient identification number

rec
   Time in days from transplantation to recovery or last follow-up

rec.s
   Recovery status; 1 = recovery, 0 = censored

ae
   Time in days from transplantation to adverse event (AE) or last
   follow-up

ae.s
   Adverse event status; 1 = adverse event, 0 = censored

recae
   Time in days from transplantation to both recovery and AE or last
   follow-up

recae.s
   Recovery and AE status; 1 = both recovery and AE, 0 = no recovery or
   no AE or censored

rel
   Time in days from transplantation to relapse or last follow-up

rel.s
   Relapse status; 1 = relapse, 0 = censored

srv
   Time in days from transplantation to death or last follow-up

srv.s
   Relapse status; 1 = dead, 0 = censored

year
   Year of transplantation; factor with levels "1985-1989", "1990-1994",
   "1995-1998"

agecl
   Patient age at transplant; factor with levels "<=20", "20-40", ">40"

proph
   Prophylaxis; factor with levels "no", "yes"

match
   Donor-recipient gender match; factor with levels "no gender
   mismatch", "gender mismatch"

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

Fiocco M, Putter H, van Houwelingen HC (2008). Reduced-rank proportional
hazards regression and simulation-based prediction for multi-state
models. *Statistics in Medicine* **27**, 4340–4358.

van Houwelingen HC, Putter H (2008). Dynamic predicting by landmarking
as an alternative for multi-state modeling: an application to acute
lymphoid leukemia data. *Lifetime Data Anal* **14**, 447–463.

van Houwelingen HC, Putter H (2012). Dynamic Prediction in Clinical
Survival Analaysis. Chapman & Hall/CRC Press, Boca Raton.

de Wreede LC, Fiocco M, and Putter H (2011). mstate: An R Package for
the Analysis of Competing Risks and Multi-State Models. *Journal of
Statistical Software*, Volume 38, Issue 7.
