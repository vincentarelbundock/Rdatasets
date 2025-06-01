.. container::

   .. container::

      ======================== ===============
      parkinsons_dopamine_list R Documentation
      ======================== ===============

      .. rubric:: Dopamine Agonists as Adjunct Therapy in Parkinson’s
         :name: dopamine-agonists-as-adjunct-therapy-in-parkinsons

      .. rubric:: Description
         :name: description

      This dataset, parkinsons_dopamine_list, is a list containing
      information from 7 studies investigating the mean lost work-time
      reduction in patients given 4 dopamine agonists and placebo as
      adjunct therapy for Parkinson's disease. There is placebo and four
      active drugs coded 2 to 5.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(parkinsons_dopamine_list)

      .. rubric:: Format
         :name: format

      A list with 5 components:

      Outcomes
         Numeric vector containing the outcomes (mean lost work-time
         reduction)

      SE
         Numeric vector containing standard errors for the outcomes

      Treat
         Character vector indicating the treatment (placebo or drug
         codes 2-5)

      Study
         Numeric vector indicating the study number (1-7)

      Treat.order
         Character vector showing the treatment order (placebo and drugs
         2-5)

      .. rubric:: Details
         :name: details

      The dataset name has been kept as 'parkinsons_dopamine_list' to
      avoid confusion with other datasets in the R ecosystem. This
      naming convention helps distinguish this dataset as part of the
      NeuroDataSets package and assists users in identifying its
      specific characteristics. The suffix 'list' indicates that the
      dataset is a list. The original content has not been modified in
      any way.

      .. rubric:: Source
         :name: source

      Data taken from the bnma package version 1.6.0.
