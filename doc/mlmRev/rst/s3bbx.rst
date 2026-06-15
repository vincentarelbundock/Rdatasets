===== ===============
s3bbx R Documentation
===== ===============

Covariates in the Rodriguez and Goldman simulation
--------------------------------------------------

Description
~~~~~~~~~~~

The ``s3bbx`` data frame has 2449 rows and 6 columns of the covariates
in the simulation by Rodriguez and Goldman of multilevel dichotomous
data.

Usage
~~~~~

.. code:: R

   data(s3bbx)

Format
~~~~~~

This data frame contains the following columns:

child
   a numeric vector identifying the child

family
   a numeric vector identifying the family

community
   a numeric vector identifying the community

chldcov
   a numeric vector of the child-level covariate

famcov
   a numeric vector of the family-level covariate

commcov
   a numeric vector of the community-level covariate

Source
~~~~~~

This data was previously available at
https://web.archive.org/web/20070629024256/http://data.princeton.edu/multilevel/simul.htm

References
~~~~~~~~~~

Rodrígue, Germáan and Goldman, Noreen (1995) An assessment of estimation
procedures for multilevel models with binary responses, *Journal of the
Royal Statistical Society, Series A* **158**, 73–89.

Examples
~~~~~~~~

.. code:: R

   str(s3bbx)
