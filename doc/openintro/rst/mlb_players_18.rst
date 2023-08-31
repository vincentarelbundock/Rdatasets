.. container::

   ============== ===============
   mlb_players_18 R Documentation
   ============== ===============

   .. rubric:: Batter Statistics for 2018 Major League Baseball (MLB)
      Season
      :name: mlb_players_18

   .. rubric:: Description
      :name: description

   Batter statistics for 2018 Major League Baseball season.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      mlb_players_18

   .. rubric:: Format
      :name: format

   A data frame with 1270 observations on the following 19 variables.

   name
      Player name

   team
      Team abbreviation

   position
      Position abbreviation: ``1B`` = first base, ``2B`` = second base,
      ``3B`` = third base, ``C`` = catcher, ``CF`` = center field
      (outfield), ``DH`` = designated hitter, ``LF`` = left field
      (outfield), ``P`` = pitcher, ``RF`` = right field (outfield),
      ``SS`` = shortstop.

   games
      Number of games played.

   AB
      At bats.

   R
      Runs.

   H
      Hits.

   doubles
      Doubles.

   triples
      Triples.

   HR
      Home runs.

   RBI
      Runs batted in.

   walks
      Walks.

   strike_outs
      Strike outs.

   stolen_bases
      Stolen bases.

   caught_stealing_base
      Number of times caught stealing a base.

   AVG
      Batting average.

   OBP
      On-base percentage.

   SLG
      Slugging percentage.

   OPS
      On-base percentage plus slugging percentage.

   .. rubric:: Source
      :name: source

   https://www.mlb.com/stats

   .. rubric:: See Also
      :name: see-also

   ``mlbbat10``, ``mlb``

   .. rubric:: Examples
      :name: examples

   .. code:: R

      d <- subset(mlb_players_18, !position %in% c("P", "DH") & AB >= 100)
      dim(d)

      # _____ Per Position, No Further Grouping _____ #
      plot(d$OBP ~ as.factor(d$position))
      model <- lm(OBP ~ as.factor(position), d)
      summary(model)
      anova(model)

      # _____ Simplified Analysis, Fewer Positions _____ #
      pos <- list(
        c("LF", "CF", "RF"),
        c("1B", "2B", "3B", "SS"),
        "C"
      )
      POS <- c("OF", "IF", "C")
      table(d$position)

      # _____ On-Base Percentage Across Positions _____ #
      out <- c()
      gp <- c()
      for (i in 1:length(pos)) {
        these <- which(d$position %in% pos[[i]])
        out <- c(out, d$OBP[these])
        gp <- c(gp, rep(POS[i], length(these)))
      }
      plot(out ~ as.factor(gp))
      summary(lm(out ~ as.factor(gp)))
      anova(lm(out ~ as.factor(gp)))
