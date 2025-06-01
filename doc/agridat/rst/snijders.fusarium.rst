.. container::

   .. container::

      ================= ===============
      snijders.fusarium R Documentation
      ================= ===============

      .. rubric:: Fusarium infection in wheat varieties
         :name: fusarium-infection-in-wheat-varieties

      .. rubric:: Description
         :name: description

      Infection in wheat by different strains of Fusarium.

      .. rubric:: Format
         :name: format

      A data frame with 204 observations on the following 4 variables.

      ``gen``
         wheat genotype

      ``strain``
         fusarium strain

      ``year``
         year

      ``y``
         percent infected

      .. rubric:: Details
         :name: details

      The data are the percent of leaf area affected by Fusarium head
      blight, averaged over 4-5 reps, for 17 winter wheat genotypes.

      Van Eeuwijk fit a generalized ammi-2 model to this data. It is a
      generalized model in the sense that a link function is used, and
      is a non-linear AMMI model in that there are main effects for
      variety and year-strain, but additional multiplicative effects for
      the interactions.

      Note, the value for strain F348 in 1988, gen SVP75059-32 should be
      28.3 (as shown in VanEeuwijk 1995) and not 38.3 (as shown in
      Snijders 1991).

      Used with permission of Fred van Eeuwijk.

      .. rubric:: Source
         :name: source

      Snijders, CHA and Van Eeuwijk, FA. 1991. Genotype x strain
      interactions for resistance to Fusarium head blight caused by
      Fusarium culmorum in winter wheat. Theoretical and Applied
      Genetics, 81, 239–244. Table 1. https://doi.org/10.1007/BF00215729

      .. rubric:: References
         :name: references

      Fred A van Eeuwijk. 1995. Multiplicative interaction in
      generalized linear models. *Biometrics*, 51, 1017-1032.
      https://doi.org/10.2307/2533001

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

         data(snijders.fusarium)
         dat <- snijders.fusarium

         aggregate(y ~ strain + year, dat, FUN=mean) # Match means in Snijders table 1

         dat <- transform(dat, y=y/100, year=factor(year), yrstr=factor(paste0(year,"-",strain)))

         # Strain F329 shows little variation across years. F39 shows a lot.
         libs(lattice)
         dotplot(gen~y|strain, data=dat, group=year,
                 main="snijders.fusarium : infection by strain",
                 xlab="Fraction infected", ylab="variety",
                 auto.key=list(columns=3))

         # Logit transform
         dat <- transform(dat, logit=log(y/(1-y)))
         m1 <- aov(logit ~ yrstr + gen, data=dat) # Match SS in VanEeuwijk table 4
         anova(m1)  # Match SS in VanEeuwijk table 4
         m2 <- aov(logit ~ year*strain + gen + gen:year + gen:strain, data=dat)
         anova(m2) # Match to VanEeuwijk table 5

         # GLM on untransformed data using logit link, variance mu^2(1-mu)^2
         libs(gnm) # for 'wedderburn' family
         m2 <- glm(y ~ yrstr + gen, data=dat, family="wedderburn")
         anova(m2) # Main effects match VanEeuwijk table 6

         # Generalized AMMI-2 model. Matches VanEeuwijk table 6
         bilin2 <- gnm(y ~ yrstr + gen + instances(Mult(yrstr, gen), 2),
                       data=dat, family = wedderburn)
         # plot(bilin2,1) # Resid vs fitted plot matches VanEeuwijk figure 3c
         ## anova(bilin2)
         ##                            Df Deviance Resid. Df Resid. Dev
         ## NULL                                         203     369.44
         ## yrstr                      11  150.847       192     218.60
         ## gen                        16  145.266       176      73.33
         ## Mult(yrstr, gen, inst = 1) 26   26.128       150      47.20
         ## Mult(yrstr, gen, inst = 2) 24   19.485       126      27.72

         # Manually extract coordinates for biplot
         cof <- coef(bilin2)
         y1 <- cof[29:40]
         g1 <- cof[41:57]
         y2 <- cof[58:69]
         g2 <- cof[70:86]
         g12 <- cbind(g1,g2)
         rownames(g12) <- substring(rownames(g12), 29)
         y12 <- cbind(y1,y2)
         rownames(y12) <- substring(rownames(y12), 31)
         g12[,1] <- -1 * g12[,1]
         y12[,1] <- -1 * y12[,1]
         # GAMMI biplot.  Inner-products of points projected onto
         # arrows match VanEeuwijk figure 4.  Slight rotation of graph is ignorable.
         biplot(y12, g12, cex=.75, main="snijders.fusarium") # Arrows to genotypes.


         ## End(Not run)
