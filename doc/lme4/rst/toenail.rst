======= ===============
toenail R Documentation
======= ===============

Toenail onychomycosis data from dermatophyte infections
-------------------------------------------------------

Description
~~~~~~~~~~~

Results of a clinical trial (De Backer et al. 1998) to compare two oral
antifungal treatments: itraconazole and terbinafine to treat toenail
onychomycosis causes by dermatophytes.

Usage
~~~~~

.. code:: R

   data("toenail")

Format
~~~~~~

A data frame with 1908 observations on the following 8 variables.

``patientID``
   a unique identifier for each patient in the trial.

``outcome``
   a factor indicating the severity of the patient's onycholysis
   (separation of the nail plate from the nail bed), with levels
   ``none or mild`` and ``moderate or severe``.

``treatment``
   a factor indicating the treatment used with levels ``itraconazole``
   and ``terbinafine``.

``time``
   exact timing of visit in months.

``visit``
   An integer represent the sequential visit number for each subject.

Details
~~~~~~~

The data in `lme4 <https://CRAN.R-project.org/package=lme4>`__ was
copied from the toenail data found in the
`HSAUR3 <https://CRAN.R-project.org/package=HSAUR3>`__ package. From the
dataset documentation from the
`HSAUR3 <https://CRAN.R-project.org/package=HSAUR3>`__ package: There is
a clinical trial (De Backer et al. 1998) to compare two competing oral
antifungal treatments for toenail infection (dermatophyte
onychomycosis). A total of 378 patients were randomly allocated into two
treatment groups, one group receiving 250mg per day of terbinafine and
the other group 200mg per day of itraconazole. Patients were evaluated
at seven visits, intended to be at weeks 0, 4, 8, 12, 24, 36, and 48 for
the degree of separation of the nail plate from the nail bed
(onycholysis) dichotomized into ``moderate or severe`` and
``none or mild``. But patients did not always arrive exactly at the
scheduled time and the exact time in months that they did attend was
recorded. The data is not balanced since not all patients attended for
all seven planned visits.

Source
~~~~~~

(De Backer et al. 1998)

References
~~~~~~~~~~

De Backer M, De Vroey C, Lesaffre E, Scheys I, De Keyser P (1998).
“Twelve weeks of continuous oral therapy for toenail onychomycosis
caused by dermatophytes: A double-blind comparative trial of terbinafine
250 mg/day versus itraconazole 200 mg/day.” *Journal of the American
Academy of Dermatology*, **38**\ (5, Supplement 2), S57-S63. ISSN
0190-9622,
`doi:10.1016/S0190-9622(98)70486-4 <https://doi.org/10.1016/S0190-9622%2898%2970486-4>`__.

Examples
~~~~~~~~

.. code:: R

   toemod <- glmer(outcome ~ time*treatment + (1 | patientID), 
                   data = toenail, family = binomial(link = "logit"))
