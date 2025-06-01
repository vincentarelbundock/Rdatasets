.. container::

   .. container::

      ============ ===============
      fisher.latin R Documentation
      ============ ===============

      .. rubric:: Latin square experiment on mangolds
         :name: latin-square-experiment-on-mangolds

      .. rubric:: Description
         :name: description

      Latin square experiment on mangolds. Used by R. A. Fisher.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("fisher.latin")

      .. rubric:: Format
         :name: format

      A data frame with 25 observations on the following 4 variables.

      ``trt``
         treatment factor, 5 levels

      ``yield``
         yield

      ``row``
         row

      ``col``
         column

      .. rubric:: Details
         :name: details

      Yields are root weights. Data originally collected by Mercer and
      Hall as part of a uniformity trial.

      This data is the same as the data from columns 1-5, rows 16-20, of
      the mercer.mangold.uniformity data in this package.

      Unsurprisingly, there are no significant treatment differences.

      .. rubric:: Source
         :name: source

      Mercer, WB and Hall, AD, 1911. The experimental error of field
      trials The Journal of Agricultural Science, 4, 107-132. Table 1.
      http::/doi.org/10.1017/S002185960000160X

      R. A. Fisher. *Statistical Methods for Research Workers*.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(agridat)

         data(fisher.latin)
         dat <- fisher.latin

         # Standard latin-square analysis
         m1 <- lm(yield ~ trt + factor(row) + factor(col), data=dat)
         anova(m1)
