.. container::

   .. container::

      ======================== ===============
      variation_causal_quartet R Documentation
      ======================== ===============

      .. rubric:: Gelman Variation Causal Quartet Data
         :name: gelman-variation-causal-quartet-data

      .. rubric:: Description
         :name: description

      This dataset contains 88 observations, each generated under a
      different mechanism of variation of the treatment effect with
      respect to some pre-exposure characteristic, ``z``:

      -  (1) Constant effect

      -  (2) Low variation

      -  (3) High variation

      -  (4) Occasional large effects

      .. rubric:: Usage
         :name: usage

      .. code:: R

         variation_causal_quartet

      .. rubric:: Format
         :name: format

      A dataframe with 88 rows and 5 variables:

      -  ``dataset``: The data generating mechanism

      -  ``exposure``: exposure

      -  ``covariate``: a pre-exposure factor

      -  ``outcome``: outcome

      -  ``.causal_effect``: Latent true causal effect

      .. rubric:: References
         :name: references

      Gelman, A., Hullman, J., & Kennedy, L. (2023). Causal quartets:
      Different ways to attain the same average treatment effect. arXiv
      preprint arXiv:2302.12878.

      Hullman J (2023). *causalQuartet: Create Causal Quartets for
      Interrogating Average Treatment Effects*. R package version
      0.0.0.9000.
