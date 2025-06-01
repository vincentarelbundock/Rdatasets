.. container::

   .. container::

      ================ ===============
      bridges.cucumber R Documentation
      ================ ===============

      .. rubric:: Multi-environment trial of cucumbers in a latin square
         design
         :name: multi-environment-trial-of-cucumbers-in-a-latin-square-design

      .. rubric:: Description
         :name: description

      Cucumber yields in latin square design at two locs.

      .. rubric:: Format
         :name: format

      A data frame with 32 observations on the following 5 variables.

      ``loc``
         location

      ``gen``
         genotype/cultivar

      ``row``
         row

      ``col``
         column

      ``yield``
         weight of marketable fruit per plot

      .. rubric:: Details
         :name: details

      Conducted at Clemson University in 1985. four cucumber cultivars
      were grown in a latin square design at Clemson, SC, and Tifton,
      GA.

      Separate variances are modeled each location.

      Plot dimensions are not given.

      Bridges (1989) used this data to illustrate fitting a
      heterogeneous mixed model.

      Used with permission of William Bridges.

      .. rubric:: Source
         :name: source

      William Bridges (1989). Analysis of a plant breeding experiment
      with heterogeneous variances using mixed model equations.
      Applications of mixed models in agriculture and related
      disciplines, S. Coop. Ser. Bull, 45–51.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(bridges.cucumber)
           dat <- bridges.cucumber
           dat <- transform(dat, rowf=factor(row), colf=factor(col))

           libs(desplot)
           desplot(dat, yield~col*row|loc,
                   # aspect unknown
                   text=gen, cex=1,
                   main="bridges.cucumber")

           # Graphical inference test for heterogenous variances
           libs(nullabor)
           # Create a lineup of datasets
           fun <- null_permute("loc")
           dat20 <- lineup(fun, dat, n=20, pos=9)

           # Now plot
           libs(lattice)
           bwplot(yield ~ loc|factor(.sample), dat20,
                  main="bridges.cucumber - graphical inference")

           if(require("asreml", quietly=TRUE)) {
             libs(asreml,lucid)
             
             ## Random row/col/resid. Same as Bridges 1989, p. 147
             m1 <- asreml(yield ~ 1 + gen + loc + loc:gen,
                          random = ~ rowf:loc + colf:loc, data=dat)
           
             lucid::vc(m1)
             ##   effect component std.error z.ratio bound 
             ## rowf:loc     31.62     23.02     1.4     P   0
             ## colf:loc     18.08     15.32     1.2     P   0
             ## units(R)     31.48     12.85     2.4     P   0
             
             ## Random row/col/resid at each loc. Matches p. 147
             m2 <- asreml(yield ~ 1 + gen + loc + loc:gen,
                          random = ~ at(loc):rowf + at(loc):colf, data=dat,
                          resid = ~ dsum( ~ units|loc))
             lucid::vc(m2)
             ##                effect component std.error z.ratio bound 
             ## at(loc, Clemson):rowf     32.32    36.58     0.88     P   0
             ##  at(loc, Tifton):rowf     30.92    28.63     1.1      P   0
             ## at(loc, Clemson):colf     22.55    28.78     0.78     P   0
             ##  at(loc, Tifton):colf     13.62    14.59     0.93     P   0
             ##        loc_Clemson(R)     46.85    27.05     1.7      P   0
             ##         loc_Tifton(R)     16.11     9.299    1.7      P   0
             
             predict(m2, data=dat, classify='loc:gen')$pvals
             ##       loc      gen predicted.value std.error    status
             ## 1 Clemson   Dasher            45.6      5.04 Estimable
             ## 2 Clemson Guardian            31.6      5.04 Estimable
             ## 3 Clemson Poinsett            21.4      5.04 Estimable
             ## 4 Clemson   Sprint            26        5.04 Estimable
             ## 5  Tifton   Dasher            50.5      3.89 Estimable
             ## 6  Tifton Guardian            38.7      3.89 Estimable
             ## 7  Tifton Poinsett            33        3.89 Estimable
             ## 8  Tifton   Sprint            39.2      3.89 Estimable
             
             # Is a heterogeneous model justified? Maybe not.
             # m1$loglik
             ## -67.35585
             # m2$loglik
             ## -66.35621
           }
           

         ## End(Not run)
