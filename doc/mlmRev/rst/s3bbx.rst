.. container::

   .. container::

      ===== ===============
      s3bbx R Documentation
      ===== ===============

      .. rubric:: Covariates in the Rodriguez and Goldman simulation
         :name: covariates-in-the-rodriguez-and-goldman-simulation

      .. rubric:: Description
         :name: description

      The ``s3bbx`` data frame has 2449 rows and 6 columns of the
      covariates in the simulation by Rodriguez and Goldman of
      multilevel dichotomous data.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(s3bbx)

      .. rubric:: Format
         :name: format

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

      .. rubric:: Source
         :name: source

      http://data.princeton.edu/multilevel/simul.htm

      .. rubric:: References
         :name: references

      Rodriguez, Germán and Goldman, Noreen (1995) An assessment of
      estimation procedures for multilevel models with binary responses,
      *Journal of the Royal Statistical Society, Series A* **158**,
      73–89.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         str(s3bbx)
