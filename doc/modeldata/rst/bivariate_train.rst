========= ===============
bivariate R Documentation
========= ===============

Example bivariate classification data
-------------------------------------

Description
~~~~~~~~~~~

Example bivariate classification data

Details
~~~~~~~

These data are a simplified version of the segmentation data contained
in ``caret``. There are three columns: ``A`` and ``B`` are predictors
and the column ``Class`` is a factor with levels "One" and "Two". There
are three data sets: one for training (n = 1009), validation (n = 300),
and testing (n = 710).

Value
~~~~~

========================================================== =======
``bivariate_train``, ``bivariate_test``, ``bivariate_val`` tibbles
========================================================== =======

Examples
~~~~~~~~

.. code:: R

   data(bivariate)
   str(bivariate_train)
   str(bivariate_val)
   str(bivariate_test)
