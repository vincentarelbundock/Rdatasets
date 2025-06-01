.. container::

   .. container::

      ===================== ===============
      digby.jointregression R Documentation
      ===================== ===============

      .. rubric:: Multi-environment trial of wheat
         :name: multi-environment-trial-of-wheat

      .. rubric:: Description
         :name: description

      Yield of 10 spring wheat varieties for 17 locations in 1976.

      .. rubric:: Format
         :name: format

      A data frame with 134 observations on the following 3 variables.

      ``gen``
         genotype, 10 levels

      ``env``
         environment, 17 levels

      ``yield``
         yield (t/ha)

      .. rubric:: Details
         :name: details

      Yield of 10 spring wheat varieties for 17 locations in 1976.

      Used to illustrate modified joint regression.

      .. rubric:: Source
         :name: source

      Digby, P.G.N. (1979). Modified joint regression analysis for
      incomplete variety x environment data. *Journal of Agricultural
      Science*, 93, 81-86. https://doi.org/10.1017/S0021859600086159

      .. rubric:: References
         :name: references

      Hans-Pieter Piepho, 1997. Analyzing Genotype-Environment Data by
      Mixed-Models with Multiplicative Terms. *Biometrics*, 53, 761-766.
      https://doi.org/10.2307/2533976

      RJOINT procedure in GenStat.
      https://www.vsni.co.uk/software/genstat/htmlhelp/server/RJOINT.htm

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(digby.jointregression)
           dat <- digby.jointregression
           
           # Simple gen means, ignoring unbalanced data.
           # Matches Digby table 2, Unadjusted Mean
           round(tapply(dat$yield, dat$gen, mean),3)
           
           # Two-way model. Matches Digby table 2, Fitting Constants
           m00 <- lm(yield ~ 0 + gen + env, dat)
           round(coef(m00)[1:10]-2.756078+3.272,3) # Adjust intercept
           # genG01 genG02 genG03 genG04 genG05 genG06 genG07 genG08 genG09 genG10 
           #  3.272  3.268  4.051  3.724  3.641  3.195  3.232  3.268  3.749  3.179 
           
           n.gen <- nlevels(dat$gen)
           n.env <- nlevels(dat$env)
           
           # Estimate theta (env eff)
           m0 <- lm(yield ~ -1 + env + gen, dat)
           thetas <- coef(m0)[1:n.env]
           thetas <- thetas-mean(thetas) # center env effects
           # Add env effects to the data
           dat$theta <- thetas[match(paste("env",dat$env,sep=""), names(thetas))]
           
           # Initialize beta (gen slopes) at 1
           betas <- rep(1, n.gen)
           
           done <- FALSE
           while(!done){
             
             betas0 <- betas
             
             # M1: Fix thetas (env effects), estimate beta (gen slope)
             m1 <- lm(yield ~ -1 + gen + gen:theta, data=dat)
             betas <- coef(m1)[-c(1:n.gen)]
             dat$beta <- betas[match(paste("gen",dat$gen,":theta",sep=""), names(betas))]
             # print(betas)

             # M2: Fix betas (gen slopes), estimate theta (env slope)
             m2 <- lm(yield ~ env:beta + gen -1, data=dat)
             thetas <- coef(m2)[-c(1:n.gen)]
             thetas[is.na(thetas)] <- 0  # Change last coefficient from NA to 0
             dat$theta <- thetas[match(paste("env",dat$env,":beta",sep=""), names(thetas))]
             # print(thetas)

             # Check convergence
             chg <- sum(((betas-betas0)/betas0)^2)
             cat("Relative change in betas",chg,"\n")
             if(chg < .0001) done <- TRUE
             
           }

           libs(lattice)
           xyplot(yield ~ theta|gen, data=dat, xlab="theta (environment effect)",
                  main="digby.jointregression - stability plot")

           # Dibgy Table 2, modified joint regression
           
           # Genotype sensitivities (slopes)
           round(betas,3) # Match Digby table 2, Modified joint regression sensitivity
           # genG01 genG02 genG03 genG04 genG05 genG06 genG07 genG08 genG09 genG10
           #  0.953  0.739  1.082  1.024  1.142  0.877 1.089  0.914  1.196  0.947

           # Env effects. Match Digby table 3, Modified joint reg
           round(thetas,3)+1.164-.515 # Adjust intercept to match
           # envE01 envE02 envE03 envE04 envE05 envE06 envE07 envE08 envE09 envE10
           # -0.515 -0.578 -0.990 -1.186  1.811  1.696 -1.096  0.046  0.057  0.825
           # envE11 envE12 envE13 envE14 envE15 envE16 envE17
           # -0.576  1.568 -0.779 -0.692  0.836 -1.080  0.649

           # Using 'gnm' gives similar results.
           # libs(gnm)
           # m3 <- gnm(yield ~ gen + Mult(gen,env), data=dat) # slopes negated
           # round(coef(m3)[11:20],3)

           # Using 'mumm' gives similar results, though gen is random and the
           # coeffecients are shrunk toward 0 a bit.
           if(require("mumm", quietly=TRUE)) {
             libs(mumm)
             m1 <- mumm(yield ~ -1 + env + mp(gen, env), dat)
             round(1 + ranef(m1)$`mp gen:env`,2)
           }
           

         ## End(Not run)
