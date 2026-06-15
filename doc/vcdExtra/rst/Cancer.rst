====== ===============
Cancer R Documentation
====== ===============

Survival of Breast Cancer Patients
----------------------------------

Description
~~~~~~~~~~~

Three year survival of 474 breast cancer patients according to nuclear
grade and diagnostic center.

Format
~~~~~~

A 3-dimensional array resulting from cross-tabulating 3 variables for
474 observations. The variable names and their levels are:

=== ============ =========================
dim Name         Levels
1   ``Survival`` ``⁠"Died", "Surv"⁠``
2   ``Grade``    ``⁠"Malignant", "Benign"⁠``
3   ``Center``   ``⁠"Boston", "Glamorgan"⁠``
                 
=== ============ =========================

Source
~~~~~~

Lindsey, J. K. (1995). Analysis of Frequency and Count Data Oxford, UK:
Oxford University Press. p. 38, Table 2.5.

Whittaker, J. (1990) Graphical Models in Applied Multivariate Statistics
New York: John Wiley and Sons, p. 220.

Examples
~~~~~~~~

.. code:: R


   data(Cancer)

   MASS::loglm(~Survival + Grade + Center, data = Cancer)

   vcd::mosaic(Cancer, shade=TRUE)
