========= ===============
rotterdam R Documentation
========= ===============

Breast cancer data set used in Royston and Altman (2013)
--------------------------------------------------------

Description
~~~~~~~~~~~

The ``rotterdam`` data set includes 2982 primary breast cancers patients
whose data whose records were included in the Rotterdam tumor bank.

Usage
~~~~~

::

   data("rotterdam")

Format
~~~~~~

A data frame with 2982 observations on the following 15 variables.

``pid``
   patient identifier

``year``
   year of cancer incidence

``age``
   age

``meno``
   menopausal status (0= premenopausal, 1= postmenopausal)

``size``
   tumor size, a factor with levels ``<=20`` ``20-50`` ``>50``

``grade``
   tumor grade

``nodes``
   number of positive lymph nodes

``pgr``
   progesterone receptors (fmol/l)

``er``
   estrogen receptors (fmol/l)

``hormon``
   hormonal treatment (0=no, 1=yes)

``chemo``
   chemotherapy

``rtime``
   days to recurrence or last follow-up

``recur``
   0= no recurrence, 1= recurrence

``dtime``
   days to death or last follow-up

``death``
   0= alive, 1= dead

Details
~~~~~~~

These data sets are used in the paper by Royston and Altman. The
Rotterdam data is used to create a fitted model, and the GBSG data for
validation of the model. The paper gives references for the data source.

References
~~~~~~~~~~

Patrick Royston and Douglas Altman, External validation of a Cox
prognostic model: principles and methods. BMC Medical Research
Methodology 2013, 13:33

See Also
~~~~~~~~

``gbsg``

Examples
~~~~~~~~

::

   rfstime <- pmin(rotterdam$rtime, rotterdam$dtime)
   status  <- pmax(rotterdam$recur, rotterdam$death)
   fit1 <- coxph(Surv(rfstime, status) ~ pspline(age) + meno + size + 
           pspline(nodes) + er,
        data=rotterdam, subset = (nodes > 0))
   # Royston and Altman used fractional polynomials for the nonlinear terms
