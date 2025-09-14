.. container::

   .. container::

      ============ ===============
      LossAversion R Documentation
      ============ ===============

      .. rubric:: (No) Myopic Loss Aversion in Adolescents
         :name: no-myopic-loss-aversion-in-adolescents

      .. rubric:: Description
         :name: description

      Data from a behavioral economics experiment assessing the extent
      of myopic loss aversion among adolescents (mostly aged 11 to 19).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("LossAversion", package = "betareg")

      .. rubric:: Format
         :name: format

      A data frame containing 570 observations on 7 variables.

      invest
         numeric. Average proportion of tokens invested across all 9
         rounds.

      gender
         factor. Gender of the player (or team of players).

      male
         factor. Was (at least one of) the player(s) male (in the team)?

      age
         numeric. Age in years (averaged for teams).

      treatment
         factor. Type of treatment: long vs. short.

      grade
         factor. School grades: 6-8 (11-14 years) vs. 10-12 (15-18
         years).

      arrangement
         factor. Is the player a single player or team of two?

      .. rubric:: Details
         :name: details

      Myopic loss aversion is a phenomenon in behavioral economics,
      where individuals do not behave economically rationally when
      making short-term decisions under uncertainty. Example: In
      lotteries with positive expected payouts investments are lower
      than the maximum possible (loss aversion). This effect is enhanced
      for short-term investments (myopia or short-sightedness).

      The data in ``LossAversion`` were collected by Matthias Sutter and
      Daniela Glätzle-Rützler (Universität Innsbruck) in an experiment
      with high-school students in Tyrol, Austria (Schwaz and
      Innsbruck). The students could invest X tokens (0-100) in each of
      9 rounds in a lottery. The payouts were 100 + 2.5 \* X tokens with
      probability 1/3 and 100 - X tokens with probability 2/3. Thus, the
      expected payouts were 100 + 1/6 \* X tokens. Depending on the
      treatment in the experiment, the investments could either be
      modified in each round (treatment: "short") or only in round 1, 4,
      7 (treatment "long"). Decisions were either made alone or in teams
      of two. The tokens were converted to monetary payouts using a
      conversion of EUR 0.5 per 100 tokens for lower grades (Unterstufe,
      6-8) or EUR 1.0 per 100 tokens for upper grades (Oberstufe,
      10-12).

      From the myopic loss aversion literature (on adults) one would
      expect that the investments of the players (either single players
      or teams of two) would depend on all factors: Investments should
      be

      -  lower in the short treatment (which would indicate myopia),

      -  higher for teams (indicating a reduction in loss aversion),

      -  higher for (teams with) male players,

      -  increase with age/grade.

      See Glätzle-Rützler et al. (2015) for more details and references
      to the literature. In their original analysis, the investments are
      analyzes using a panel structure (i.e., 9 separate investments for
      each team). Here, the data are averaged across rounds for each
      player, leading to qualitatively similar results. The full data
      along with replication materials are available in the Harvard
      Dataverse.

      Kosmidis and Zeileis (2025) revisit the data using
      extended-support beta mixture (XBX) regression, which can
      simultaneously capture both the probability of rational behavior
      and the mean amount of loss aversion.

      .. rubric:: Source
         :name: source

      Glätzle-Rützler D, Sutter M, Zeileis A (2020). Replication Data
      for: No Myopic Loss Aversion in Adolescents? - An Experimental
      Note. *Harvard Dataverse*, UNF:6:6hVtbHavJAFYfL7dDl7jqA==.
      `doi:10.7910/DVN/IHFZAK <https://doi.org/10.7910/DVN/IHFZAK>`__

      .. rubric:: References
         :name: references

      Glätzle-Rützler D, Sutter M, Zeileis A (2015). No Myopic Loss
      Aversion in Adolescents? – An Experimental Note. *Journal of
      Economic Behavior & Organization*, **111**, 169–176.
      `doi:10.1016/j.jebo.2014.12.021 <https://doi.org/10.1016/j.jebo.2014.12.021>`__

      Kosmidis I, Zeileis A (2025). Extended-Support Beta Regression for
      [0, 1] Responses. *Journal of the Royal Statistical Society C*,
      forthcoming.
      `doi:10.1093/jrsssc/qlaf039 <https://doi.org/10.1093/jrsssc/qlaf039>`__

      .. rubric:: See Also
         :name: see-also

      ``betareg``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         options(digits = 4)

         ## data and add ad-hoc scaling (a la Smithson & Verkuilen)
         data("LossAversion", package = "betareg")
         LossAversion <- transform(LossAversion,
           invests = (invest * (nrow(LossAversion) - 1) + 0.5)/nrow(LossAversion))


         ## models: normal (with constant variance), beta, extended-support beta mixture
         la_n <- lm(invest ~ grade * (arrangement + age) + male, data = LossAversion)
         summary(la_n)


         la_b <- betareg(invests ~ grade * (arrangement + age) + male | arrangement + male + grade,
           data = LossAversion)
         summary(la_b)

         la_xbx <- betareg(invest ~ grade * (arrangement + age) + male | arrangement + male + grade,
           data = LossAversion)
         summary(la_xbx)

         ## coefficients in XBX are typically somewhat shrunken compared to beta
         cbind(XBX = coef(la_xbx), Beta = c(coef(la_b), NA))


         ## predictions on subset: (at least one) male players, higher grades, around age 16
         la <- subset(LossAversion, male == "yes" & grade == "10-12" & age >= 15 &  age <= 17)
         la_nd <- data.frame(arrangement = c("single", "team"), male = "yes", age = 16, grade = "10-12")

         ## empirical vs fitted E(Y)
         la_nd$mean_emp <- aggregate(invest ~ arrangement, data = la, FUN = mean)$invest 
         la_nd$mean_n <- predict(la_n, la_nd)
         la_nd$mean_b <- predict(la_b, la_nd)
         la_nd$mean_xbx <- predict(la_xbx, la_nd)
         la_nd

         ## visualization: all means rather similar
         la_mod <- c("Emp", "N", "B", "XBX")
         la_col <- unname(palette.colors())[c(1, 2, 4, 4)]
         la_lty <- c(1, 5, 5, 1)
         matplot(la_nd[, paste0("mean_", tolower(la_mod))], type = "l",
           col = la_col, lty = la_lty, lwd = 2, ylab = "E(Y)", main = "E(Y)", xaxt = "n")
         axis(1, at = 1:2, labels = la_nd$arrangement)
         legend("topleft", la_mod, col = la_col, lty = la_lty, lwd = 2, bty = "n")


         ## empirical vs. fitted P(Y > 0.95)
         la_nd$prob_emp <- aggregate(invest >= 0.95 ~ arrangement, data = la, FUN = mean)$invest
         la_nd$prob_n <- pnorm(0.95, mean = la_nd$mean_n, sd = summary(la_n)$sigma, lower.tail = FALSE)
         la_nd$prob_b <- 1 - predict(la_b, la_nd, type = "probability", at = 0.95)
         la_nd$prob_xbx <- 1 - predict(la_xbx, la_nd, type = "probability", at = 0.95)
         la_nd[, -(5:8)]

         ## visualization: only XBX works well
         matplot(la_nd[, paste0("prob_", tolower(la_mod))], type = "l",
           col = la_col, lty = la_lty, lwd = 2, ylab = "P(Y > 0.95)", main = "P(Y > 0.95)", xaxt = "n")
         axis(1, at = 1:2, labels = la_nd$arrangement)
         legend("topleft", la_mod, col = la_col, lty = la_lty, lwd = 2, bty = "n")
