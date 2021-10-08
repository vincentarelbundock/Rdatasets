.. container::

   ===== ===============
   psid2 R Documentation
   ===== ===============

   .. rubric:: Labour Training Evaluation Data
      :name: labour-training-evaluation-data

   .. rubric:: Description
      :name: description

   A non-experimental "control" group, used in various studies of the
   effect of a labor training program, alternative to the experimental
   control group in ``nswdemo``.

   .. rubric:: Usage
      :name: usage

   ::

      psid2

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   trt
      a numeric vector identifying the study in which the subjects were
      enrolled (0 = Control, 1 = treated).

   age
      age (in years).

   educ
      years of education.

   black
      (0 = not black, 1 = black).

   hisp
      (0 = not hispanic, 1 = hispanic).

   marr
      (0 = not married, 1 = married).

   nodeg
      (0 = completed high school, 1 = dropout).

   re74
      real earnings in 1974.

   re75
      real earnings in 1975.

   re78
      real earnings in 1978.

   .. rubric:: Details
      :name: details

   The ``cps1`` and ``psid1`` data sets are two non-experimental
   "control" groups, alternative to that in ``nswdemo``, used in
   investigating whether use of such a non-experimental control group
   can be satisfactory. ``cps2`` and ``cps3`` are subsets of ``cps1``,
   designed to be better matched to the experimental data than ``cps1``.
   Similary ``psid2`` and ``psid3`` are subsets of ``psid1``, designed
   to be better matched to the experimental data than ``psid1``.

   .. rubric:: Source
      :name: source

   http://www.nber.org/~rdehejia/nswdata.html

   .. rubric:: References
      :name: references

   Dehejia, R.H. and Wahba, S. 1999. Causal effects in non-experimental
   studies: re-evaluating the evaluation of training programs. *Journal
   of the American Statistical Association* 94: 1053-1062.

   Lalonde, R. 1986. Evaluating the economic evaluations of training
   programs. American Economic Review 76: 604-620.

   Smith, J. A. and Todd, P.E. "Does Matching overcome. LaLonde?s
   critique of nonexperimental estimators", *Journal of Econometrics*
   125: 305-353.

   Dehejia, R.H. 2005. Practical propensity score matching: a reply to
   Smith and Todd. *Journal of Econometrics* 125: 355-364.
