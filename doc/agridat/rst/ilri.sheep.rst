.. container::

   .. container::

      ========== ===============
      ilri.sheep R Documentation
      ========== ===============

      .. rubric:: Birth weight and weaning weight of Dorper x Red Maasi
         lambs
         :name: birth-weight-and-weaning-weight-of-dorper-x-red-maasi-lambs

      .. rubric:: Description
         :name: description

      Birth weight and weaning weight of 882 lambs from a partial
      diallel cross of Dorper and Red Maasi breeds.

      .. rubric:: Format
         :name: format

      A data frame with 882 observations on the following 12 variables.

      ``year``
         year of lamb birth, 1991-1996

      ``lamb``
         lamb id

      ``sex``
         sex of lamb, M=Male/F=Female

      ``gen``
         genotype, DD, DR, RD, RR

      ``birthwt``
         weight of lamb at birth, kg

      ``weanwt``
         weight of lamb at weaning, kg

      ``weanage``
         age of lamb at weaning, days

      ``ewe``
         ewe id

      ``ewegen``
         ewe genotype: D, R

      ``damage``
         ewe (dam) age in years

      ``ram``
         ram id

      ``ramgen``
         ram genotype: D, R

      .. rubric:: Details
         :name: details

      Red Maasai sheep in East Africa are perceived to be resistant to
      certain parasites. ILRI decided in 1990 to investigate the degree
      of resistance exhibited by this Red Maasai breed and initiated a
      study in Kenya. A susceptible breed, the Dorper, was chosen to
      provide a direct comparison with the Red Maasai. The Dorper is
      well-adapted to this area and is also larger than the Red Maasai,
      and this makes these sheep attractive to farmers.

      Throughout six years from 1991 to 1996 Dorper (D), Red Maasai (R)
      and Red Maasai x Dorper crossed ewes were mated to Red Maasai and
      Dorper rams to produce a number of different lamb genotypes. For
      the purposes of this example, only the following four offspring
      genotypes are considered (Sire x Dam): D x D, D x R, R x D and R x
      R.

      Records are missing in 182 of the lambs, mostly because of earlier
      death.

      .. rubric:: Source
         :name: source

      Mixed model analysis for the estimation of components of genetic
      variation in lamb weaning weight. International Livestock Research
      Institute. Permanent link: https://hdl.handle.net/10568/10364
      https://biometrics.ilri.org/CS/case Retrieved Dec 2011.

      Used via license: Creative Commons BY-NC-SA 3.0.

      .. rubric:: References
         :name: references

      Baker, RL and Nagda, S. and Rodriguez-Zas, SL and Southey, BR and
      Audho, JO and Aduda, EO and Thorpe, W. (2003). Resistance and
      resilience to gastro-intestinal nematode parasites and
      relationships with productivity of Red Maasai, Dorper and Red
      Maasai x Dorper crossbred lambs in the sub-humid tropics. Animal
      Science, 76, 119-136. https://doi.org/10.1017/S1357729800053388

      Gota Morota, Hao Cheng, Dianne Cook, Emi Tanaka (2021). ASAS-NANP
      SYMPOSIUM: prospects for interactive and dynamic graphics in the
      era of data-rich animal science. Journal of Animal Science, Volume
      99, Issue 2, February 2021, skaa402.
      https://doi.org/10.1093/jas/skaa402

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(ilri.sheep)
           dat <- ilri.sheep
           dat <- transform(dat, lamb=factor(lamb), ewe=factor(ewe), ram=factor(ram),
                            year=factor(year))
           # dl is linear covariate, same as damage, but truncated to [2,8]
           dat <- within(dat, {
             dl <- damage
             dl <- ifelse(dl < 3, 2, dl)
             dl <- ifelse(dl > 7, 8, dl)
             dq <- dl^2
           })

           dat <- subset(dat, !is.na(weanage))

           # EDA
           libs(lattice)
           ## bwplot(weanwt ~ year, dat, main="ilri.sheep", xlab="year", ylab="Wean weight",
           ##        panel=panel.violin) # Year effect
           bwplot(weanwt ~ factor(dl), dat,
                  main="ilri.sheep", xlab="Dam age", ylab="Wean weight") # Dam age effect
           # bwplot(weanwt ~ gen, dat,
           #        main="ilri.sheep", xlab="Genotype", ylab="Wean weight") # Genotype differences
           xyplot(weanwt ~ weanage, dat, type=c('p','smooth'),
                  main="ilri.sheep", xlab="Wean age", ylab="Wean weight") # Age covariate

           # case study page 4.18
           lm1 <- lm(weanwt ~ year + sex + weanage + dl + dq + ewegen + ramgen, data=dat)
           summary(lm1)
           anova(lm1)

           # ----------

           libs(lme4)
           lme1 <- lmer(weanwt ~ year + sex + weanage + dl + dq + ewegen + ramgen +
                          (1|ewe) + (1|ram), data=dat)
           print(lme1, corr=FALSE)
           lme2 <- lmer(weanwt ~ year + sex + weanage + dl + dq + ewegen + ramgen +
                          (1|ewe), data=dat)
           lme3 <- lmer(weanwt ~ year + sex + weanage + dl + dq + ewegen + ramgen +
                          (1|ram), data=dat)
           anova(lme1, lme2,  lme3)

           # ----------

           if(require("asreml", quietly=TRUE)){
             libs(asreml,lucid)
             # case study page 4.20
             m1 <- asreml(weanwt ~ year + sex + weanage + dl + dq + ramgen + ewegen,
                          data=dat)
             # wald(m1)
           
             # case study page 4.26
             m2 <- asreml(weanwt ~ year + sex + weanage + dl + dq + ramgen + ewegen,
                          random = ~ ram + ewe, data=dat)
             # wald(m2)
             
             # case study page 4.37, year means
             # predict(m2, data=dat, classify="year")
             ##   year predicted.value standard.error est.status
             ## 1   91       12.638564      0.2363652  Estimable
             ## 2   92       11.067659      0.2285252  Estimable
             ## 3   93       11.561932      0.1809891  Estimable
             ## 4   94        9.636058      0.2505478  Estimable
             ## 5   95        9.350247      0.2346849  Estimable
             ## 6   96       10.188482      0.2755387  Estimable
           }
           

         ## End(Not run)
