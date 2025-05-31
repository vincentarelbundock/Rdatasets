.. container::

   .. container::

      ========= ===============
      Boston_df R Documentation
      ========= ===============

      .. rubric:: Boston Housing Data
         :name: boston-housing-data

      .. rubric:: Description
         :name: description

      This dataset contains information on housing values and various
      factors influencing those values in 506 suburbs of Boston. It
      provides detailed insights into the factors such as crime rates,
      proximity to highways, and the quality of the local environment
      that may affect housing prices.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Boston_df)

      .. rubric:: Format
         :name: format

      A data frame with 506 observations and 14 variables:

      crim
         Per capita crime rate by town (numeric).

      zn
         Proportion of residential land zoned for lots over 25,000
         sq.ft. (numeric).

      indus
         Proportion of non-retail business acres per town (numeric).

      chas
         Charles River dummy variable (= 1 if tract bounds river; 0
         otherwise) (integer).

      nox
         Nitrogen oxides concentration (parts per 10 million) (numeric).

      rm
         Average number of rooms per dwelling (numeric).

      age
         Proportion of owner-occupied units built prior to 1940
         (numeric).

      dis
         Weighted mean of distances to five Boston employment centres
         (numeric).

      rad
         Index of accessibility to radial highways (integer).

      tax
         Full-value property-tax rate per $10,000 (numeric).

      ptratio
         Pupil-teacher ratio by town (numeric).

      black
         1000(Bk - 0.63)^2 where Bk is the proportion of Black
         population by town (numeric).

      lstat
         Lower status of the population (percent) (numeric).

      medv
         Median value of owner-occupied homes in $1000s (numeric).

      .. rubric:: Details
         :name: details

      The dataset name has been changed to 'Boston_df' to avoid
      confusion with other datasets in the R ecosystem. This naming
      convention helps distinguish this dataset as part of the
      crimedatasets package and assists users in identifying its
      specific characteristics. The suffix 'df' indicates that the
      dataset is a traditional data frame in R. The original content has
      not been modified in any way.

      .. rubric:: Source
         :name: source

      This dataset was obtained from the Boston dataset, which is part
      of the MASS package, with slight modifications.
