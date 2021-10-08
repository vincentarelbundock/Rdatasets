.. container::

   ======= ===============
   aspirin R Documentation
   ======= ===============

   .. rubric:: Aspirin Data
      :name: aspirin-data

   .. rubric:: Description
      :name: description

   Efficacy of Aspirin in preventing death after a myocardial infarct.

   .. rubric:: Usage
      :name: usage

   ::

      data("aspirin")

   .. rubric:: Format
      :name: format

   A data frame with 7 observations on the following 4 variables.

   ``dp``
      number of deaths after placebo.

   ``tp``
      total number subjects treated with placebo.

   ``da``
      number of deaths after Aspirin.

   ``ta``
      total number of subjects treated with Aspirin.

   .. rubric:: Details
      :name: details

   The data were collected for a meta-analysis of the effectiveness of
   Aspirin (versus placebo) in preventing death after a myocardial
   infarction.

   .. rubric:: Source
      :name: source

   J. L. Fleiss (1993), The statistical basis of meta-analysis.
   *Statistical Methods in Medical Research* **2**, 121–145.

   .. rubric:: Examples
      :name: examples

   ::


        data("aspirin", package = "HSAUR")
        aspirin
