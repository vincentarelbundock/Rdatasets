.. container::

   ==== ===============
   ames R Documentation
   ==== ===============

   .. rubric:: Ames Housing Data
      :name: ames

   .. rubric:: Description
      :name: description

   A data set from De Cock (2011) has 82 fields were recorded for 2,930
   properties in Ames IA. This version is copies from the
   ``AmesHousing`` package but does not include a few quality columns
   that appear to be outcomes rather than predictors.

   .. rubric:: Details
      :name: details

   See this links for the sources below for more information as well as
   ``?AmesHousing::make_ames``.

   For these data, the training materials typically use:

   .. container:: sourceCode r

      ::

         library(tidymodels)

         set.seed(4595)
         data_split <- initial_split(ames, strata = "Sale_Price")
         ames_train <- training(data_split)
         ames_test  <- testing(data_split)

         set.seed(2453)
         ames_folds<- vfold_cv(ames_train)

   .. rubric:: Value
      :name: value

   ======== ========
   ``ames`` a tibble
   ======== ========

   .. rubric:: Source
      :name: source

   De Cock, D. (2011). "Ames, Iowa: Alternative to the Boston Housing
   Data as an End of Semester Regression Project," *Journal of
   Statistics Education*, Volume 19, Number 3.

   http://jse.amstat.org/v19n3/decock/DataDocumentation.txt

   http://jse.amstat.org/v19n3/decock.pdf

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(ames)
      str(ames)
