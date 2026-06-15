========== ===============
death_prob R Documentation
========== ===============

2015 US Period Life Table
-------------------------

Description
~~~~~~~~~~~

Probability of death within 1 year by age and sex in the United States
in 2015.

Usage
~~~~~

.. code:: R

   death_prob

Format
~~~~~~

An object of class ``"data.frame"``.

Details
~~~~~~~

- age. Age strata, with each year a different stratum.

- sex. Male or Female.

- prob. Probability of death within 1 year given exact age and sex.

Source
~~~~~~

`Social Security
Administraton <https://www.ssa.gov/oact/STATS/table4c6.html>`__

Examples
~~~~~~~~

.. code:: R

   head(death_prob)
