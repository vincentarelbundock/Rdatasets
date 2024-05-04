.. container::

   .. container::

      ========== ===============
      Parade2005 R Documentation
      ========== ===============

      .. rubric:: Parade Magazine 2005 Earnings Data
         :name: parade-magazine-2005-earnings-data

      .. rubric:: Description
         :name: description

      US earnings data, as provided in an annual survey of Parade (here
      from 2005), the Sunday newspaper magazine supplementing the Sunday
      (or Weekend) edition of many daily newspapers in the USA.

      .. rubric:: Usage
         :name: usage

      ::

         data("Parade2005")

      .. rubric:: Format
         :name: format

      A data frame containing 130 observations on 5 variables.

      earnings
         Annual personal earnings.

      age
         Age in years.

      gender
         Factor indicating gender.

      state
         Factor indicating state.

      celebrity
         Factor. Is the individual a celebrity?

      .. rubric:: Details
         :name: details

      In addition to the four variables provided by Parade (earnings,
      age, gender, and state), a fifth variable was introduced, the
      “celebrity factor” (here actors, athletes, TV personalities,
      politicians, and CEOs are considered celebrities). The data are
      quite far from a simple random sample, there being substantial
      oversampling of celebrities.

      .. rubric:: Source
         :name: source

      Parade (2005). What People Earn. Issue March 13, 2005.

      .. rubric:: Examples
         :name: examples

      ::

         ## data
         data("Parade2005")
         attach(Parade2005)
         summary(Parade2005)

         ## bivariate visualizations
         plot(density(log(earnings), bw = "SJ"), type = "l", main = "log(earnings)")
         rug(log(earnings))
         plot(log(earnings) ~ gender, main = "log(earnings)")

         ## celebrity vs. non-celebrity earnings
         noncel <- subset(Parade2005, celebrity == "no")
         cel <- subset(Parade2005, celebrity == "yes")

         library("ineq")
         plot(Lc(noncel$earnings), main = "log(earnings)")
         lines(Lc(cel$earnings), lty = 2)
         lines(Lc(earnings), lty = 3)

         Gini(noncel$earnings)
         Gini(cel$earnings)
         Gini(earnings)

         ## detach data
         detach(Parade2005)
