.. container::

   ======== ===============
   FootHead R Documentation
   ======== ===============

   .. rubric:: Head measurements of football players
      :name: FootHead

   .. rubric:: Description
      :name: description

   Data collected as part of a preliminary study examining the relation
   between football helmet design and neck injuries. There are 30
   subjects in each of three groups: High school football players,
   college players and non-football players.

   .. rubric:: Usage
      :name: usage

   ::

      data(FootHead)

   .. rubric:: Format
      :name: format

   A data frame with 90 observations on the following 7 variables.

   ``group``
      a factor with levels ``High school`` ``College`` ``Non-football``

   ``width``
      a numeric vector: head width at widest dimension

   ``circum``
      a numeric vector: head circumference

   ``front.back``
      a numeric vector: front to back distance at eye level

   ``eye.top``
      a numeric vector: eye to top of head

   ``ear.top``
      a numeric vector:ear to top of head

   ``jaw``
      a numeric vector: jaw width

   .. rubric:: Source
      :name: source

   Rencher, A. C. (1995), *Methods of Multivariate Analysis*, New York:
   Wiley, Table 8.3.

   .. rubric:: Examples
      :name: examples

   ::

      data(FootHead)
      str(FootHead)
      require(car)

      # use Helmert contrasts for group
      contrasts(FootHead$group) <- contr.helmert
      contrasts(FootHead$group)

      foot.mod <- lm(cbind(width, circum,front.back,eye.top,ear.top,jaw) ~ group, 
                     data=FootHead)
      Manova(foot.mod)

      # show the HE plot for the first two variables
      heplot(foot.mod, main="HE plot for width and circumference", fill=TRUE,
          col=c("red", "blue"))

      # show it with tests of Helmert contrasts
      heplot(foot.mod, hypotheses=list("group.1"="group1","group.2"="group2"),
          col=c("red", "blue", "green3", "green3" ),
          main="HE plot with orthogonal Helmert contrasts")

      # show all pairwise HE plots
      pairs(foot.mod)

      # ... with tests of Helmert contrasts
      pairs(foot.mod, hypotheses=list("group.1"="group1","group.2"="group2"),
          col=c("red", "blue", "green3", "green3"), hyp.labels=FALSE)

      # see that the hypothesis for groups really is 2D
      if(requireNamespace("rgl")){
      heplot3d(foot.mod, variables=c(1,2,6),
          hypotheses=list("group.1"="group1","group.2"="group2"),
          col=c("red", "blue", "green3", "green3" ), wire=FALSE)
      }
