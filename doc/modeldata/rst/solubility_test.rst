=============== ===============
solubility_test R Documentation
=============== ===============

Solubility predictions from MARS model
--------------------------------------

Description
~~~~~~~~~~~

Solubility predictions from MARS model

Details
~~~~~~~

For the solubility data in Kuhn and Johnson (2013), these data are the
test set results for the MARS model. The observed solubility (in column
``solubility``) and the model results (``prediction``) are contained in
the data.

Value
~~~~~

=================== ============
``solubility_test`` a data frame
=================== ============

Source
~~~~~~

Kuhn, M., Johnson, K. (2013) *Applied Predictive Modeling*, Springer

Examples
~~~~~~~~

.. code:: R

   data(solubility_test)
   str(solubility_test)
