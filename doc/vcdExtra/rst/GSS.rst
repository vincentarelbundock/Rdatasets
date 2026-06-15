=== ===============
GSS R Documentation
=== ===============

General Social Survey– Sex and Party affiliation
------------------------------------------------

Description
~~~~~~~~~~~

Data from the General Social Survey, 1991, on the relation between sex
and party affiliation.

Format
~~~~~~

A data frame in frequency form with 6 observations on the following 3
variables.

``sex``
   a factor with levels ``female`` ``male``

``party``
   a factor with levels ``dem`` ``indep`` ``rep``

``count``
   a numeric vector

Source
~~~~~~

Agresti, A. *Categorical Data Analysis*, 2nd E., John Wiley & Sons,
2002, Table 3.11, p. 106.

Examples
~~~~~~~~

.. code:: R


   data(GSS)
   str(GSS)

   # use xtabs to show the table in a compact form
   (GSStab <- xtabs(count ~ sex + party, data=GSS))

   # fit the independence model
   (mod.glm <- glm(count ~ sex + party, family = poisson, data = GSS))

   # display all the residuals in a mosaic plot
   mosaic(mod.glm,
     formula = ~ sex + party,
     labeling = labeling_residuals,
     suppress=0)
