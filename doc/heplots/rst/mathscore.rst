.. container::

   ========= ===============
   mathscore R Documentation
   ========= ===============

   .. rubric:: Math scores for basic math and word problems
      :name: mathscore

   .. rubric:: Description
      :name: description

   Scores for two groups of school children taught by different math
   teachers and tested for both basic math (BM) problems and solving
   word problems (WP).

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("mathscore")

   .. rubric:: Format
      :name: format

   A data frame with 12 observations on the following 3 variables.

   ``group``
      a factor with levels ``1`` ``2``

   ``BM``
      Basic Math score, a numeric vector

   ``WP``
      Word Problems score, a numeric vector

   .. rubric:: Source
      :name: source

   Fictitious data

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data(mathscore)
      str(mathscore)

      math.mod <- lm(cbind(BM, WP) ~ group, data=mathscore)
      car::Anova(math.mod)

      # scatterplot with data ellipses
      car::scatterplot(WP ~ BM | group, data=mathscore, 
          ellipse=list(levels=0.68), smooth=FALSE, pch=c(15,16), 
          legend=list(coords = "topright"))

      # HE plot
      heplot(math.mod, fill=TRUE, 
        cex=2, cex.lab=1.8,
          xlab="Basic math", ylab="Word problems")

