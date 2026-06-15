============= ===============
cochran.latin R Documentation
============= ===============

Latin square design in wheat
----------------------------

Description
~~~~~~~~~~~

Six wheat plots were sampled by six operators and shoot heights
measured. The operators sampled plots in six ordered sequences. The
dependent variate was the difference between measured height and true
height of the plot.

Format
~~~~~~

A data frame with 36 observations on the following 4 variables.

``row``
   row

``col``
   column

``operator``
   operator factor

``diff``
   difference between measured height and true height

Source
~~~~~~

Cochran, W.G. and Cox, G.M. (1957), *Experimental Designs*, 2nd ed.,
Wiley and Sons, New York.

Examples
~~~~~~~~

.. code:: R

   ## Not run: 

   library(agridat)
   data(cochran.latin)
   dat <- cochran.latin

   libs(desplot)
   desplot(dat, diff~col*row,
           text=operator, cex=1, # aspect unknown
           main="cochran.latin")


   dat <- transform(dat, rf=factor(row), cf=factor(col))
   aov.dat <- aov(diff ~ operator + Error(rf*cf), dat)
   summary(aov.dat)
   model.tables(aov.dat, type="means")

   ## End(Not run)
