.. container::

   ====== ===============
   hpc_cv R Documentation
   ====== ===============

   .. rubric:: Class probability predictions
      :name: class-probability-predictions

   .. rubric:: Description
      :name: description

   Class probability predictions

   .. rubric:: Details
      :name: details

   This data frame contains the predicted classes and class
   probabilities for a linear discriminant analysis model fit to the HPC
   data set from Kuhn and Johnson (2013). These data are the assessment
   sets from a 10-fold cross-validation scheme. The data column columns
   for the true class (``obs``), the class prediction (``pred``) and
   columns for each class probability (columns ``VF``, ``F``, ``M``, and
   ``L``). Additionally, a column for the resample indicator is
   included.

   .. rubric:: Value
      :name: value

   ========== ============
   ``hpc_cv`` a data frame
   ========== ============

   .. rubric:: Source
      :name: source

   Kuhn, M., Johnson, K. (2013) *Applied Predictive Modeling*, Springer

   .. rubric:: Examples
      :name: examples

   ::

      data(hpc_cv)
      str(hpc_cv)
