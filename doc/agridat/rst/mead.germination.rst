.. container::

   .. container::

      ================ ===============
      mead.germination R Documentation
      ================ ===============

      .. rubric:: Seed germination with different
         temperatures/concentrations
         :name: seed-germination-with-different-temperaturesconcentrations

      .. rubric:: Description
         :name: description

      Seed germination with different temperatures/concentrations

      .. rubric:: Format
         :name: format

      A data frame with 64 observations on the following 5 variables.

      ``temp``
         temperature regimen

      ``rep``
         replication factor (not blocking)

      ``conc``
         chemical concentration

      ``germ``
         number of seeds germinating

      ``seeds``
         number of seeds tested = 50

      .. rubric:: Details
         :name: details

      The rep factor is NOT a blocking factor.

      Used with permission of Roger Mead, Robert Curnow, and Anne
      Hasted.

      .. rubric:: Source
         :name: source

      Roger Mead, Robert N Curnow, Anne M Hasted. 2002. Statistical
      Methods in Agriculture and Experimental Biology, 3rd ed. Chapman
      and Hall. Page 350-351.

      .. rubric:: References
         :name: references

      Schabenberger, O. and Pierce, F.J., 2002. Contemporary statistical
      models for the plant and soil sciences. CRC.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

         data(mead.germination)
         dat <- mead.germination
         dat <- transform(dat, concf=factor(conc))
         libs(lattice)
         xyplot(germ~log(conc+.01)|temp, dat, layout=c(4,1),
                main="mead.germination", ylab="number of seeds germinating")

         m1 <- glm(cbind(germ, seeds-germ) ~ 1, dat, family=binomial)
         m2 <- glm(cbind(germ, seeds-germ) ~ temp, dat, family=binomial)
         m3 <- glm(cbind(germ, seeds-germ) ~ concf, dat, family=binomial)
         m4 <- glm(cbind(germ, seeds-germ) ~ temp + concf, dat, family=binomial)
         m5 <- glm(cbind(germ, seeds-germ) ~ temp * concf, dat, family=binomial)
         anova(m1,m2,m3,m4,m5)
         ##   Resid. Df Resid. Dev Df Deviance
         ## 1        63    1193.80
         ## 2        60     430.11  3   763.69
         ## 3        60     980.10  0  -549.98
         ## 4        57     148.11  3   831.99
         ## 5        48      55.64  9    92.46

         # Show logit and fitted values.  T2 has highest germination
         subset(cbind(dat, predict(m5), fitted(m5)), rep=="R1")


         ## End(Not run)
