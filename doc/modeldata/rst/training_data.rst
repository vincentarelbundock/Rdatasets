.. container::

   ================ ===============
   small_fine_foods R Documentation
   ================ ===============

   .. rubric:: Fine foods example data
      :name: small_fine_foods

   .. rubric:: Description
      :name: description

   Fine foods example data

   .. rubric:: Details
      :name: details

   These data are from Amazon, who describe it as "This dataset consists
   of reviews of fine foods from amazon. The data span a period of more
   than 10 years, including all ~500,000 reviews up to October 2012.
   Reviews include product and user information, ratings, and a
   plaintext review."

   A subset of the data are contained here and are split into a training
   and test set. The training set sampled 10 products and retained all
   of their individual reviews. Since the reviews within these products
   are correlated, we recommend resampling the data using a
   leave-one-product-out approach. The test set sampled 500 products
   that were not included in the training set and selected a single
   review at random for each.

   There is a column for the product, a column for the text of the
   review, and a factor column for a class variable. The outcome is
   whether the reviewer gave the product a 5-star rating or not.

   .. rubric:: Value
      :name: value

   =================================== =======
   ``training_data``, ``testing_data`` tibbles
   =================================== =======

   .. rubric:: Source
      :name: source

   https://snap.stanford.edu/data/web-FineFoods.html

   .. rubric:: Examples
      :name: examples

   ::

      data(small_fine_foods)
      str(training_data)
      str(testing_data)
