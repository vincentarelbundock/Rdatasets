===== ===============
s3bby R Documentation
===== ===============

Responses simulated by Rodriguez and Goldman
--------------------------------------------

Description
~~~~~~~~~~~

A matrix of the results of 100 simulations of dichotomous multilevel
data. The rows correspond to the 2449 births for which the covariates
are given in ``s3bbx``. The elements of the matrix are all 0, indicating
no modern prenatal care, or 1, indicating model prenatal care. These
were simulated with "large" variances for both the family and the
community random effects.

Usage
~~~~~

.. code:: R

   data(s3bby)

Format
~~~~~~

An integer matrix with 2449 rows and 100 columns.

Source
~~~~~~

This data was previously available at
https://web.archive.org/web/20070629024256/http://data.princeton.edu/multilevel/simul.htm

References
~~~~~~~~~~

Rodriguez, Germ?n and Goldman, Noreen (1995) An assessment of estimation
procedures for multilevel models with binary responses, *Journal of the
Royal Statistical Society, Series A* **158**, 73–89.

Examples
~~~~~~~~

.. code:: R

   str(s3bby)
