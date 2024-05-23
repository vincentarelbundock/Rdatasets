.. container::

   .. container::

      ======= ===============
      nswdemo R Documentation
      ======= ===============

      .. rubric:: Labour Training Evaluation Data
         :name: labour-training-evaluation-data

      .. rubric:: Description
         :name: description

      The ``nswdemo`` data frame contains 722 rows and 10 columns. These
      data are pertinent to an investigation of the way that earnings
      changed, between 1974-1975 and 1978, for an experimental treatment
      who were given job training as compared with a control group who
      did not receive such training.

      The ``psid1`` data set is an alternative non-experimental
      "control" group. ``psid2`` and ``psid3`` are subsets of ``psid1``,
      designed to be better matched to the experimental data than
      ``psid1``. Note also the ``cps1``, ``cps2`` and ``cps3`` datasets
      (DAAGxtras) that have been proposed as non-experimental controls.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(nswdemo)

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      trt
         a numeric vector identifying the study in which the subjects
         were enrolled (0 = Control, 1 = treated).

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

      .. rubric:: Source
         :name: source

      https://users.nber.org/~rdehejia/nswdata.html

      .. rubric:: References
         :name: references

      Dehejia, R.H. and Wahba, S. 1999. Causal effects in
      non-experimental studies: re-evaluating the evaluation of training
      programs. Journal of the American Statistical Association 94:
      1053-1062.

      Lalonde, R. 1986. Evaluating the economic evaluations of training
      programs. American Economic Review 76: 604-620.

      Smith, J. A. and Todd, P.E. 2005,"Does Matching overcome.
      LaLonde?s critique of nonexperimental estimators", *Journal of
      Econometrics* 125: 305-353.

      Dehejia, R.H. 2005. Practical propensity score matching: a reply
      to Smith and Todd. *Journal of Econometrics* 125: 355-364.

      .. rubric:: See Also
         :name: see-also

      ``psid1``, ``psid2``, ``psid3``
