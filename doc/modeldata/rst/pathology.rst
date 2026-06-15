========= ===============
pathology R Documentation
========= ===============

Liver pathology data
--------------------

Description
~~~~~~~~~~~

Liver pathology data

Details
~~~~~~~

These data have the results of a *x*-ray examination to determine
whether liver is abnormal or not (in the ``scan`` column) versus the
more extensive pathology results that approximate the truth (in
``pathology``).

Value
~~~~~

============= ============
``pathology`` a data frame
============= ============

Source
~~~~~~

Altman, D.G., Bland, J.M. (1994) “Diagnostic tests 1: sensitivity and
specificity,” *British Medical Journal*, vol 308, 1552.

Examples
~~~~~~~~

.. code:: R

   data(pathology)
   str(pathology)
