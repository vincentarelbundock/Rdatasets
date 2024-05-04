.. container::

   .. container::

      ===== ===============
      sugar R Documentation
      ===== ===============

      .. rubric:: Sugar Data
         :name: sugar-data

      .. rubric:: Description
         :name: description

      The ``sugar`` data frame has 12 rows and 2 columns. They are from
      an experiment that compared an unmodified wild type plant with
      three different genetically modified forms. The measurements are
      weights of sugar that were obtained by breaking down the
      cellulose.

      .. rubric:: Usage
         :name: usage

      ::

         sugar

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      weight
         weight, in mg

      trt
         a factor with levels ``Control`` i.e. unmodified Wild form,
         ``A`` Modified 1, ``B`` Modified 2, ``C`` Modified 3

      .. rubric:: Source
         :name: source

      Anonymous

      .. rubric:: Examples
         :name: examples

      ::

         sugar.aov <- aov(weight ~ trt, data=sugar)
         fitted.values(sugar.aov)
         summary.lm(sugar.aov)
         sugar.aov <- aov(formula = weight ~ trt, data = sugar)
         summary.lm(sugar.aov)
