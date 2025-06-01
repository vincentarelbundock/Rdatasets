.. container::

   .. container::

      ============== ===============
      blackman.wheat R Documentation
      ============== ===============

      .. rubric:: Multi-environment trial of wheat, conventional and
         semi-dwarf varieties
         :name: multi-environment-trial-of-wheat-conventional-and-semi-dwarf-varieties

      .. rubric:: Description
         :name: description

      Multi-environment trial of wheat, conventional and semi-dwarf
      varieties, 7 locs with low/high fertilizer levels.

      .. rubric:: Format
         :name: format

      A data frame with 168 observations on the following 5 variables.

      ``gen``
         genotype

      ``loc``
         location

      ``nitro``
         nitrogen fertilizer, low/high

      ``yield``
         yield (g/m^2)

      ``type``
         type factor, conventional/semi-dwarf

      .. rubric:: Details
         :name: details

      Conducted in U.K. in 1975. Each loc had three reps, two nitrogen
      treatments.

      Locations were Begbroke, Boxworth, Crafts Hill, Earith, Edinburgh,
      Fowlmere, Trumpington.

      At the two highest-yielding locations, Earith and Edinburgh, yield
      was \_lower\_ for the high-nitrogen treatment. Blackman et al. say
      "it seems probable that effects on development and structure of
      the crop were responsible for the reductions in yield at high
      nitrogen".

      .. rubric:: Source
         :name: source

      Blackman, JA and Bingham, J. and Davidson, JL (1978). Response of
      semi-dwarf and conventional winter wheat varieties to the
      application of nitrogen fertilizer. *The Journal of Agricultural
      Science*, 90, 543–550. https://doi.org/10.1017/S0021859600056070

      .. rubric:: References
         :name: references

      Gower, J. and Lubbe, S.G. and Gardner, S. and Le Roux, N. (2011).
      *Understanding Biplots*, Wiley.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(blackman.wheat)
         dat <- blackman.wheat

         libs(lattice)

         # Semi-dwarf generally higher yielding than conventional
         # bwplot(yield~type|loc,dat, main="blackman.wheat")

         # Peculiar interaction--Ear/Edn locs have reverse nitro response
         dotplot(gen~yield|loc, dat, group=nitro, auto.key=TRUE,
                 main="blackman.wheat: yield for low/high nitrogen")

         # Height data from table 6 of Blackman.  Height at Trumpington loc.
         # Shorter varieties have higher yields, greater response to nitro.
         heights <- data.frame(gen=c("Cap", "Dur", "Fun", "Hob", "Hun", "Kin",
                                     "Ran", "Spo", "T64", "T68","T95", "Tem"),
                               ht=c(101,76,76,80,98,88,98,81,86,73,78,93))
         dat$height <- heights$ht[match(dat$gen, heights$gen)]
         xyplot(yield~height|loc,dat,group=nitro,type=c('p','r'),
                main="blackman.wheat",
                subset=loc=="Tru", auto.key=TRUE)


         libs(reshape2)
         # AMMI-style biplot Fig 6.4 of Gower 2011
         dat$env <- factor(paste(dat$loc,dat$nitro,sep="-"))
         datm <- acast(dat, gen~env, value.var='yield')
         datm <- sweep(datm, 1, rowMeans(datm))
         datm <- sweep(datm, 2, colMeans(datm))
         biplot(prcomp(datm), main="blackman.wheat AMMI-style biplot")



         ## End(Not run)
