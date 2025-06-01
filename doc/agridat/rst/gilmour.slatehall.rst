.. container::

   .. container::

      ================= ===============
      gilmour.slatehall R Documentation
      ================= ===============

      .. rubric:: Slate Hall Farm 1978
         :name: slate-hall-farm-1978

      .. rubric:: Description
         :name: description

      Yields for a trial at Slate Hall Farm in 1978.

      .. rubric:: Format
         :name: format

      A data frame with 150 observations on the following 5 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield (grams/plot)

      ``gen``
         genotype factor, 25 levels

      ``rep``
         rep factor, 6 levels

      .. rubric:: Details
         :name: details

      The trial was of spring wheat at Slate Hall Farm in 1978. The
      experiment was a balanced lattice with 25 varieties in 6
      replicates. The 'rep' labels are arbitrary (no rep labels appeared
      in the source data). Each row within a rep is an incomplete block.
      The plot size was 1.5 meters by 4 meters.

      Field width: 10 plots x 4 m = 40 m

      Field length: 15 plots x 1.5 meters = 22.5 m

      .. rubric:: Source
         :name: source

      Arthur R Gilmour and Brian R Cullis and Arunas P Verbyla (1997).
      Accounting for natural and extraneous variation in the analysis of
      field experiments. Journal of Agricultural, Biological, and
      Environmental Statistics, 2, 269-293.
      https://doi.org/10.2307/1400446

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(gilmour.slatehall)
           dat <- gilmour.slatehall

           libs(desplot)
           desplot(dat, yield ~ col * row,
                   aspect=22.5/40, num=gen, out1=rep, cex=1,
                   main="gilmour.slatehall")


           if(require("asreml", quietly=TRUE)) {

             libs(asreml,lucid)

             # Model 4 of Gilmour et al 1997
             dat <- transform(dat, xf=factor(col), yf=factor(row))
             dat <- dat[order(dat$xf, dat$yf), ]
             m4 <- asreml(yield ~ gen + lin(row), data=dat,
                          random = ~ dev(row) + dev(col),
                          resid = ~ ar1(xf):ar1(yf))
             # coef(m4)$fixed[1] # linear row
             # [1] 31.72252 # (sign switch due to row ordering)
             
             lucid::vc(m4)
             ##       effect component std.error z.ratio bound 
             ##     dev(col)  2519      1959         1.3     P   0
             ##     dev(row) 20290     10260         2       P   0
             ##     xf:yf(R) 23950      4616         5.2     P   0
             ## xf:yf!xf!cor     0.439     0.113     3.9     U   0
             ## xf:yf!yf!cor     0.125     0.117     1.1     U   0
             
             plot(varioGram(m4), main="gilmour.slatehall")
           }
           

         ## End(Not run)
