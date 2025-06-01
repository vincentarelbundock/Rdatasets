.. container::

   .. container::

      ================== ===============
      lehner.soybeanmold R Documentation
      ================== ===============

      .. rubric:: Yield, white mold, and sclerotia for soybeans in
         Brazil
         :name: yield-white-mold-and-sclerotia-for-soybeans-in-brazil

      .. rubric:: Description
         :name: description

      Yield, white mold, and sclerotia for soybeans in Brazil

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("lehner.soybeanmold")

      .. rubric:: Format
         :name: format

      A data frame with 382 observations on the following 9 variables.

      ``study``
         study number

      ``year``
         year of harvest

      ``loc``
         location name

      ``elev``
         elevation

      ``region``
         region

      ``trt``
         treatment number

      ``yield``
         crop yield, kg/ha

      ``mold``
         white mold incidence, percent

      ``sclerotia``
         weight of sclerotia g/ha

      .. rubric:: Details
         :name: details

      Data are the mean of 4 reps.

      Original source (Portuguese)
      https://ainfo.cnptia.embrapa.br/digital/bitstream/item/101371/1/Ensaios-cooperativos-de-controle-quimico-de-mofo-branco-na-cultura-da-soja-safras-2009-a-2012.pdf

      Data included here via GPL3 license.

      .. rubric:: Source
         :name: source

      Lehner, M. S., Pethybridge, S. J., Meyer, M. C., & Del Ponte, E.
      M. (2016). Meta-analytic modelling of the incidence-yield and
      incidence-sclerotial production relationships in soybean white
      mould epidemics. *Plant Pathology*. doi:10.1111/ppa.12590

      .. rubric:: References
         :name: references

      Full commented code and analysis
      https://emdelponte.github.io/paper-white-mold-meta-analysis/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(lehner.soybeanmold)
         dat <- lehner.soybeanmold

         if(0){
           op <- par(mfrow=c(2,2))
           hist(dat$mold, main="White mold incidence")
           hist(dat$yield, main="Yield")
           hist(dat$sclerotia, main="Sclerotia weight")
           par(op)
         }

         libs(lattice)
         xyplot(yield ~ mold|study, dat, type=c('p','r'),
                main="lehner.soybeanmold")
         # xyplot(sclerotia ~ mold|study, dat, type=c('p','r'))

         # meta-analysis. Could use metafor package to construct the forest plot,
         # but latticeExtra is easy; ggplot is slow/clumsy
         libs(latticeExtra, metafor)
         # calculate correlation & confidence for each loc
         cors <- split(dat, dat$study)
         cors <- sapply(cors,
                        FUN=function(X){
                          res <- cor.test(X$yield, X$mold)
                          c(res$estimate, res$parameter[1],
                            conf.low=res$conf.int[1], conf.high=res$conf.int[2])
                        })
         cors <- as.data.frame(t(as.matrix(cors)))
         cors$study <- rownames(cors)
         # Fisher Z transform
         cors <- transform(cors, ri = cor)
         cors <- transform(cors, ni = df + 2)
         cors <- transform(cors,
                           yi = 1/2 * log((1 + ri)/(1 - ri)),
                           vi = 1/(ni - 3))
         # Overall correlation across studies
         overall <- rma.uni(yi, vi, method="ML", data=cors) # metafor package
         # back transform
         overall <- predict(overall, transf=transf.ztor)

         # weight and size for forest plot
         wi    <- 1/sqrt(cors$vi)
         size  <- 0.5 + 3.0 * (wi - min(wi))/(max(wi) - min(wi))

         # now the forest plot
         # must use latticeExtra::layer in case ggplot2 is also loaded
         segplot(factor(study) ~ conf.low+conf.high, data=cors,
                 draw.bands=FALSE, level=size, centers=ri, cex=size,
                 col.regions=colorRampPalette(c("gray85", "dodgerblue4")),
                 main="White mold vs. soybean yield",
                 xlab=paste("Study correlation, confidence, and study weight (blues)\n",
                            "Overall (black)"),
                 ylab="Study ID") +
           latticeExtra::layer(panel.abline(v=overall$pred, lwd=2)) +
           latticeExtra::layer(panel.abline(v=c(overall$cr.lb, overall$cr.ub), lty=2, col="gray"))


         # Meta-analyses are typically used when the original data is not available.
         # Since the original data is available, a mixed model is probably better.
         libs(lme4)
         m1 <- lmer(yield ~ mold # overall slope
                    + (1+mold |study), # random intercept & slope per study
                    data=dat)
         summary(m1)


         ## End(Not run)
