.. container::

   ========== ===============
   boundsdata R Documentation
   ========== ===============

   .. rubric:: Example Data for the Design Functions
      :name: boundsdata

   .. rubric:: Description
      :name: description

   A random subsample of the simulated data used in Imai, Tingley, and
   Yamamoto (2012). The data contains 1000 rows and 7 columns with no
   missing values.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      boundsdata

   .. rubric:: Format
      :name: format

   A data frame containing the following variables, which are
   interpreted as results from a hypothetical randomized trial. See the
   source for a full description.

   out:
      The binary outcome variable under the parallel design.

   out.enc:
      The binary outcome variable under the parallel encouragement
      design.

   med:
      The binary mediator under the parallel design.

   med.enc:
      The binary mediator under the parallel encouragement design.

   ttt:
      The binary treatment variable.

   manip:
      The design indicator, or the variable indicating whether the
      mediator is manipulated under the parallel design.

   enc:
      The trichotomous encouragement variable under the parallel
      encouragement design. Equals 0 if subject received no
      encouragement; 1 if encouraged for the mediator value of 1; and -1
      if encouraged for the mediator value of 0.

   .. rubric:: Details
      :name: details

   Conditioning on 'manip' = 0 will simulate a randomized trial under
   the single experiment design, where 'out' and 'med' equal observed
   outcome and mediator values, respectively.

   Unconditionally, using 'out', 'med', 'ttt' and 'manip' will simulate
   an experiment under the parallel design.

   The 'out.enc' and 'med.enc' variables represent the outcome and
   mediator values observed when subjects received the encouragement
   indicated in 'enc'. Therefore, using 'out.enc', 'med.enc', 'ttt' and
   'enc' will simulate an experiment under the parallel encouragement
   design.

   Note that all the observed responses are generated from an underlying
   distribution of potential outcomes and mediators (not shown in this
   dataset) satisfying the assumptions described in Imai, Tingley and
   Yamamoto (2012). The full simulation code is available as a companion
   replication archive for the article.

   .. rubric:: Source
      :name: source

   Imai, K., Tingley, D. and Yamamoto, T. (2012) Experimental Designs
   for Identifying Causal Mechanisms. Journal of the Royal Statistical
   Society, Series A (Statistics in Society).
