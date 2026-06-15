================== ===============
causal_confounding R Documentation
================== ===============

Confounder Data
---------------

Description
~~~~~~~~~~~

This dataset contains 100 observations, generated under the following
mechanism: Z ~ N(0, 1) (measured factor: confounder) X ~ Z + N(0,1)
(exposure) Y ~ 0.5X + Z + N(0, 1) (outcome)

Usage
~~~~~

.. code:: R

   causal_confounding

Format
~~~~~~

A dataframe with 100 rows and 3:

- ``covariate``: a known factor (confounder)

- ``exposure``: exposure

- ``outcome``: outcome

References
~~~~~~~~~~

D'Agostino McGowan L, Barrett M (2023). Causal inference is not a
statistical problem. Preprint arXiv:2304.02683v1.
