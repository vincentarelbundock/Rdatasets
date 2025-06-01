.. container::

   .. container::

      ============ ===============
      silva.cotton R Documentation
      ============ ===============

      .. rubric:: Number of cotton bolls for different levels of
         defoliation.
         :name: number-of-cotton-bolls-for-different-levels-of-defoliation.

      .. rubric:: Description
         :name: description

      Number of cotton bolls, nodes, plant height, and plant weight for
      different levels of defoliation.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("silva.cotton")

      .. rubric:: Format
         :name: format

      A data frame with 125 observations on the following 4 variables.

      ``stage``
         growth stage

      ``defoliation``
         level of defoliation, 0, 25, 50, 75, 100

      ``plant``
         plant number

      ``rep``
         replicate

      ``reproductive``
         number of reproductive structures

      ``bolls``
         number of bolls

      ``height``
         plant height

      ``nodes``
         number of nodes

      ``weight``
         weight of bolls

      .. rubric:: Details
         :name: details

      Data come from a greenhouse experiment with cotton plants.
      Completely randomized design with 5 replicates, 2 plants per pot.

      Artificial defoliation was used at levels 0, 25, 50, 75, 100
      percent.

      Data was collected per plant at five growth stages: vegetative,
      flower-bud, blossom, fig and cotton boll.

      The primary response variable is the number of bolls. The data are
      counts, underdispersed, correlated.

      Zeviana et al. used this data to compared Poisson, Gamma-count,
      and quasi-Poisson GLMs.

      Bonat & Zeviani used this data to fit multivariate correlated
      generalized linear model.

      Used with permission of Walmes Zeviani.

      Electronic version from:
      https://www.leg.ufpr.br/~walmes/data/desfolha_algodao.txt

      .. rubric:: Source
         :name: source

      Silva, Anderson Miguel da; Degrande, Paulo Eduardo; Suekane,
      Renato; Fernandes, Marcos Gino; & Zeviani, Walmes Marques. (2012).
      Impacto de diferentes niveis de desfolha artificial nos estadios
      fenologicos do algodoeiro. Revista de Ciencias Agrarias, 35(1),
      163-172.
      https://www.scielo.mec.pt/scielo.php?script=sci_arttext&pid=S0871-018X2012000100016&lng=pt&tlng=pt.

      .. rubric:: References
         :name: references

      Zeviani, W. M., Ribeiro, P. J., Bonat, W. H., Shimakura, S. E.,
      Muniz, J. A. (2014). The Gamma-count distribution in the analysis
      of experimental underdispersed data. *Journal of Applied
      Statistics*, 41(12), 1-11.
      https://doi.org/10.1080/02664763.2014.922168 Online supplement:
      https://leg.ufpr.br/doku.php/publications:papercompanions:zeviani-jas2014

      Regression Models for Count Data.
      https://cursos.leg.ufpr.br/rmcd/applications.html#cotton-bolls

      Wagner Hugo Bonat & Walmes Marques Zeviani (2017). Multivariate
      Covariance Generalized Linear Models for the Analysis of
      Experimental Data. Short-cource at: 62nd RBras and 17th SEAGRO
      meeting/ https://github.com/leg-ufpr/mcglm4aed

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
         library(agridat)
         data(silva.cotton)
         dat <- silva.cotton
         dat$stage <- ordered(dat$stage,
                              levels=c("vegetative","flowerbud","blossom","boll","bollopen"))
         # make stage a numeric factors
         dat <- transform(dat,
                          stage = factor(stage, levels = unique(stage),
                                         labels = 1:nlevels(stage)))

         # sum data across plants, 1 pot = 2 plants
         dat <- aggregate(cbind(weight,height,bolls,nodes) ~
                             stage+defoliation+rep, data=dat, FUN=sum)

           # all traits, plant-level data
           libs(latticeExtra)
           foo <- xyplot(weight + height + bolls + nodes ~ defoliation | stage,
                         data = dat, outer=TRUE,
                         xlab="Defoliation percent", ylab="", main="silva.cotton",
                         as.table = TRUE, jitter.x = TRUE, type = c("p", "smooth"),
                         scales = list(y = "free"))
           combineLimits(useOuterStrips(foo))


         if(0){

           # poisson glm with quadratic effect for defoliation
           m0 <- glm(bolls ~ 1, data=dat, family=poisson)
           m1 <- glm(bolls ~ defoliation+I(defoliation^2), data=dat, family=poisson)
           m2 <- glm(bolls ~ stage:defoliation+I(defoliation^2), data=dat, family=poisson)
           m3 <- glm(bolls ~ stage:(defoliation+I(defoliation^2)), data=dat, family=poisson)
           par(mfrow=c(2,2)); plot(m3); layout(1)
           anova(m0, m1, m2, m3, test="Chisq")

           # predicted values
           preddat <- expand.grid(stage=levels(dat$stage),
                                  defoliation=seq(0,100,length=20))
           preddat$pred <- predict(m3, newdata=preddat, type="response")

           # Zeviani figure 3
           libs(latticeExtra)
           xyplot(bolls ~ jitter(defoliation)|stage, dat,
                  as.table=TRUE,
                  main="silva.cotton - observed and model predictions",
                  xlab="Defoliation percent",
                  ylab="Number of bolls") +
             xyplot(pred ~ defoliation|stage, data=preddat,
                    as.table=TRUE,
                    type='smooth', col="black", lwd=2)
         }

         if(0){
           # ----- mcglm -----
           dat <- transform(dat, deffac=factor(defoliation))

           libs(car)

           vars <- c("weight","height","bolls","nodes")
           splom(~dat[vars], data=dat,
                 groups = stage,
                 auto.key = list(title = "Growth stage",
                                 cex.title = 1,
                                 columns = 3),
                 par.settings = list(superpose.symbol = list(pch = 4)),
                 as.matrix = TRUE)

           splom(~dat[vars], data=dat,
                 groups = defoliation,
                 auto.key = list(title = "Artificial defoliation",
                                 cex.title = 1,
                                 columns = 3),
                 as.matrix = TRUE)

           # multivariate linear model.
           m1 <- lm(cbind(weight, height, bolls, nodes) ~ stage * deffac,
                    data = dat)
           anova(m1)

           summary.aov(m1)

           r0 <- residuals(m1)

           # Checking the models assumptions on the residuals.
           car::scatterplotMatrix(r0,
                                  gap = 0, smooth = FALSE, reg.line = FALSE, ellipse = TRUE,
                                  diagonal = "qqplot")

           }

         ## End(Not run)
