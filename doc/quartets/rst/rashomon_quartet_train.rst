.. container::

   .. container::

      ================ ===============
      rashomon_quartet R Documentation
      ================ ===============

      .. rubric:: Rashomon Quartet Data
         :name: rashomon-quartet-data

      .. rubric:: Description
         :name: description

      This dataset contains 2,000 observations, 1,000 training
      observations and 1,000 testing observations. These were generated
      such that 4 modeling techniques (regression tree, linear model,
      neural network, random forest) will yield the same ``R^2`` and
      RMSE but will fit the models very differently.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         rashomon_quartet

         rashomon_quartet_train

         rashomon_quartet_test

      .. rubric:: Format
         :name: format

      ``rashomon_quartet``: A dataframe with 2000 rows and 5 variables:

      -  ``split``: train, test

      -  ``x1``

      -  ``x2``

      -  ``x3``

      -  ``y``

      ``rashomon_quartet_train``: A dataframe with 1000 rows and 4
      variables:

      -  ``x1``

      -  ``x2``

      -  ``x3``

      -  ``y``

      ``rashomon_quartet_test``: A dataframe with 1000 rows and 4
      variables:

      -  ``x1``

      -  ``x2``

      -  ``x3``

      -  ``y``

      .. rubric:: Details
         :name: details

      There are three explanatory variables ``x1``, ``x2``, ``x3`` and
      one outcome ``y`` generated as:

      ``y = sin((3x_1 + x_2)/5)+\varepsilon``

      where ``\varepsilon\sim N(0,1/3)`` and
      ``[x_1,x_2,x_3]\sim N(0, \Sigma_{3x3})`` and ``\Sigma_{3x3}`` has
      1 on the diagonal and 0.9 elsewhere.

      If fit using the following hyperparameters, each model will yield
      an ``R^2`` of 0.73 and an RMSE of 0.354

      -  Regression tree: max depth: 3, min split: 250

      -  Linear model: all main effects

      -  Random Forest: mtry: 1, number of trees: 100

      -  Neural network: hidden neurons in each layer: 8, 4, threshold
         for partial derivatives of the error function as stopping
         criteria: 0.05

      ``rashomon_quartet_train`` contains just the training data and
      ``rashomon_quartet_test`` contains only the test data.

      .. rubric:: References
         :name: references

      P. Biecek, H. Baniecki, M. Krzyziński, D. Cook. Performance is not
      enough: the story of Rashomon’s quartet. Preprint
      arXiv:2302.13356v2, 2023.
