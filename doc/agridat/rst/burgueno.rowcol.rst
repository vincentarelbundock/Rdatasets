.. container::

   .. container::

      =============== ===============
      burgueno.rowcol R Documentation
      =============== ===============

      .. rubric:: Row-column design
         :name: row-column-design

      .. rubric:: Description
         :name: description

      Row-column design

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("burgueno.rowcol")

      .. rubric:: Format
         :name: format

      A data frame with 128 observations on the following 5 variables.

      ``rep``
         rep, 2 levels

      ``row``
         row

      ``col``
         column

      ``gen``
         genotype, 64 levels

      ``yield``
         yield, tons/ha

      .. rubric:: Details
         :name: details

      A field experiment with two contiguous replicates in 8 rows, 16
      columns.

      The plot size is not given.

      Electronic version of the data obtained from CropStat software.

      Used with permission of Juan Burgueno.

      .. rubric:: Source
         :name: source

      J Burgueno, A Cadena, J Crossa, M Banziger, A Gilmour, B Cullis
      (2000). User's guide for spatial analysis of field variety trials
      using ASREML. CIMMYT.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(burgueno.rowcol)
           dat <- burgueno.rowcol

           # Two contiguous reps in 8 rows, 16 columns
           libs(desplot)
           desplot(dat, yield ~ col*row,
                   out1=rep, # aspect unknown
                   text=gen, shorten="none", cex=.75,
                   main="burgueno.rowcol")

           libs(lme4,lucid)
           
           # Random rep, row and col within rep
           # m1 <- lmer(yield ~ gen + (1|rep) + (1|rep:row) + (1|rep:col), data=dat)
           # vc(m1) # Match components of Burgueno p. 40
           ##      grp        var1 var2   vcov  sdcor
           ##  rep:col (Intercept) <NA> 0.2189 0.4679
           ##  rep:row (Intercept) <NA> 0.1646 0.4057
           ##      rep (Intercept) <NA> 0.1916 0.4378
           ## Residual        <NA> <NA> 0.1796 0.4238
           
           if(require("asreml", quietly=TRUE)) {
             libs(asreml,lucid)
             
             # AR1 x AR1 with linear row/col effects, random spline row/col
             dat <- transform(dat, xf=factor(col), yf=factor(row))
             dat <- dat[order(dat$xf,dat$yf),]
             m2 <- asreml(yield ~ gen + lin(yf) + lin(xf), data=dat,
                          random = ~ spl(yf) + spl(xf),
                          resid = ~ ar1(xf):ar1(yf))
             m2 <- update(m2) # More iterations
             
             # Scaling of spl components has changed in asreml from old versions
             lucid::vc(m2) # Match Burgueno p. 42
             ##       effect component std.error z.ratio bound 
             ##      spl(yf)  0.09077    0.08252   1.1       P 0
             ##      spl(xf)  0.08107    0.08209   0.99      P 0
             ##     xf:yf(R)  0.1482     0.03119   4.8       P 0
             ## xf:yf!xf!cor  0.1152     0.2269    0.51      U 0.1
             ## xf:yf!yf!cor  0.009467   0.2414    0.039     U 0.9
             
             plot(varioGram(m2), main="burgueno.rowcol")
           }
           

         ## End(Not run)
