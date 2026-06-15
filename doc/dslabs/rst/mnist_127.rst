========= ===============
mnist_127 R Documentation
========= ===============

Useful example for illustrating generative models based on MNIST data
---------------------------------------------------------------------

Description
~~~~~~~~~~~

We only include a randomly selected set of 1s, 2s and 7s along with the
two predictors based on the proportion of dark pixels in the upper left
and lower right quadrants respectively. The dataset is divided into
training and test sets.

Usage
~~~~~

.. code:: R

   mnist_127

Format
~~~~~~

An object of class ``list``.

Details
~~~~~~~

- train. A data frame containing training data: labels and predictors.

- test. A data frame containing test data: labels and predictors.

- index_train. The index of the original mnist training data used for
  the training set.

- index_test. The index of the original mnist test data used for the
  test set.

References
~~~~~~~~~~

Y. LeCun, L. Bottou, Y. Bengio, and P. Haffner. "Gradient-based learning
applied to document recognition." Proceedings of the IEEE,
86(11):2278-2324, November 1998.

See Also
~~~~~~~~

[read_mnist(), mnist_27]

Examples
~~~~~~~~

.. code:: R

   with(mnist_127$train, plot(x_1, x_2, col = as.numeric(y)))
