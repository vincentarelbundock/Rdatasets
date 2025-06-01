.. container::

   .. container::

      =================== ===============
      carlson.germination R Documentation
      =================== ===============

      .. rubric:: Germination of alfalfa seeds at various salt
         concentrations
         :name: germination-of-alfalfa-seeds-at-various-salt-concentrations

      .. rubric:: Description
         :name: description

      Germination of alfalfa seeds at various salt concentrations

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("carlson.germination")

      .. rubric:: Format
         :name: format

      A data frame with 120 observations on the following 3 variables.

      ``gen``
         genotype factor, 15 levels

      ``germ``
         germination percent, 0-100

      ``nacl``
         salt concentration percent, 0-2

      .. rubric:: Details
         :name: details

      Data are means averaged over 5, 10, 15, and 20 day counts.
      Germination is expressed as a percent of the no-salt control to
      account for differences in germination among the cultivars.

      .. rubric:: Source
         :name: source

      Carlson, JR and Ditterline, RL and Martin, JM and Sands, DC and
      Lund, RE. (1983). Alfalfa Seed Germination in Antibiotic Agar
      Containing NaCl. *Crop science*, 23, 882-885.
      https://doi.org/10.2135/cropsci1983.0011183X002300050016x

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(carlson.germination)
         dat <- carlson.germination
         dat$germ <- dat$germ/100 # Convert to percent

         # Separate response curve for each genotype.
         # Really, we should use a glmm with random int/slope for each genotype
         m1 <- glm(germ~ 0 + gen*nacl, data=dat, family=quasibinomial)

         # Plot data and fitted model
         libs(latticeExtra)
         newd <- data.frame(expand.grid(gen=levels(dat$gen), nacl=seq(0,2,length=100)))
         newd$pred <- predict(m1, newd, type="response")
         xyplot(germ~nacl|gen, dat, as.table=TRUE, main="carlson.germination",
                xlab="Percent NaCl", ylab="Fraction germinated") +
         xyplot(pred~nacl|gen, newd, type='l', grid=list(h=1,v=0))


         # Calculate LD50 values.  Note, Carlson et al used quadratics, not glm.
         # MASS::dose.p cannot handle multiple slopes, so do a separate fit for
         # each genotype.  Results are vaguely similar to Carlson table 5.
         ## libs(MASS)
         ## for(ii in unique(dat$gen)){
         ##   cat("\n", ii, "\n")
         ##   mm <- glm(germ ~ 1 + nacl, data=dat, subset=gen==ii, family=quasibinomial(link="probit"))
         ##   print(dose.p(mm))
         ## }
         ##              Dose         SE
         ## Anchor    1.445728  0.05750418
         ## Apollo    1.305804  0.04951644
         ## Baker     1.444153  0.07653989
         ## Drylander 1.351201  0.03111795
         ## Grimm     1.395735  0.04206377


         ## End(Not run)
