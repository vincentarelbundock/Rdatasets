.. container::

   =============== ===============
   chem_proc_yield R Documentation
   =============== ===============

   .. rubric:: Chemical manufacturing process data set
      :name: chem_proc_yield

   .. rubric:: Description
      :name: description

   A data set that models yield as a function of biological material
   predictors and chemical structure predictors.

   .. rubric:: Details
      :name: details

   This data set contains information about a chemical manufacturing
   process, in which the goal is to understand the relationship between
   the process and the resulting final product yield. Raw material in
   this process is put through a sequence of 27 steps to generate the
   final pharmaceutical product. The starting material is generated from
   a biological unit and has a range of quality and characteristics. The
   objective in this project was to develop a model to predict percent
   yield of the manufacturing process. The data set consisted of 177
   samples of biological material for which 57 characteristics were
   measured. Of the 57 characteristics, there were 12 measurements of
   the biological starting material, and 45 measurements of the
   manufacturing process. The process variables included measurements
   such as temperature, drying time, washing time, and concentrations of
   by-products at various steps. Some of the process measurements can be
   controlled, while others are observed. Predictors are continuous,
   count, categorical; some are correlated, and some contain missing
   values. Samples are not independent because sets of samples come from
   the same batch of biological starting material.

   Columns:

   -  ``yield``: numeric

   -  ``bio_material_01`` - ``bio_material_12``: numeric

   -  ``man_proc_01`` - ``man_proc_45``: numeric

   .. rubric:: Value
      :name: value

   =================== ========
   ``chem_proc_yield`` a tibble
   =================== ========

   .. rubric:: Source
      :name: source

   Kuhn, Max, and Kjell Johnson. *Applied predictive modeling*. New
   York: Springer, 2013.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(chem_proc_yield)
      str(chem_proc_yield)
