.. container::

   .. container::

      ========= ===============
      RootStock R Documentation
      ========= ===============

      .. rubric:: Growth of Apple Trees from Different Root Stocks
         :name: growth-of-apple-trees-from-different-root-stocks

      .. rubric:: Description
         :name: description

      In a classic experiment carried out from 1918 to 1934, growth of
      apple trees of six different rootstocks were compared on four
      measures of size. How do the measures of size vary with the type
      of rootstock?

      .. rubric:: Format
         :name: format

      A data frame with 48 observations on the following 5 variables.

      ``rootstock``
         a factor with levels ``1`` ``2`` ``3`` ``4`` ``5`` ``6``

      ``girth4``
         a numeric vector: trunk girth at 4 years (mm x 100)

      ``ext4``
         a numeric vector: extension growth at 4 years (m)

      ``girth15``
         a numeric vector: trunk girth at 15 years (mm x 100)

      ``weight15``
         a numeric vector: weight of tree above ground at 15 years (lb x
         1000)

      .. rubric:: Details
         :name: details

      This is a balanced, one-way MANOVA design, with n=8 trees for each
      rootstock.

      .. rubric:: Source
         :name: source

      Andrews, D. and Herzberg, A. (1985). *Data: A Collection of
      Problems from Many Fields for the Student and Research Worker*
      Springer-Verlag, pp. 357–360.

      .. rubric:: References
         :name: references

      Rencher, A. C. (1995). *Methods of Multivariate Analysis*. New
      York: Wiley, Table 6.2

      .. rubric:: Examples
         :name: examples

      ::

         library(car)
         data(RootStock)
         str(RootStock)

         root.mod <- lm(cbind(girth4, ext4, girth15, weight15) ~ rootstock, data=RootStock)
         car::Anova(root.mod)

         pairs(root.mod)

         # test two orthogonal contrasts among the rootstocks
         hyp <- matrix(c(2,-1,-1,-1,-1,2,  
                         1, 0,0,0,0,-1), 2, 6, byrow=TRUE)
         car::linearHypothesis(root.mod, hyp)
         heplot(root.mod, hypotheses=list(Contrasts=hyp, C1=hyp[1,], C2=hyp[2,]))

         heplot1d(root.mod, hypotheses=list(Contrasts=hyp, C1=hyp[1,], C2=hyp[2,]))
