.. container::

   .. container::

      ============== ===============
      hayman.tobacco R Documentation
      ============== ===============

      .. rubric:: Diallel cross of Aztec tobacco
         :name: diallel-cross-of-aztec-tobacco

      .. rubric:: Description
         :name: description

      Diallel cross of Aztec tobacco in 2 reps

      .. rubric:: Format
         :name: format

      ``year``
         year

      ``block``
         block factor, 2 levels

      ``male``
         male parent, 8 levels

      ``female``
         female parent

      ``day``
         mean flowering time (days)

      .. rubric:: Details
         :name: details

      Data was collected in 1951 (Hayman 1954a) and 1952 (Hayman 1954b).

      In each year there were 8 varieties of Aztec tobacco, *Nicotiana
      rustica L.*.

      Each cross/self was represented by 10 progeny, in two plots of 5
      plants each. The data are the mean flowering time per plot.

      Note, the 1951 data as published in Hayman (1954a) Table 5 contain
      "10 times the mean flowering time". The data here have been
      divided by 10 so as to be comparable with the 1952 data.

      Hayman (1954b) says "Table 2 lists...three characters from a
      diallel cross of Nicotiana rustica varieties which was repeated
      for three years." This seems to indicate that the varieties are
      the same in 1951 and 1952. Calculating the GCA effects separately
      for 1951 and 1952 and then comparing these estimates shows that
      they are highly correlated.

      .. rubric:: Source
         :name: source

      B. I. Hayman (1954a). The Analysis of Variance of Diallel Tables.
      Biometrics, 10, 235-244. Table 5, page 241.
      https://doi.org/10.2307/3001877

      Hayman, B.I. (1954b). The theory and analysis of diallel crosses.
      *Genetics*, 39, 789-809. Table 3, page 805.
      https://www.genetics.org/content/39/6/789.full.pdf

      .. rubric:: References
         :name: references

      # For 1951 data

      Mohring, Melchinger, Piepho. (2011). REML-Based Diallel Analysis.
      Crop Science, 51, 470-478.

      # For 1952 data

      C. Clark Cockerham and B. S. Weir. (1977). Quadratic analyses of
      reciprocal crosses. Biometrics, 33, 187-203. Appendix C.

      Andrea Onofri, Niccolo Terzaroli, Luigi Russi (2020). Linear
      models for diallel crosses: A review with R functions. Theoretical
      and Applied Genetics. https://doi.org/10.1007/s00122-020-03716-8

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           
           # 1951 data.  Fit the first REML model of Mohring 2011 Supplement.  
           data(hayman.tobacco)
           dat1 <- subset(hayman.tobacco, year==1951)

           
           # Hayman's model
           # dat1 <- subset(hayman.tobacco, year==1951)
           # libs(lmDiallel)
           # m1  <- lm.diallel(day ~ male+female, Block=block, data=dat1, fct="HAYMAN2")
           # anova(m1) # Similar to table 7 of Hayman 1954a
           ## Response: day
           ##                Df  Sum Sq Mean Sq F value    Pr(>F)    
           ## Block           1    1.42    1.42  0.3416   0.56100    
           ## Mean Dom. Dev.  1  307.97  307.97 73.8840 3.259e-12 ***
           ## GCA             7 2777.17  396.74 95.1805 < 2.2e-16 ***
           ## Dom. Dev.       7  341.53   48.79 11.7050 1.957e-09 ***
           ## SCA            20  372.89   18.64  4.4729 2.560e-06 ***
           ## RGCA            7   67.39    9.63  2.3097   0.03671 *  
           ## RSCA           21  123.73    5.89  1.4135   0.14668    
           ## Residuals      63  262.60                              

           
           # Griffing's model
           # https://www.statforbiology.com/2021/stat_met_diallel_griffing/
           # dat1 <- subset(hayman.tobacco, year==1951)
           # libs(lmDiallel)
           # contrasts(dat1$block) <- "contr.sum"
           # dmod1 and dmod2 are the same model with different syntax
           # dmod1 <- lm(day ~ block + GCA(male, female) + tSCA(male, female) +
           #               REC(male, female) , data = dat1)
           # dmod2 <- lm.diallel(day ~ male + female, Block=block, 
           #                     data = dat1, fct = "GRIFFING1")
           # anova(dmod1)
           # anova(dmod2)
           ## Response: day
           ##             Df  Sum Sq Mean Sq F value    Pr(>F)    
           ## Block        1    1.42    1.42  0.3416   0.56100    
           ## GCA          7 2777.17  396.74 95.1805 < 2.2e-16 ***
           ## SCA         28 1022.38   36.51  8.7599 6.656e-13 ***
           ## Reciprocals 28  191.12    6.83  1.6375   0.05369 .  
           ## Residuals   63  262.60                              

           
           # Make a factor 'comb' in which G1xG2 is the same cross as G2xG1
           dat1 <- transform(dat1,
                             comb =
                               ifelse(as.character(male) < as.character(female),
                                      paste0(male,female), paste0(female,male)))
           # 'dr' is the direction of the cross, 0 for self
           dat1$dr <- 1
           dat1 <- transform(dat1,
                             dr = ifelse(as.character(male) < as.character(female), -1, dr))
           dat1 <- transform(dat1,
                             dr = ifelse(as.character(male) == as.character(female), 0, dr))
           
           # asreml r version 3 & 4 code for Mixed Griffing.
           # Mohring Table 2, column 2 (after dividing by 10^2) gives variances:
           # GCA 12.77, SCA 11.09, RSCA .65, Error 4.23.
           # Mohring Supplement ASREML code part1 model is:
           # y ~ mu r !r mother and(father) combination combination.dr
           # Note that the levels of 'male' and 'female' are the same, so the
           # and(female) term tells asreml to use the same levels (or, equivalently,
           # fix the correlation of the male/female levels to be 1.
           # The block effect is minimial and therefore ignored.
           ## libs(asreml, lucid)
           ## m1 <- asreml(day~1, data=dat1,
           ##              random = ~ male + and(female) + comb + comb:dr)
           ## vc(m1)
           ##           effect component std.error z.ratio      con
           ##    male!male.var   12.77      7.502      1.7 Positive
           ##    comb!comb.var   11.11      3.353      3.3 Positive
           ## comb:dr!comb.var    0.6603    0.4926     1.3 Positive
           ##       R!variance    4.185     0.7449     5.6 Positive
           
           # ----------
           
           # 1952 data. Reproduce table 3 and figure 2 of Hayman 1954b.
           
           dat2 <- subset(hayman.tobacco, year==1952)
           
           # Does flowering date follow a gamma distn?  Maybe.
           libs(lattice)
           densityplot(~day, data=dat2, main="hayman.tobacco",
                       xlab="flowering date")
           
           
           d1 <- subset(dat2, block=='B1')
           d2 <- subset(dat2, block=='B2')
           
           libs(reshape2)
           m1 <- acast(d1, male~female, value.var='day')
           m2 <- acast(d2, male~female, value.var='day')
           
           mn1 <- (m1+t(m1))/2
           mn2 <- (m2+t(m2))/2
           
           # Variance and covariance of 'rth' offspring
           vr1 <- apply(mn1, 1, var)
           vr2 <- apply(mn2, 1, var)
           wr1 <- apply(mn1, 1, cov, diag(mn1))
           wr2 <- apply(mn2, 1, cov, diag(mn2))
           # Remove row names to prevent a mild warning
           rownames(mn1) <- rownames(mn2) <- NULL
           summ <- data.frame(rbind(mn1,mn2))
           summ$block <- rep(c('B1','B2'), each=8)
           summ$vr <- c(vr1,vr2)
           summ$wr <- c(wr1,wr2)
           summ$male <- rep(1:8,2) # Vr and Wr match Hayman table 3
           
           with(summ, plot(wr~vr, type='n', main="hayman.tobacco"))
           with(summ, text(vr, wr, male)) # Match Hayman figure 2
           abline(0,1,col="gray")
           # Hayman notes that 1 and 3 do not lie along the line,
           # so modifies them and re-analyzes.


         ## End(Not run)
