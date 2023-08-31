.. container::

   ====================== ===============
   steroidogenic_toxicity R Documentation
   ====================== ===============

   .. rubric:: Predicting steroidogenic toxicity with assay data
      :name: steroidogenic_toxicity

   .. rubric:: Description
      :name: description

   A set of *in vitro* assays are used to quantify the risk of
   reproductive toxicity via the disruption of steroidogenic pathways.

   .. rubric:: Details
      :name: details

   H295R cells were used to measure the effect with two sets of assay
   results. The first includes a set of protein measurements on:
   cytochrome P450 enzymes ("cyp"s), STAR, and 3BHSD2. The second
   include hormone measurements for DHEA, progesterone, testosterone,
   and cortisol.

   Columns:

   -  ``class``: factor (levels: 'toxic' and 'nontoxic')

   -  ``cyp_11a1``: numeric

   -  ``cyp_11b1``: numeric

   -  ``cyp_11b2``: numeric

   -  ``cyp_17a1``: numeric

   -  ``cyp_19a1``: numeric

   -  ``cyp_21a1``: numeric

   -  ``hsd3b2``: numeric

   -  ``star``: numeric

   -  ``progesterone``: numeric

   -  ``testosterone``: numeric

   -  ``dhea``: numeric

   -  ``cortisol``: numeric

   .. rubric:: Value
      :name: value

   A tibble with columns

   -  ``class``: factor(levels: toxic and nontoxic)

   -  ``cyp_11a1``: numeric

   -  ``cyp_11b1``: numeric

   -  ``cyp_11b2``: numeric

   -  ``cyp_17a1``: numeric

   -  ``cyp_19a1``: numeric

   -  ``cyp_21a1``: numeric

   -  ``hsd3b2``: numeric

   -  ``star``: numeric

   -  ``progesterone``: numeric

   -  ``testosterone``: numeric

   -  ``dhea``: numeric

   -  ``cortisol``: numeric

   .. rubric:: Source
      :name: source

   Maglich, J. M., Kuhn, M., Chapin, R. E., & Pletcher, M. T. (2014).
   More than just hormones: H295R cells as predictors of reproductive
   toxicity. *Reproductive Toxicology*, 45, 77-86.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(steroidogenic_toxicity)
      str(steroidogenic_toxicity)
