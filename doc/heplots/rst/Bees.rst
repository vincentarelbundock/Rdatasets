.. container::

   .. container::

      ==== ===============
      Bees R Documentation
      ==== ===============

      .. rubric:: Captive and maltreated bees
         :name: captive-and-maltreated-bees

      .. rubric:: Description
         :name: description

      Pabalan, Davey and Packe (2000) studied the effects of captivity
      and maltreatment on reproductive capabilities of queen and worker
      bees in a complex factorial design.

      .. rubric:: Format
         :name: format

      A data frame with 246 observations on the following 6 variables.

      ``caste``
         a factor with levels ``Queen`` ``Worker``

      ``treat``
         a factor with levels ``""`` ``CAP`` ``MAL``

      ``time``
         an ordered factor: time of treatment

      ``Iz``
         an index of ovarian development

      ``Iy``
         an index of ovarian reabsorption

      ``trtime``
         a factor with levels ``0`` ``CAP05`` ``CAP07`` ``CAP10``
         ``CAP12`` ``CAP15`` ``MAL05`` ``MAL07`` ``MAL10`` ``MAL12``
         ``MAL15``

      .. rubric:: Details
         :name: details

      Bees were placed in a small tube and either held captive (CAP) or
      shaken periodically (MAL) for one of 5, 7.5, 10, 12.5 or 15
      minutes, after which they were sacrificed and two measures:
      ovarian development (``Iz``) and ovarian reabsorption (``Iy``),
      were taken. A single control group was measured with no such
      treatment, i.e., at time 0; there are n=10 per group.

      The design is thus nearly a three-way factorial, with factors
      ``caste`` (Queen, Worker), ``treat`` (CAP, MAL) and ``time``,
      except that there are only 11 combinations of Treatment and Time;
      we call these ``trtime`` below.

      Models for the three-way factorial design, using the formula
      ``cbind(Iz,Iy) ~ caste*treat*time`` ignore the control condition
      at ``time==0``, where ``treat==NA``.

      To handle the additional control group at ``time==0``, while
      separating the effects of Treatment and Time, 10 contrasts can be
      defined for the ``trtime`` factor in the model
      ``cbind(Iz,Iy) ~ caste*trtime`` See ``demo(bees.contrasts)`` for
      details.

      In the ``heplot`` examples below, the default ``size="evidence"``
      displays are too crowded to interpret, because some effects are so
      highly significant. The alternative effect-size scaling,
      ``size="effect"``, makes the relations clearer.

      .. rubric:: Source
         :name: source

      Pabalan, N., Davey, K. G. & Packe, L. (2000). Escalation of
      Aggressive Interactions During Staged Encounters in Halictus
      ligatus Say (Hymenoptera: Halictidae), with a Comparison of Circle
      Tube Behaviors with Other Halictine Species *Journal of Insect
      Behavior*, **13**, 627-650.

      .. rubric:: References
         :name: references

      Friendly, M. (2006). Data Ellipses, HE Plots and Reduced-Rank
      Displays for Multivariate Linear Models: SAS Software and Examples
      *Journal of Statistical Software*, **17**, 1-42.

      .. rubric:: Examples
         :name: examples

      ::

         data(Bees)
         require(car)

         # 3-way factorial, ignoring 0 group
         bees.mod <- lm(cbind(Iz,Iy) ~ caste*treat*time, data=Bees)
         car::Anova(bees.mod)

         op<-palette(c(palette()[1:4],"brown","magenta", "olivedrab","darkgray"))
         heplot(bees.mod, 
             xlab="Iz: Ovarian development", 
             ylab="Iz: Ovarian reabsorption",
                 main="Bees: ~caste*treat*time")

         heplot(bees.mod, size="effect",
             xlab="Iz: Ovarian development", 
             ylab="Iz: Ovarian reabsorption",
             main="Bees: ~caste*treat*time", 
             )

         # two-way design, using trtime
         bees.mod1 <- lm(cbind(Iz,Iy) ~ caste*trtime, data=Bees)
         Anova(bees.mod1)

         # HE plots for this model, with both significance and effect size scaling

         heplot(bees.mod1, 
             xlab="Iz: Ovarian development", 
             ylab="Iz: Ovarian reabsorption",
                 main="Bees: ~caste*trtime")
         heplot(bees.mod1, 
             xlab="Iz: Ovarian development", 
             ylab="Iz: Ovarian reabsorption",
             main="Bees: ~caste*trtime",
             size="effect")
         palette(op)

         # effect plots for separate responses
         if(require(effects)) {
             bees.lm1 <-lm(Iy ~ treat*caste*time, data=Bees)
             bees.lm2 <-lm(Iz ~ treat*caste*time, data=Bees)
             
             bees.eff1 <- allEffects(bees.lm1)
             plot(bees.eff1,multiline=TRUE,ask=FALSE)
             
             bees.eff2 <- allEffects(bees.lm2)
             plot(bees.eff2,multiline=TRUE,ask=FALSE)
         }
