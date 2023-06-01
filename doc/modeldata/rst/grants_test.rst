.. container::

   ====== ===============
   grants R Documentation
   ====== ===============

   .. rubric:: Grant acceptance data
      :name: grants

   .. rubric:: Description
      :name: description

   A data set related to the success or failure of academic grants.

   .. rubric:: Details
      :name: details

   The data are discussed in Kuhn and Johnson (2013):

   "These data are from a 2011 Kaggle competition sponsored by the
   University of Melbourne where there was interest in predicting
   whether or not a grant application would be accepted. Since public
   funding of grants had decreased over time, triaging grant
   applications based on their likelihood of success could be important
   for estimating the amount of potential funding to the university. In
   addition to predicting grant success, the university sought to
   understand factors that were important in predicting success."

   The data ranged from 2005 and 2008 and the data spending strategy was
   driven by the date of the grant. Kuhn and Johnson (2013) describe:

   "The compromise taken here is to build models on the pre-2008 data
   and tune them by evaluating a random sample of 2,075 grants from
   2008. Once the optimal parameters are determined, final model is
   built using these parameters and the entire training set (i.e., the
   data prior to 2008 and the additional 2,075 grants). A small holdout
   set of 518 grants from 2008 will be used to ensure that no gross
   methodology errors occur from repeatedly evaluating the 2008 data
   during model tuning. In the text, this set of samples is called the 2
   0 0 8 holdout set. This small set of year 2008 grants will be
   referred to as the test set and will not be evaluated until set of
   candidate models are identified."

   To emulate this, ``grants_other`` contains the training (pre-2008, n
   = 6,633) and holdout/validation data (2008, n = 1,557).
   ``grants_test`` has 518 grant samples from 2008. The object
   ``grants_2008`` is an integer vector that can be used to separate the
   modeling with the holdout/validation sets.

   .. rubric:: Value
      :name: value

   +----------------------------------+----------------------------------+
   | ``grants_other``,                | two tibbles and an integer       |
   | ``grants_test``, ``grants_2008`` | vector of data points used for   |
   |                                  | training                         |
   +----------------------------------+----------------------------------+

   .. rubric:: Source
      :name: source

   Kuhn and Johnson (2013). *Applied Predictive Modeling*. Springer.

   .. rubric:: Examples
      :name: examples

   ::

      data(grants)
      str(grants_other)
      str(grants_test)
      str(grants_2008)
