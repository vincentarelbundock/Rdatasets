.. container::

   ========= ===============
   softbacks R Documentation
   ========= ===============

   .. rubric:: Measurements on a Selection of Paperback Books
      :name: measurements-on-a-selection-of-paperback-books

   .. rubric:: Description
      :name: description

   This is a subset of the ``allbacks`` data frame which gives
   measurements on the volume and weight of 8 paperback books.

   .. rubric:: Usage
      :name: usage

   ::

      softbacks

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   volume
      a numeric vector giving the book volumes in cubic centimeters

   weight
      a numeric vector giving the weights in grams

   .. rubric:: Source
      :name: source

   The bookshelf of J. H. Maindonald.

   .. rubric:: Examples
      :name: examples

   ::

      print("Outliers in Simple Regression - Example 5.2")
      paperback.lm <- lm(weight ~ volume, data=softbacks)
      summary(paperback.lm)
      plot(paperback.lm)
