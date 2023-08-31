.. container::

   ===== ===============
   moths R Documentation
   ===== ===============

   .. rubric:: Moths Data
      :name: moths

   .. rubric:: Description
      :name: description

   The ``moths`` data frame has 41 rows and 4 columns. These data are
   from a study of the effect of habitat on the densities of two species
   of moth (A and P). Transects were set across the search area. Within
   transects, sections were identified according to habitat type.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      moths

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   meters
      length of transect

   A
      number of type A moths found

   P
      number of type P moths found

   habitat
      a factor with levels ``Bank``, ``Disturbed``, ``Lowerside``,
      ``NEsoak``, ``NWsoak``, ``SEsoak``, ``SWsoak``, ``Upperside``

   .. rubric:: Source
      :name: source

   Sharyn Wragg, formerly of Australian National University

   .. rubric:: Examples
      :name: examples

   .. code:: R

      print("Quasi Poisson Regression - Example 8.3")
      rbind(table(moths[,4]), sapply(split(moths[,-4], moths$habitat), apply,2,
      sum))
      A.glm <- glm(formula = A ~ log(meters) + factor(habitat), family =
      quasipoisson, data = moths)
      summary(A.glm)
        # Note the huge standard errors
      moths$habitat <- relevel(moths$habitat, ref="Lowerside")
      A.glm <- glm(A ~ habitat + log(meters), family=quasipoisson, data=moths)
      summary(A.glm)$coef
      ## Consider as another possibility
      A2.glm <- glm(formula = A ~ sqrt(meters) + factor(habitat), family =
                        quasipoisson(link=sqrt), data = moths)
      summary(A2.glm)
