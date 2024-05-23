.. container::

   .. container::

      ===== ===============
      s3bby R Documentation
      ===== ===============

      .. rubric:: Responses simulated by Rodriguez and Goldman
         :name: responses-simulated-by-rodriguez-and-goldman

      .. rubric:: Description
         :name: description

      A matrix of the results of 100 simulations of dichotomous
      multilevel data. The rows correspond to the 2449 births for which
      the covariates are given in ``s3bbx``. The elements of the matrix
      are all 0, indicating no modern prenatal care, or 1, indicating
      model prenatal care. These were simulated with "large" variances
      for both the family and the community random effects.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(s3bby)

      .. rubric:: Format
         :name: format

      An integer matrix with 2449 rows and 100 columns.

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

         str(s3bby)
