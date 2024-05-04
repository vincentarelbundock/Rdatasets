.. container::

   .. container::

      ========= ===============
      GSOEP9402 R Documentation
      ========= ===============

      .. rubric:: German Socio-Economic Panel 1994–2002
         :name: german-socio-economic-panel-19942002

      .. rubric:: Description
         :name: description

      Cross-section data for 675 14-year old children born between 1980
      and 1988. The sample is taken from the German Socio-Economic Panel
      (GSOEP) for the years 1994 to 2002 to investigate the determinants
      of secondary school choice.

      .. rubric:: Usage
         :name: usage

      ::

         data("GSOEP9402")

      .. rubric:: Format
         :name: format

      A data frame containing 675 observations on 12 variables.

      school
         factor. Child's secondary school level.

      birthyear
         Year of child's birth.

      gender
         factor indicating child's gender.

      kids
         Total number of kids living in household.

      parity
         Birth order.

      income
         Household income.

      size
         Household size

      state
         factor indicating German federal state.

      marital
         factor indicating mother's marital status.

      meducation
         Mother's educational level in years.

      memployment
         factor indicating mother's employment level: full-time,
         part-time, or not working.

      year
         Year of GSOEP wave.

      .. rubric:: Details
         :name: details

      This sample from the German Socio-Economic Panel (GSOEP) for the
      years between 1994 and 2002 has been selected by Winkelmann and
      Boes (2009) to investigate the determinants of secondary school
      choice.

      In the German schooling system, students are separated relatively
      early into different school types, depending on their ability as
      perceived by the teachers after four years of primary school.
      After that, around the age of ten, students are placed into one of
      three types of secondary school: ``"Hauptschule"`` (lower
      secondary school), ``"Realschule"`` (middle secondary school), or
      ``"Gymnasium"`` (upper secondary school). Only a degree from the
      latter type of school (called Abitur) provides direct access to
      universities.

      A frequent criticism of this system is that the tracking takes
      place too early, and that it cements inequalities in education
      across generations. Although the secondary school choice is based
      on the teachers' recommendations, it is typically also influenced
      by the parents; both indirectly through their own educational
      level and directly through influence on the teachers.

      .. rubric:: Source
         :name: source

      Online complements to Winkelmann and Boes (2009).

      .. rubric:: References
         :name: references

      Winkelmann, R., and Boes, S. (2009). *Analysis of Microdata*, 2nd
      ed. Berlin and Heidelberg: Springer-Verlag.

      .. rubric:: See Also
         :name: see-also

      ``WinkelmannBoes2009``

      .. rubric:: Examples
         :name: examples

      ::

         ## data
         data("GSOEP9402", package = "AER")

         ## some convenience data transformations
         gsoep <- GSOEP9402
         gsoep$year2 <- factor(gsoep$year)

         ## visualization
         plot(school ~ meducation, data = gsoep, breaks = c(7, 9, 10.5, 11.5, 12.5, 15, 18))


         ## Chapter 5, Table 5.1
         library("nnet")
         gsoep_mnl <- multinom(
           school ~ meducation + memployment + log(income) + log(size) + parity + year2,
           data = gsoep)
         coeftest(gsoep_mnl)[c(1:6, 1:6 + 14),]
          
         ## alternatively
         library("mlogit")
         gsoep_mnl2 <- mlogit(
           school ~ 0 | meducation + memployment + log(income) + log(size) + parity + year2,
           data = gsoep, shape = "wide", reflevel = "Hauptschule")
         coeftest(gsoep_mnl2)[1:12,]

         ## Table 5.2
         library("effects")
         gsoep_eff <- effect("meducation", gsoep_mnl,
           xlevels = list(meducation = sort(unique(gsoep$meducation))))
         gsoep_eff$prob
         plot(gsoep_eff, confint = FALSE)

         ## omit year
         gsoep_mnl1 <- multinom(
           school ~ meducation + memployment + log(income) + log(size) + parity,
           data = gsoep)
         lrtest(gsoep_mnl, gsoep_mnl1)


         ## Chapter 6
         ## Table 6.1
         library("MASS")
         gsoep_pop <- polr(
           school ~ meducation + I(memployment != "none") + log(income) + log(size) + parity + year2,
           data = gsoep, method = "probit", Hess = TRUE)
         gsoep_pol <- polr(
           school ~ meducation + I(memployment != "none") + log(income) + log(size) + parity + year2,
           data = gsoep, Hess = TRUE)

         ## compare polr and multinom via AIC
         gsoep_pol1 <- polr(
           school ~ meducation + memployment + log(income) + log(size) + parity,
           data = gsoep, Hess = TRUE)
         AIC(gsoep_pol1, gsoep_mnl)

         ## effects
         eff_pol1 <- allEffects(gsoep_pol1)
         plot(eff_pol1, ask = FALSE, confint = FALSE)


         ## More examples can be found in:
         ## help("WinkelmannBoes2009")
