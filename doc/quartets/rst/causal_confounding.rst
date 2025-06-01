.. container::

   .. container::

      ================== ===============
      causal_confounding R Documentation
      ================== ===============

      .. rubric:: Confounder Data
         :name: confounder-data

      .. rubric:: Description
         :name: description

      This dataset contains 100 observations, generated under the
      following mechanism: Z ~ N(0, 1) (measured factor: confounder) X ~
      Z + N(0,1) (exposure) Y ~ 0.5X + Z + N(0, 1) (outcome)

      .. rubric:: Usage
         :name: usage

      .. code:: R

         causal_confounding

      .. rubric:: Format
         :name: format

      A dataframe with 100 rows and 3:

      -  ``covariate``: a known factor (confounder)

      -  ``exposure``: exposure

      -  ``outcome``: outcome

      .. rubric:: References
         :name: references

      D'Agostino McGowan L, Barrett M (2023). Causal inference is not a
      statistical problem. Preprint arXiv:2304.02683v1.
