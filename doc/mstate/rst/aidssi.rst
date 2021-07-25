====== ===============
aidssi R Documentation
====== ===============

Data from the Amsterdam Cohort Studies on HIV infection and AIDS
----------------------------------------------------------------

Description
~~~~~~~~~~~

These data sets give the times (in years) from HIV infection to AIDS, SI
switch and death in 329 men who have sex with men (MSM). Data are from
the period until combination anti-retroviral therapy became available
(1996). For more background information on the cohort, ccr5 and SI, see
Geskus *et al.* (2000, 2003)

Format
~~~~~~

aidssi

+---------+-----------------------------------------------------------+
| patnr:  | Patient identification number                             |
+---------+-----------------------------------------------------------+
| time:   | Time from HIV infection to first of SI appearance and     |
|         | AIDS, or last follow-up                                   |
+---------+-----------------------------------------------------------+
| status: | Event indicator; 0 = censored, 1 = AIDS, 2 = SI           |
|         | appearance                                                |
+---------+-----------------------------------------------------------+
| cause:  | Failure cause; factor with levels "event-free", "AIDS",   |
|         | "SI"                                                      |
+---------+-----------------------------------------------------------+
| ccr5:   | CCR5 genotype; factor with levels "WW" (wild type allele  |
|         | on both chromosomes),                                     |
+---------+-----------------------------------------------------------+
|         | "WM" (mutant allele on one chromosome)                    |
+---------+-----------------------------------------------------------+
|         |                                                           |
+---------+-----------------------------------------------------------+

aidssi2

+-------------+-------------------------------------------------------+
| patnr:      | Patient identification number                         |
+-------------+-------------------------------------------------------+
| entry.time: | Time from HIV infection to cohort entry. Value is     |
|             | zero if HIV infection occurred while in follow-up.    |
+-------------+-------------------------------------------------------+
| aids.time:  | Time from HIV infection to AIDS, or last follow-up if |
|             | AIDS was not observed                                 |
+-------------+-------------------------------------------------------+
| aids.stat:  | Event indicator with respect to AIDS, with values 0   |
|             | (censored) and 1 (AIDS)                               |
+-------------+-------------------------------------------------------+
| si.time:    | Time from HIV infection to SI switch, or last         |
|             | follow-up if SI switch was not observed               |
+-------------+-------------------------------------------------------+
| si.stat:    | Event indicator with respect to SI switch, with       |
|             | values 0 (no switch) and 1 (switch)                   |
+-------------+-------------------------------------------------------+
| death.time: | Time from HIV infection to death, or last follow-up   |
|             | if death was not observed                             |
+-------------+-------------------------------------------------------+
| death.stat: | Event indicator with respect to death; 0 = alive, 1 = |
|             | dead                                                  |
+-------------+-------------------------------------------------------+
| age.inf:    | Age at HIV infection                                  |
+-------------+-------------------------------------------------------+
| ccr5:       | CCR5 genotype; factor with levels "WW" (wild type     |
|             | allele on both chromosomes),                          |
+-------------+-------------------------------------------------------+
|             | "WM" (mutant allele on one chromosome)                |
+-------------+-------------------------------------------------------+
|             |                                                       |
+-------------+-------------------------------------------------------+

Details
~~~~~~~

``aidssi`` contains follow-up data until the first of AIDS and SI
switch. It was used as example for the competing risks analyses in
Putter, Fiocco, Geskus (2007) and in Geskus (2016).

``aidssi2`` extends the ``aidssi`` data set in three ways. First, it
considers events after the initial one. Second, it includes the entry
times of the individuals that entered the study after HIV infection.
Third, age at HIV infection has been added as extra covariable. Numbers
differ slightly from the ``aidssi`` data set. Some individuals were
diagnosed with AIDS only when they died and others had their last
follow-up at AIDS diagnosis. In order to prevent two transitions to
happen at the same time, their time to AIDS was shortened by 0.25 years.
This data set was used as example for the multi-state analyses in Geskus
(2016).

Source
~~~~~~

Geskus RB (2000). On the inclusion of prevalent cases in HIV/AIDS
natural history studies through a marker-based estimate of time since
seroconversion. *Statistics in Medicine* **19**, 1753–1769.

Geskus RB, Miedema FA, Goudsmit J, Reiss P, Schuitemaker H, Coutinho RA
(2003). Prediction of residual time to AIDS and death based on markers
and cofactors. *Journal of AIDS* **32**, 514–521.

References
~~~~~~~~~~

Geskus, Ronald B. (2016). *Data Analysis with Competing Risks and
Intermediate States.* CRC Press, Boca Raton.

Putter H, Fiocco M, Geskus RB (2007). Tutorial in biostatistics:
Competing risks and multi-state models. *Statistics in Medicine* **26**,
2389–2430.
