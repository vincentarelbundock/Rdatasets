.. container::

   .. container::

      ================== ===============
      durban.competition R Documentation
      ================== ===============

      .. rubric:: Sugar beet yields with competition effects
         :name: sugar-beet-yields-with-competition-effects

      .. rubric:: Description
         :name: description

      Sugar beet yields with competition effects

      .. rubric:: Format
         :name: format

      A data frame with 114 observations on the following 5 variables.

      ``gen``
         Genotype factor, 36 levels plus Border

      ``col``
         Column

      ``block``
         Row/Block

      ``wheel``
         Position relative to wheel tracks

      ``yield``
         Root yields, kg/plot

      .. rubric:: Details
         :name: details

      This sugar-beet trial was conducted in 1979.

      Single-row plots, 12 m long, 0.5 m between rows. Each block is
      made up of all 36 genotypes laid out side by side. Guard/border
      plots are at each end. Root yields were collected.

      Wheel tracks are located between columns 1 and 2, and between
      columns 5 and 6, for each set of six plots. Each genotype was
      randomly allocated once to each pair of plots (1,6), (2,5), (3,4)
      across the three reps. Wheel effect were not significant in
      \_this\_ trial.

      Field width: 18m + 1m guard rows = 19m

      Field length: 3 blocks \* 12m + 2*0.5m spacing = 37m Retrieved
      from
      https://www.ma.hw.ac.uk/~iain/research/JAgSciData/data/Trial1.dat

      Used with permission of Iain Currie.

      .. rubric:: Source
         :name: source

      Durban, M., Currie, I. and R. Kempton, 2001. Adjusting for
      fertility and competition in variety trials. J. of Agricultural
      Science, 136, 129–140.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

         data(durban.competition)
         dat <- durban.competition

         # Check that genotypes were balanced across wheel tracks.
         with(dat, table(gen,wheel))

         libs(desplot)
         desplot(dat, yield ~ col*block,
                 out1=block, text=gen, col=wheel, aspect=37/19, # true aspect
                 main="durban.competition")


         # Calculate residual after removing block/genotype effects
         m1 <- lm(yield ~ gen + block, data=dat)
         dat$res <- resid(m1)

         ## desplot(dat, res ~ col*block, out1=block, text=gen, col=wheel,
         ##         main="durban.competition - residuals")

         # Calculate mean of neighboring plots
         dat$comp <- NA
         dat$comp[3:36] <- ( dat$yield[2:35] + dat$yield[4:37] ) / 2
         dat$comp[41:74] <- ( dat$yield[40:73] + dat$yield[42:75] ) / 2
         dat$comp[79:112] <- ( dat$yield[78:111] + dat$yield[80:113] ) / 2

         # Demonstrate the competition effect
         # Competitor plots have low/high yield -> residuals are negative/positive
         libs(lattice)
         xyplot(res~comp, dat, type=c('p','r'), main="durban.competition",
                xlab="Average yield of neighboring plots", ylab="Residual")


         ## End(Not run)
