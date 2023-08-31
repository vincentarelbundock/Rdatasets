.. container::

   === ===============
   GSS R Documentation
   === ===============

   .. rubric:: General Social Survey– Sex and Party affiliation
      :name: GSS

   .. rubric:: Description
      :name: description

   Data from the General Social Survey, 1991, on the relation between
   sex and party affiliation.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(GSS)

   .. rubric:: Format
      :name: format

   A data frame in frequency form with 6 observations on the following 3
   variables.

   ``sex``
      a factor with levels ``female`` ``male``

   ``party``
      a factor with levels ``dem`` ``indep`` ``rep``

   ``count``
      a numeric vector

   .. rubric:: Source
      :name: source

   Agresti, A. *Categorical Data Analysis*, 2nd E., John Wiley & Sons,
   2002, Table 3.11, p. 106.

   .. rubric:: Examples
      :name: examples

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
