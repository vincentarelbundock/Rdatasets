============== ===============
causal_quartet R Documentation
============== ===============

Causal Quartet Data
-------------------

Description
~~~~~~~~~~~

This dataset contains 400 observations, each generated under a different
data generating mechanism:

- (1) A collider

- (2) A confounder

- (3) A mediator

- (4) M-bias

Usage
~~~~~

.. code:: R

   causal_quartet

Format
~~~~~~

A dataframe with 400 rows and 6 variables:

- ``dataset``: The data generating mechanism

- ``exposure``: exposure

- ``outcome``: outcome

- ``covariate``: a known factor

- ``u1``: an unknown factor

- ``u2``: an unknown factor

References
~~~~~~~~~~

D'Agostino McGowan L, Barrett M (2023). Causal inference is not a
statistical problem. Preprint arXiv:2304.02683v1.
