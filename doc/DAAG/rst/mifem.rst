===== ===============
mifem R Documentation
===== ===============

Mortality Outcomes for Females Suffering Myocardial Infarction
--------------------------------------------------------------

Description
~~~~~~~~~~~

The ``mifem`` data frame has 1295 rows and 10 columns. This is the
female subset of the 'monica' data frame

Usage
~~~~~

::

   mifem

Format
~~~~~~

This data frame contains the following columns:

outcome
   mortality outcome, a factor with levels ``live``, ``dead``

age
   age at onset

yronset
   year of onset

premi
   previous myocardial infarction event, a factor with levels ``y``,
   ``n``, ``nk`` not known

smstat
   smoking status, a factor with levels ``c`` current, ``x`` ex-smoker,
   ``n`` non-smoker, ``nk`` not known

diabetes
   a factor with levels ``y``, ``n``, ``nk`` not known

highbp
   high blood pressure, a factor with levels ``y``, ``n``, ``nk`` not
   known

hichol
   high cholesterol, a factor with levels ``y``, ``n`` ``nk`` not known

angina
   a factor with levels ``y``, ``n``, ``nk`` not known

stroke
   a factor with levels ``y``, ``n``, ``nk`` not known

Source
~~~~~~

Newcastle (Australia) centre of the Monica project; see the web site
http://www.ktl.fi/monica

Examples
~~~~~~~~

::

   print("CART - Example 10.7")
   summary(mifem)
   pause()

   require(rpart)
   mifem.rpart <- rpart(outcome ~ ., data = mifem, cp = 0.0025)
   plotcp(mifem.rpart)
   printcp(mifem.rpart)
   pause()

   mifemb.rpart <- prune(mifem.rpart, cp=0.006)
   print(mifemb.rpart)
