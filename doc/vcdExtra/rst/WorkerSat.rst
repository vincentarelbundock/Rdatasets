========= ===============
WorkerSat R Documentation
========= ===============

Worker Satisfaction Data
------------------------

Description
~~~~~~~~~~~

Blue collar workers job satisfaction from large scale investigation in
Denmark in 1968 (Andersen, 1991).

Format
~~~~~~

A frequency data frame with 8 observations on the following 4 variables,
representing the 2 x 2 x 2 classification of 715 cases.

``Manage``
   Quality of management, an ordered factor with levels ``bad`` <
   ``good``

``Super``
   Supervisor satisfaction, an ordered factor with levels ``low`` <
   ``high``

``Worker``
   Worker job satisfaction, an ordered factor with levels ``low`` <
   ``high``

``Freq``
   a numeric vector

Source
~~~~~~

Originally from https://online.stat.psu.edu/stat504/Lesson10

References
~~~~~~~~~~

Andersen, E. B. (1991) Statistical Analysis of Categorical Data, 2nd
Ed., Springer-Verlag.

Examples
~~~~~~~~

.. code:: R


   data(WorkerSat)

   worker.tab <- xtabs(Freq ~ Worker + Super + Manage, data=WorkerSat)
   fourfold(worker.tab)
   mosaic(worker.tab, shade=TRUE)
