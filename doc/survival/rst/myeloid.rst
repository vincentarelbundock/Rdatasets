======= ===============
myeloid R Documentation
======= ===============

Acute myeloid leukemia
----------------------

Description
~~~~~~~~~~~

This simulated data set is based on a trial in acute myeloid leukemia.

Format
~~~~~~

A data frame with 646 observations on the following 9 variables.

``id``
   subject identifier, 1-646

``trt``
   treatment arm A or B

``sex``
   f=female, m=male

``futime``
   time to death or last follow-up

``death``
   1 if ``futime`` is a death, 0 for censoring

``txtime``
   time to hematropetic stem cell transplant

``crtime``
   time to complete response

``rltime``
   time to relapse of disease

Details
~~~~~~~

This data set is used to illustrate multi-state survival curves. The
correlation between within-subject event times strongly resembles that
from an actual trial, but none of the actual data values are from that
source.

References
~~~~~~~~~~

Le-Rademacher JG, Peterson RA, Therneau TM, Sanford BL, Stone RM,
Mandrekar SJ. Application of multi-state models in cancer clinical
trials. Clin Trials. 2018 Oct; 15 (5):489-498

Examples
~~~~~~~~

::

   coxph(Surv(futime, death) ~ trt, data=myeloid)
   # See the mstate vignette for a more complete analysis
