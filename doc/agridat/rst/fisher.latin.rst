============ ===============
fisher.latin R Documentation
============ ===============

Latin square experiment on mangolds
-----------------------------------

Description
~~~~~~~~~~~

Latin square experiment on mangolds. Used by R. A. Fisher.

Usage
~~~~~

.. code:: R

   data("fisher.latin")

Format
~~~~~~

A data frame with 25 observations on the following 4 variables.

``trt``
   treatment factor, 5 levels

``yield``
   yield

``row``
   row

``col``
   column

Details
~~~~~~~

Yields are root weights. Data originally collected by Mercer and Hall as
part of a uniformity trial.

This data is the same as the data from columns 1-5, rows 16-20, of the
mercer.mangold.uniformity data in this package.

Unsurprisingly, there are no significant treatment differences.

Source
~~~~~~

Mercer, WB and Hall, AD, 1911. The experimental error of field trials
The Journal of Agricultural Science, 4, 107-132. Table 1.
http::/doi.org/10.1017/S002185960000160X

R. A. Fisher. *Statistical Methods for Research Workers*.

Examples
~~~~~~~~

.. code:: R


   library(agridat)

   data(fisher.latin)
   dat <- fisher.latin

   # Standard latin-square analysis
   m1 <- lm(yield ~ trt + factor(row) + factor(col), data=dat)
   anova(m1)
