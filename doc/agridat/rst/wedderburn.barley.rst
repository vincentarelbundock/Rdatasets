.. container::

   .. container::

      ================= ===============
      wedderburn.barley R Documentation
      ================= ===============

      .. rubric:: Multi-environment trial of barley, percent of leaves
         affected by leaf blotch
         :name: multi-environment-trial-of-barley-percent-of-leaves-affected-by-leaf-blotch

      .. rubric:: Description
         :name: description

      Percent of leaf area affected by leaf blotch on 10 varieties of
      barley at 9 sites.

      .. rubric:: Format
         :name: format

      A data frame with 90 observations on the following 3 variables.

      ``y``
         Percent of leaf area affected, 0-100.

      ``site``
         Site factor, 9 levels

      ``gen``
         Variety factor, 10 levels

      .. rubric:: Details
         :name: details

      Incidence of *Rhynchosporium secalis* (leaf blotch) on the leaves
      of 10 varieties of barley grown at 9 sites in 1965.

      .. rubric:: Source
         :name: source

      Wedderburn, R W M (1974). Quasilikelihood functions, generalized
      linear models and the Gauss-Newton method. *Biometrika*, 61,
      439–47. https://doi.org/10.2307/2334725

      Wedderburn credits the original data to an unpublished thesis by
      J. F. Jenkyn.

      .. rubric:: References
         :name: references

      McCullagh, P and Nelder, J A (1989). *Generalized Linear Models*
      (2nd ed).

      R. B. Millar. *Maximum Likelihood Estimation and Inference: With
      Examples in R, SAS and ADMB*. Chapter 8.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

         data(wedderburn.barley)
         dat <- wedderburn.barley
         dat$y <- dat$y/100

         libs(lattice)
         dotplot(gen~y|site, dat, main="wedderburn.barley")

         # Use the variance function mu(1-mu).  McCullagh page 330
         # Note, 'binomial' gives same results as 'quasibinomial', but also a warning
         m1 <- glm(y ~ gen + site, data=dat, family="quasibinomial")
         summary(m1)

         # Same shape (different scale) as McCullagh fig 9.1a
         plot(m1, which=1, main="wedderburn.barley")

         # Compare data and model
         dat$pbin <- predict(m1, type="response")
         dotplot(gen~pbin+y|site, dat, main="wedderburn.barley: observed/predicted")


         # Wedderburn suggested variance function: mu^2 * (1-mu)^2
         # Millar shows how to do this explicitly.
         wedder <- list(varfun=function(mu) (mu*(1-mu))^2,
                      validmu=function(mu) all(mu>0) && all(mu<1),
                      dev.resids=function(y,mu,wt) wt * ((y-mu)^2)/(mu*(1-mu))^2,
                      initialize=expression({
                        n <- rep.int(1, nobs)
                        mustart <- pmax(0.001, pmin(0.99,y)) }),
                      name="(mu(1-mu))^2")
         m2 <- glm(y ~ gen + site, data=dat, family=quasi(link="logit", variance=wedder))
         #plot(m2)

         # Alternatively, the 'gnm' package has the 'wedderburn' family.
         libs(gnm)
         m3 <- glm(y ~ gen + site, data=dat, family="wedderburn")
         summary(m3)
         # Similar to McCullagh fig 9.2
           plot(m3, which=1)
           title("wedderburn.barley")

         # Compare data and model
         dat$pwed <- predict(m3, type="response")
         dotplot(gen~pwed+y|site, dat, main="wedderburn.barley")

         ## End(Not run)
