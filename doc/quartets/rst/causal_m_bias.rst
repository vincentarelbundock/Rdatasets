.. container::

   .. container::

      ============= ===============
      causal_m_bias R Documentation
      ============= ===============

      .. rubric:: M-Bias Data
         :name: m-bias-data

      .. rubric:: Description
         :name: description

      This dataset contains 100 observations, generated under the
      following mechanism: U1 ~ N(0, 1) U2 ~ N(0, 1) Z ~ 8 U1 + U2 +
      N(0, 1) (measured factor) X ~ U1 + N(0, 1) (exposure) Y ~ X + U2 +
      N(0, 1) (outcome)

      .. rubric:: Usage
         :name: usage

      .. code:: R

         causal_m_bias

      .. rubric:: Format
         :name: format

      A dataframe with 100 rows and 5 variables:

      -  ``u1``: an unknown factor

      -  ``u2``: an unknown factor

      -  ``covariate``: a known factor

      -  ``exposure``: exposure

      -  ``outcome``: outcome

      .. rubric:: References
         :name: references

      D'Agostino McGowan L, Barrett M (2023). Causal inference is not a
      statistical problem. Preprint arXiv:2304.02683v1.
