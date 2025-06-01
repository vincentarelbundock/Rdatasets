.. container::

   .. container::

      ================= ===============
      jansen.strawberry R Documentation
      ================= ===============

      .. rubric:: Ordered disease ratings of strawberry crosses.
         :name: ordered-disease-ratings-of-strawberry-crosses.

      .. rubric:: Description
         :name: description

      Ordered disease ratings of strawberry crosses.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("jansen.strawberry")

      .. rubric:: Format
         :name: format

      A data frame with 144 observations on the following 5 variables.

      ``male``
         male parent

      ``female``
         female parent

      ``block``
         block

      ``category``
         disease damage, ``C1`` < ``C2`` < ``C3``

      ``count``
         number of plants in each category

      .. rubric:: Details
         :name: details

      In strawberries, red core disease is caused by a fungus,
      *Phytophtora fragariae*. This experiment evaluated different
      populations for damage caused by red core disease.

      There were 3 male strawberry plants and 4 DIFFERENT female
      strawberry plants that were crossed to create 12 populations.
      Note: Jansen labeled the male parents 1,2,3 and the female parents
      1,2,3,4. To reduce confusion, this data labels the female parents
      5,6,7,8.

      The experiment had four blocks with 12 plots each (one for each
      population). Plots usually had 10 plants, but some plots only had
      9 plants. Each plant was assessed for damage from fungus and rated
      as belonging to category C1, C2, or C3 (increasing damage).

      Used with permission of Hans Jansen.

      .. rubric:: Source
         :name: source

      J. Jansen, 1990. On the statistical analysis of ordinal data when
      extravariation is present. Applied Statistics, 39, 75-84, Table 1.
      https://doi.org/10.2307/2347813

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

         data(jansen.strawberry)
         dat <- jansen.strawberry
         dat <- transform(dat, category=ordered(category, levels=c('C1','C2','C3')))

         dtab <- xtabs(count ~ male + female + category, data=dat)
         ftable(dtab)

         mosaicplot(dtab,
                    color=c("lemonchiffon1","lightsalmon1","indianred"),
                    main="jansen.strawberry disease ratings",
                    xlab="Male parent", ylab="Female parent")

         libs(MASS,vcd)
         # Friendly suggests a minimal model is [MF][C]
         # m1 <- loglm( ~ 1*2 + 3, dtab) # Fails, only with devtools
         # mosaic(m1)


         ## End(Not run)
