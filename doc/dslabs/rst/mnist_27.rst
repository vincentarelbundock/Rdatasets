.. container::

   ======== ===============
   mnist_27 R Documentation
   ======== ===============

   .. rubric:: Useful example for illustrating machine learning
      algorithms based on MNIST data
      :name: mnist_27

   .. rubric:: Description
      :name: description

   We only include a randomly selected set of 2s and 7s along with the
   two predictors based on the proportion of dark pixels in the upper
   left and lower right quadrants respectively. The dataset is divided
   into training and test sets.

   .. rubric:: Usage
      :name: usage

   ::

      mnist_27

   .. rubric:: Format
      :name: format

   An object of class ``list``.

   .. rubric:: Details
      :name: details

   -  train. A data frame containing training data: labels and
      predictors.

   -  test. A data frame containing test data: labels and predictors.

   -  index_train. The index of the original mnist training data used
      for the training set.

   -  index_test. The index of the original mnist test data used for the
      test set.

   -  true_p. A ``data.frame`` containing the two predictors ``x_1`` and
      ``x_2`` and the conditional probability of being a 7 for ``x_1``,
      ``x_2``.

   .. rubric:: References
      :name: references

   Y. LeCun, L. Bottou, Y. Bengio, and P. Haffner. "Gradient-based
   learning applied to document recognition." Proceedings of the IEEE,
   86(11):2278-2324, November 1998.

   .. rubric:: See Also
      :name: see-also

   [read_mnist()]

   .. rubric:: Examples
      :name: examples

   ::

      with(mnist_27$train, plot(x_1, x_2, col = as.numeric(y)))
