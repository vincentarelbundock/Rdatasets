.. container::

   .. container::

      ============ ===============
      lu.stability R Documentation
      ============ ===============

      .. rubric:: Multi-environment trial of maize, to illustrate
         stability statistics
         :name: multi-environment-trial-of-maize-to-illustrate-stability-statistics

      .. rubric:: Description
         :name: description

      Multi-environment trial to illustrate stability statistics

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("lu.stability")

      .. rubric:: Format
         :name: format

      A data frame with 120 observations on the following 4 variables.

      ``yield``
         yield

      ``gen``
         genotype factor, 5 levels

      ``env``
         environment factor, 6 levels

      ``block``
         block factor, 4 levels

      .. rubric:: Details
         :name: details

      Data for 5 maize genotypes in 2 years x 3 sites = 6 environments.

      .. rubric:: Source
         :name: source

      H.Y. Lu and C. T. Tien. (1993) Studies on nonparametric method of
      phenotypic stability: II. Selection for stability of agroeconomic
      concept. J. Agric. Assoc. China 164:1-17.

      .. rubric:: References
         :name: references

      Hsiu Ying Lu. 1995. PC-SAS Program for Estimating Huehn's
      Nonparametric Stability Statistics. Agron J. 87:888-891.

      Kae-Kang Hwu and Li-yu D Liu. (2013) Stability Analysis Using
      Multiple Environment Trials Data by Linear Regression. (In
      Chinese) Crop, Environment & Bioinformatics 10:131-142.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(lu.stability)
           dat <- lu.stability

           # GxE means. Match Lu 1995 table 1
           libs(reshape2)
           datm <- acast(dat, gen~env, fun=mean, value.var='yield')
           round(datm, 2)
           # Gen/Env means. Match Lu 1995 table 3
           apply(datm, 1, mean)
           apply(datm, 2, mean)
           
           
           # Traditional ANOVA. Match Hwu table 2
           # F value for gen,env
           m1 = aov(yield~env+gen+Error(block:env+env:gen), data=dat)
           summary(m1)   
           # F value for gen:env, block:env
           m2 <- aov(yield ~ gen + env + gen:env + block:env, data=dat) 
           summary(m2)

           # Finlay Wilkinson regression coefficients
           # First, calculate env mean, merge in
           libs(dplyr)
           dat2 <- group_by(dat, env)
           dat2 <- mutate(dat2, locmn=mean(yield))
           m4 <- lm(yield ~ gen -1 + gen:locmn, data=dat2)
           coef(m4) # Match Hwu table 4

         # Table 6: Shukla's heterogeneity test
           dat2$ge = paste0(dat2$gen, dat2$env) # Create a separate ge interaction term  
           m6 <- lm(yield ~ gen + env + ge + ge:locmn, data=dat2)
           m6b <- lm( yield ~ gen + env + ge + locmn, data=dat2)
           anova(m6, m6b) # Non-significant difference

           # Table 7 - Shukla stability
           # First, environment means
           emn <- group_by(dat2, env)
           emn <- summarize(emn, ymn=mean(yield))
           # Regress GxE terms on envt means
           getab = (model.tables(m2,"effects")$tables)$'gen:env'
           getab
           for (ll in 1:nrow(getab)){
             m7l <- lm(getab[ll, ] ~ emn$ymn)
             cat("\n\n*************** Gen ",ll," ***************\n") 
             cat("Regression coefficient: ",round(coefficients(m7l)[2],5),"\n") 
             print(anova(m7l)) 
           } # Match Hwu table 7.


         ## End(Not run) # dontrun
