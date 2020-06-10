========== ===============
nsw74psid3 R Documentation
========== ===============

Labour Training Evaluation Data
-------------------------------

Description
~~~~~~~~~~~

These data are pertinent to an investigation of the way that earnings
changed, between 1974-1975 and 1978, in the absence of training. The
data frame combines data for the experimental treatment group (NSW, 185
observations), using as control data results from the PSID (Panel Study
of Income Dynamics) study (128 observations). The latter were chosen to
mimic the characteristics of the NSW training and control groups. These
are a subset of the ``nsw74psid1`` data.

Usage
~~~~~

::

   nsw74psid3

Format
~~~~~~

This data frame contains the following columns:

trt
   a numeric vector identifying the study in which the subjects were
   enrolled (0 = PSID, 1 = NSW)

age
   age (in years)

educ
   years of education

black
   (0 = not black, 1 = black)

hisp
   (0 = not hispanic, 1 = hispanic)

marr
   (0 = not married, 1 = married)

nodeg
   (0 = completed high school, 1 = dropout)

re74
   real earnings in 1974

re75
   real earnings in 1975

re78
   real earnings in 1978

Source
~~~~~~

http://www.columbia.edu/~rd247/nswdata.html

References
~~~~~~~~~~

Dehejia, R.H. and Wahba, S. 1999. Causal effects in non-experimental
studies: re-evaluating the evaluation of training programs. Journal of
the American Statistical Association 94: 1053-1062.

Lalonde, R. 1986. Evaluating the economic evaluations of training
programs. American Economic Review 76: 604-620.

Examples
~~~~~~~~

::

   print("Contingency Tables - Example 4.4")
   table(nsw74psid3$trt, nsw74psid3$nodeg)
   chisq.test(table(nsw74psid3$trt,nsw74psid3$nodeg))
