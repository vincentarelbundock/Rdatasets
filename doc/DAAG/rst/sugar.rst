===== ===============
sugar R Documentation
===== ===============

Sugar Data
----------

Description
~~~~~~~~~~~

The ``sugar`` data frame has 12 rows and 2 columns. They are from an
experiment that compared an unmodified wild type plant with three
different genetically modified forms. The measurements are weights of
sugar that were obtained by breaking down the cellulose.

Usage
~~~~~

::

   sugar

Format
~~~~~~

This data frame contains the following columns:

weight
   weight, in mg

trt
   a factor with levels ``Control`` i.e. unmodified Wild form, ``A``
   Modified 1, ``B`` Modified 2, ``C`` Modified 3

Source
~~~~~~

Anonymous

Examples
~~~~~~~~

::

   sugar.aov <- aov(weight ~ trt, data=sugar)
   fitted.values(sugar.aov)
   summary.lm(sugar.aov)
   sugar.aov <- aov(formula = weight ~ trt, data = sugar)
   summary.lm(sugar.aov)
