.. container::

   ========= ===============
   nsw74demo R Documentation
   ========= ===============

   .. rubric:: Labour Training Evaluation Data
      :name: labour-training-evaluation-data

   .. rubric:: Description
      :name: description

   This ``nsw74demo`` data frame, with 445 rows and 10 columns, is the
   subset of the ``nswdemo`` dataset for which 1974 earnings are
   available. Data are for the male experimental control and treatment
   groups, in an investigation of the effect of training on changes,
   between 1974-1975 and 1978, in the earnings of individuals who had
   experienced employment difficulties.

   Likewise, ``nsw74psid1`` (2675 rows) is the subset of the
   ``nswpsid1`` data, and ``nsw74psid3`` (313 rows) is the subset of the
   ``nswpsid3`` data, for which 1974 income is available. NB, also, the
   ``nsw74psidA`` data set.

   .. rubric:: Usage
      :name: usage

   ::

        data(nsw74demo)
        data(nsw74psid1)
        data(nsw74psid3)
        data(nsw74psidA)

   .. rubric:: Format
      :name: format

   Columns are:

   trt
      a numeric vector identifying the study in which the subjects were
      enrolled (0 = PSID, 1 = NSW).

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

   The ``nsw74psidA`` data set (252 rows) was obtained from
   ``nsw74psid1`` using:

   ``here <- age <= 40 & re74<=5000 & re75 <= 5000 & re78 < 30000``

   ``nsw74psidA <- nsw74psid1[here, ]``

   .. rubric:: Source
      :name: source

   http://www.columbia.edu/~rd247/nswdata.html

   .. rubric:: References
      :name: references

   Dehejia, R.H. and Wahba, S. 1999. Causal effects in non-experimental
   studies: re-evaluating the evaluation of training programs. Journal
   of the American Statistical Association 94: 1053-1062.

   Lalonde, R. 1986. Evaluating the economic evaluations of training
   programs. American Economic Review 76: 604-620.
