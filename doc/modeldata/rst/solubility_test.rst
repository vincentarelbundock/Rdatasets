.. container::

   =============== ===============
   solubility_test R Documentation
   =============== ===============

   .. rubric:: Solubility predictions from MARS model
      :name: solubility-predictions-from-mars-model

   .. rubric:: Description
      :name: description

   Solubility predictions from MARS model

   .. rubric:: Details
      :name: details

   For the solubility data in Kuhn and Johnson (2013), these data are
   the test set results for the MARS model. The observed solubility (in
   column ``solubility``) and the model results (``prediction``) are
   contained in the data.

   .. rubric:: Value
      :name: value

   =================== ============
   ``solubility_test`` a data frame
   =================== ============

   .. rubric:: Source
      :name: source

   Kuhn, M., Johnson, K. (2013) *Applied Predictive Modeling*, Springer

   .. rubric:: Examples
      :name: examples

   ::

      data(solubility_test)
      str(solubility_test)
