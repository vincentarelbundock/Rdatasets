.. container::

   =========== ===============
   ability.cov R Documentation
   =========== ===============

   .. rubric:: Ability and Intelligence Tests
      :name: ability-and-intelligence-tests

   .. rubric:: Description
      :name: description

   Six tests were given to 112 individuals. The covariance matrix is
   given in this object.

   .. rubric:: Usage
      :name: usage

   ::

      ability.cov

   .. rubric:: Details
      :name: details

   The tests are described as

   general:
      a non-verbal measure of general intelligence using Cattell's
      culture-fair test.

   picture:
      a picture-completion test

   blocks:
      block design

   maze:
      mazes

   reading:
      reading comprehension

   vocab:
      vocabulary

   Bartholomew gives both covariance and correlation matrices, but these
   are inconsistent. Neither are in the original paper.

   .. rubric:: Source
      :name: source

   Bartholomew, D. J. (1987). *Latent Variable Analysis and Factor
   Analysis*. Griffin.

   Bartholomew, D. J. and Knott, M. (1990). *Latent Variable Analysis
   and Factor Analysis*. Second Edition, Arnold.

   .. rubric:: References
      :name: references

   Smith, G. A. and Stanley G. (1983). Clocking ``g``: relating
   intelligence and measures of timed performance. *Intelligence*,
   **7**, 353–368.
   `doi:10.1016/0160-2896(83)90010-7 <https://doi.org/10.1016/0160-2896%2883%2990010-7>`__.

   .. rubric:: Examples
      :name: examples

   ::

      require(stats)
      (ability.FA <- factanal(factors = 1, covmat = ability.cov))
      update(ability.FA, factors = 2)
      ## The signs of factors and hence the signs of correlations are
      ## arbitrary with promax rotation.
      update(ability.FA, factors = 2, rotation = "promax")
