.. container::

   .. container::

      =============== ===============
      causal_mediator R Documentation
      =============== ===============

      .. rubric:: Mediator Data
         :name: mediator-data

      .. rubric:: Description
         :name: description

      This dataset contains 100 observations, generated under the
      following mechanism: X ~ N(0, 1) (exposure) Z ~ X + N(0,1)
      (measured factor: mediator) Y ~ Z + N(0, 1) (outcome)

      .. rubric:: Usage
         :name: usage

      .. code:: R

         causal_mediator

      .. rubric:: Format
         :name: format

      A dataframe with 100 rows and 3 variables:

      -  ``exposure``: exposure

      -  ``covariate``: a known factor (mediator)

      -  ``outcome``: outcome

      .. rubric:: References
         :name: references

      D'Agostino McGowan L, Barrett M (2023). Causal inference is not a
      statistical problem. Preprint arXiv:2304.02683v1.
