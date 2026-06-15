======== ===============
repPsych R Documentation
======== ===============

Summary results from Reproducibility Study: Psychology
------------------------------------------------------

Description
~~~~~~~~~~~

The chief interest, in collating this dataset, was in the measures of
effect size, for the originl study and for the replication.

Usage
~~~~~

.. code:: R

   data("repPsych")

Format
~~~~~~

A data frame with 97 observations on the following 12 variables.

``stat``
   Test statistic. Character

``Journal``
   Where published. Character.

``Discipline``
   Cognitive or Social. Character.

``reportedP.O``
   Reported p-value. Character.

``effSizeO``
   Original effect size. Character.

``T_r.O``
   Original effect size, as correlation. Numeric.

``T_r.R``
   Replication effect size, as correlation. Numeric.

``efftype``
   a character vector

``tlike``
   Was test statistic t or F(1, m). Logical.

``d_O``
   Original effect size, on Cohen's d scale. Numeric.

``d_R``
   Replication effect size, on Cohen's d scale. Numeric.

Details
~~~~~~~

Effect estimates on a correlation scale were converted to a Cohen's
``d`` scale using ``d`` = ``2r``/``sqrt(1-r^2)``.

Source
~~~~~~

https://osf.io/fgjvw/

References
~~~~~~~~~~

https://osf.io/ezum7/ https://osf.io/z7aux Open Science Collaboration,
2015. Estimating the reproducibility of psychological science. Science,
349(6251), p.aac4716.

Examples
~~~~~~~~

.. code:: R

   data(repPsych)
