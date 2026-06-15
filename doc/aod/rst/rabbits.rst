======= ===============
rabbits R Documentation
======= ===============

Rabbits Foetuses Survival Experiment
------------------------------------

Description
~~~~~~~~~~~

Experimental data for analyzing the effect of an increasing dose of a
compound on the proportion of live foetuses affected. Four
treatment-groups were considered: control “C”, low dose “L”, medium dose
“M” and high dose “H”. The animal species used in the experiment was
banded Dutch rabbit (Paul, 1982, Table 1).

Usage
~~~~~

.. code:: R

   data(rabbits)

Format
~~~~~~

A data frame with 84 observations on the following 3 variables.

group
   a factor with levels ``C``, ``H``, ``L`` and ``M``

n
   a numeric vector: the total number of foetuses.

y
   a numeric vector: the number of affected foetuses.

References
~~~~~~~~~~

Paul, S.R., 1982. *Analysis of proportions of affected foetuses in
teratological experiments.* Biometrics 38, 361-370.
