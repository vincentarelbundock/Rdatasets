.. container::

   .. container::

      ============================ ===============
      heterogeneous_causal_quartet R Documentation
      ============================ ===============

      .. rubric:: Gelman Heterogeneity Causal Quartet Data
         :name: gelman-heterogeneity-causal-quartet-data

      .. rubric:: Description
         :name: description

      This dataset contains 88 observations, each generated under a
      different mechanism treatment heterogeneity with respect to some
      pre-exposure characteristic, ``z``:

      -  (1) Linear interaction

      -  (2) No effect then steady increase

      -  (3) Plateau

      -  (4) Intermediate zone with large effects

      .. rubric:: Usage
         :name: usage

      .. code:: R

         heterogeneous_causal_quartet

      .. rubric:: Format
         :name: format

      A dataframe with 88 rows and 5 variables:

      -  ``dataset``: The data generating mechanism

      -  ``exposure``: exposure

      -  ``covariate``: a pre-exposure factor

      -  ``outcome``: outcome

      -  ``.causal_effect``: latent true causal effect

      .. rubric:: References
         :name: references

      Gelman, A., Hullman, J., & Kennedy, L. (2023). Causal quartets:
      Different ways to attain the same average treatment effect. arXiv
      preprint arXiv:2302.12878.

      Hullman J (2023). *causalQuartet: Create Causal Quartets for
      Interrogating Average Treatment Effects*. R package version
      0.0.0.9000.
