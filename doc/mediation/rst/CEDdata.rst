.. container::

   ======= ===============
   CEDdata R Documentation
   ======= ===============

   .. rubric:: Example Data for the Crossover Encouragement Design
      :name: CEDdata

   .. rubric:: Description
      :name: description

   A randomly generated dataset containing 2000 rows and 7 columns with
   no missing values.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      CEDdata

   .. rubric:: Format
      :name: format

   A data frame containing the following variables, which are
   interpreted as results from a hypothetical randomized trial employing
   the crossover encouragement design.

   T1:
      The binary treatment indicator in the first stage.

   M1:
      The binary mediator variable recorded in the first stage.

   Y1:
      The binary outcome variable recorded in the first stage.

   T2:
      The binary treatment in the second stage. Equal to 1 - T1 by
      design.

   Z:
      The binary encouragement indicator for the second stage.

   M2:
      The binary mediator recorded in the second stage.

   Y2:
      The binary outcome recorded in the second stage.

   .. rubric:: Details
      :name: details

   Note that all the observed responses are generated from an underlying
   distribution of potential outcomes and mediators (not shown in this
   dataset) satisfying the assumptions described in Imai, Tingley and
   Yamamoto (2012).

   .. rubric:: Source
      :name: source

   Imai, K., Tingley, D. and Yamamoto, T. (2012) Experimental Designs
   for Identifying Causal Mechanisms. Journal of the Royal Statistical
   Society, Series A (Statistics in Society).
