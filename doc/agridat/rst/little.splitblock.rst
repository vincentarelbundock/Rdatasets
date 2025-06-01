.. container::

   .. container::

      ================= ===============
      little.splitblock R Documentation
      ================= ===============

      .. rubric:: Split-block experiment of sugar beets
         :name: split-block-experiment-of-sugar-beets

      .. rubric:: Description
         :name: description

      Split-block experiment of sugar beets.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("little.splitblock")

      .. rubric:: Format
         :name: format

      A data frame with 80 observations on the following 6 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         sugar beet yield, tons/acre

      ``harvest``
         harvest date, weeks after planting

      ``nitro``
         nitrogen, pounds/acre

      ``block``
         block

      .. rubric:: Details
         :name: details

      Four rates of nitrogen, laid out as a 4x4 Latin-square experiment.

      Within each column block, the sub-plots are strips (across 4 rows)
      of 5 different harvest dates.

      The use of sub-plots a s strips necessitates care when determining
      the error terms in the ANOVA table.

      Note, Little has yield value of 22.3 for row 3, column I-H3. This
      data uses 23.3 in order to match the marginal totals given by
      Little.

      .. rubric:: Source
         :name: source

      Thomas M. Little, F. Jackson Hills. (1978) *Agricultural
      Experimentation*

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(little.splitblock)
         dat <- little.splitblock

         # Match marginal totals given by Little.
         ## sum(dat$yield)
         ## with(dat, tapply(yield,col,sum))
         ## with(dat, tapply(yield,row,sum))

         # Layout shown by Little figure 10.2
         libs(desplot)
         desplot(dat, yield ~ col*row,
                 out1=block, out2=col, col=nitro, cex=1, num=harvest,
                 main="little.splitblock")


         # Convert continuous traits to factors
         dat <- transform(dat, R=factor(row), C=factor(block),
                          H=factor(harvest), N=factor(nitro))

         if(0){
           libs(lattice)
           xyplot(yield ~ nitro|H,dat)
           xyplot(yield ~ harvest|N,dat)
         }

         # Anova table matches Little, table 10.3
         m1 <- aov(yield ~ R + C + N + H + N:H +
                     Error(R:C:N + C:H + C:N:H), data=dat)
         summary(m1)


         ## End(Not run)
