.. container::

   .. container::

      ========== ===============
      yates.oats R Documentation
      ========== ===============

      .. rubric:: Split-plot experiment of oats
         :name: split-plot-experiment-of-oats

      .. rubric:: Description
         :name: description

      The yield of oats from a split-plot field trial conducted at
      Rothamsted in 1931.

      Varieties were applied to the main plots.

      Manurial (nitrogen) treatments were applied to the sub-plots.

      Each plot is 1/80 acre = 28.4 links \* 44 links.

      Field width: 4 plots \* 44 links = 176 links.

      Field length: 18 rows \* 28.4 links = 511 links

      The 'block' numbers in this data are as given in the Rothamsted
      Report. The 'grain' and 'straw' values are the actual pounds per
      sub-plot as shown in the Rothamsted Report. Each sub-plot is 1/80
      acre, and a 'hundredweight (cwt)' is 112 pounds, so converting
      from sub-plot weight to hundredweight/acre needs a conversion
      factor of 80/112.

      The 'yield' values are the values as they appeared in the paper by
      Yates, who used 1/4-pounds as the units (i.e. he multiplied the
      original weight by 4) for simpler calculations.

      .. rubric:: Format
         :name: format

      ``row``
         row

      ``col``
         column

      ``yield``
         yield in 1/4 pounds per sub-plot, each 1/80 acre

      ``nitro``
         nitrogen treatment in hundredweight per acre

      ``gen``
         genotype, 3 levels

      ``block``
         block, 6 levels

      ``grain``
         grain weight in pounds per sub-plot

      ``straw``
         straw weight in pounds per sub-plot

      .. rubric:: Source
         :name: source

      Report for 1931. Rothamsted Experiment Station. Page 143.
      https://www.era.rothamsted.ac.uk/eradoc/article/ResReport1931-141-159

      .. rubric:: References
         :name: references

      Yates, Frank (1935) Complex experiments, Journal of the Royal
      Statistical Society Supplement 2, 181-247. Figure 2.
      https://doi.org/10.2307/2983638

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(yates.oats)
           dat <- yates.oats

           ## # Means match Rothamsted report p. 144
           ## libs(dplyr)
           ## dat 
           ##   summarize(grain=mean(grain)*80/112,
           ##             straw=mean(straw)*80/112)

           libs(desplot)
           # Experiment design & yield heatmap
           desplot(dat, block ~ col*row, col.regions=c("black","yellow"),
                   out1=block, num=nitro, col=gen,
                   cex=1, aspect=511/176, # true aspect
                   main="yates.oats")


           # Roughly linear gradient across the field.  The right-half of each
           # block has lower yield.  The blocking is inadequate!
           libs("lattice")
           xyplot(yield ~ col|factor(nitro), dat,
                  type = c('p', 'r'), xlab='col', as.table = TRUE,
                  main="yates.oats")

           libs(lme4)
           # Typical split-plot analysis. Non-significant gen differences
           m3 <- lmer(yield ~ factor(nitro) * gen + (1|block/gen), data=dat)
           # Residuals still show structure
           xyplot(resid(m3) ~ dat$col, xlab='col', type=c('p','smooth'),
                  main="yates.oats")

           # Add a linear trend for column
           m4 <- lmer(yield ~ col + factor(nitro) * gen + (1|block/gen), data=dat)
           # xyplot(resid(m4) ~ dat$col, type=c('p','smooth'), xlab='col')

           ## Compare fits
           AIC(m3,m4)
           ##    df      AIC
           ## m3  9 581.2372
           ## m4 10 557.9424 # Substantially better


           # ----------

           # Marginal predictions

           # --- nlme ---
           libs(nlme)
           libs(emmeans)
           # create unbalance
           dat2 <- yates.oats[-c(1,2,3,5,8,13,21,34,55),]
           m5l <- lme(yield ~ factor(nitro) + gen, random = ~1 | block/gen,
                      data = dat2)

           # asreml r 4 has a bug with asreml( factor(nitro))
           dat2$nitrof <- factor(dat2$nitro)

           # --- asreml  ---
           if(require("asreml", quietly=TRUE)){
             libs(asreml,lucid)
             m5a <- asreml(yield ~ nitrof + gen,
                           random = ~ block + block:gen, data=dat2)
             lucid::vc(m5l)
             lucid::vc(m5a)

           emmeans::emmeans(m5l, "gen")
           predict(m5a, data=dat2, classify="gen")$pvals
           }
           


         ## End(Not run)
