====== ===============
monica R Documentation
====== ===============

WHO Monica Data
---------------

Description
~~~~~~~~~~~

The ``monica`` data frame has 6357 rows and 12 columns. Note that
``mifem`` is the female subset of this data frame.

Usage
~~~~~

::

   monica

Format
~~~~~~

This data frame contains the following columns:

outcome
   mortality outcome, a factor with levels ``live``, ``dead``

age
   age at onset

sex
   m = male, f = female

hosp
   y = hospitalized, n = not hospitalized

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
   summary(monica)
   pause()

   require(rpart)
   monica.rpart <- rpart(outcome ~ ., data = monica, cp = 0.0025)
   plotcp(monica.rpart)
   printcp(monica.rpart)
   pause()

   monicab.rpart <- prune(monica.rpart, cp=0.006)
   print(monicab.rpart)
