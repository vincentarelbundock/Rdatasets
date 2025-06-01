.. container::

   .. container::

      ========= ===============
      fox.wheat R Documentation
      ========= ===============

      .. rubric:: Multi-environment trial of wheat, 22 varieties at 14
         sites in Australia
         :name: multi-environment-trial-of-wheat-22-varieties-at-14-sites-in-australia

      .. rubric:: Description
         :name: description

      Wheat yields of 22 varieties at 14 sites in Australia

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("fox.wheat")

      .. rubric:: Format
         :name: format

      A data frame with 308 observations on the following 4 variables.

      ``gen``
         genotype/variety factor, 22 levels

      ``site``
         site factor, 14 levels

      ``yield``
         yield, tonnes/ha

      ``state``
         state in Australia

      .. rubric:: Details
         :name: details

      The 1975 Interstate Wheat Variety trial in Australia used RCB
      design with 4 blocks, 22 varieties in 14 sites. Wagga is
      represented twice, by trials sown in May and June.

      The 22 varieties were a highly selected and represent considerable
      genetic diversity with four different groups. (i) from the
      University of Sydney: Timson, Songlen, Gamenya. (ii) widely grown
      on Mallee soils: Heron and Halberd. (iii) late maturing varieties
      from Victoria: Pinnacle, KL-21, JL-157. (iv) with Mexican
      parentage: WW-15 and Oxley.

      .. rubric:: Source
         :name: source

      Fox, P.N. and Rathjen, A.J. (1981). Relationships between sites
      used in the interstate wheat variety trials. *Australian Journal
      of Agricultural Research*, 32, 691-702.

      Electronic version supplied by Jonathan Godfrey.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

         data(fox.wheat)
         dat <- fox.wheat

         # Means of varieties.  Slight differences from Fox and Rathjen suggest
         # they had more decimals of precision than shown.
         tapply(dat$yield, dat$gen, mean)

         # Calculate genotype means, merge into the data
         genm <- tapply(dat$yield, dat$gen, mean)
         dat$genm <- genm[match(dat$gen, names(genm))]

         # Calculate slopes for each site.  Matches Fox, Table 2, Col A.
         m1 <- lm(yield~site+site:genm, data=dat)
         sort(round(coef(m1)[15:28],2), dec=TRUE)

         # Figure 1 of Fox
         libs(lattice)
         xyplot(yield~genm|state, data=dat, type=c('p','r'), group=site,
                auto.key=list(columns=4),
                main="fox.wheat", xlab="Variety mean across all sites",
                ylab="Variety yield at each site within states")


         ## End(Not run)
