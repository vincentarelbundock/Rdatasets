.. container::

   ==== ===============
   koch R Documentation
   ==== ===============

   .. rubric:: Ordinal Data from Koch
      :name: ordinal-data-from-koch

   .. rubric:: Description
      :name: description

   The ``koch`` data frame has 288 rows and 4 columns.

   .. rubric:: Usage
      :name: usage

   ::

      koch

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   trt
      a numeric vector

   day
      a numeric vector

   y
      an ordered factor with levels: ``1`` < ``2`` < ``3``

   id
      a numeric vector

   .. rubric:: Examples
      :name: examples

   ::

      data(koch)
      fit <- ordgee(ordered(y) ~ trt + as.factor(day), id=id, data=koch, corstr="exch")
      summary(fit)
