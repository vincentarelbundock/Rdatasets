.. container::

   ======= ===============
   ethanol R Documentation
   ======= ===============

   .. rubric:: Ethanol Treatment for Tumors Experiment
      :name: ethanol-treatment-for-tumors-experiment

   .. rubric:: Description
      :name: description

   Experiment where 3 different treatments of ethanol were tested on the
   treatment of oral cancer tumors in hamsters.

   .. rubric:: Usage
      :name: usage

   ::

      ethanol

   .. rubric:: Format
      :name: format

   A data frame with 24 observations, each representing one hamster, on
   the following 2 variables.

   treatment
      Treatment the hamster received.

   regress
      a factor with levels ``no`` ``yes``

   .. rubric:: Details
      :name: details

   The ``ethyl_cellulose`` and ``pure_ethanol`` treatments consisted of
   about a quarter of the volume of the tumors, while the
   ``pure_ethanol_16x`` treatment was 16x that, so about 4 times the
   size of the tumors.

   .. rubric:: Source
      :name: source

   Morhard R, et al. 2017. Development of enhanced ethanol ablation as
   an alternative to surgery in treatment of superficial solid tumors.
   Scientific Reports 7:8750.

   .. rubric:: Examples
      :name: examples

   ::

      table(ethanol)
      fisher.test(table(ethanol))
