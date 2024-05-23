.. container::

   .. container::

      ======== ===============
      MockJury R Documentation
      ======== ===============

      .. rubric:: Effects Of Physical Attractiveness Upon Mock Jury
         Decisions
         :name: effects-of-physical-attractiveness-upon-mock-jury-decisions

      .. rubric:: Description
         :name: description

      Male participants were shown a picture of one of three young
      women. Pilot work had indicated that the one woman was beautiful,
      another of average physical attractiveness, and the third
      unattractive. Participants rated the woman they saw on each of
      twelve attributes. These measures were used to check on the
      manipulation by the photo.

      .. rubric:: Format
         :name: format

      A data frame with 114 observations on the following 17 variables.

      ``Attr``
         Attractiveness of the photo, a factor with levels ``Beautiful``
         ``Average`` ``Unattractive``

      ``Crime``
         Type of crime, a factor with levels ``Burglary`` (theft of
         items from victim's room) ``Swindle`` (conned a male victim)

      ``Years``
         length of sentence given the defendant by the mock juror
         subject

      ``Serious``
         a rating of how serious the subject thought the defendant's
         crime was

      ``exciting``
         rating of the photo for 'exciting'

      ``calm``
         rating of the photo for 'calm'

      ``independent``
         rating of the photo for 'independent'

      ``sincere``
         rating of the photo for 'sincere'

      ``warm``
         rating of the photo for 'warm'

      ``phyattr``
         rating of the photo for 'physical attractiveness'

      ``sociable``
         rating of the photo for 'exciting'

      ``kind``
         rating of the photo for 'kind'

      ``intelligent``
         rating of the photo for 'intelligent'

      ``strong``
         rating of the photo for 'strong'

      ``sophisticated``
         rating of the photo for 'sophisticated'

      ``happy``
         rating of the photo for 'happy'

      ``ownPA``
         self-rating of the subject for 'physical attractiveness'

      .. rubric:: Details
         :name: details

      Then the participants were told that the person in the photo had
      committed a Crime, and asked to rate the seriousness of the crime
      and recommend a prison sentence, in Years.

      Does attractiveness of the "defendant" influence the sentence or
      perceived seriousness of the crime? Does attractiveness interact
      with the nature of the crime?

      .. rubric:: Source
         :name: source

      Originally obtained from Dr. Wuensch's StatData page,
      https://core.ecu.edu/wuenschk/StatData/PLASTER.dat

      .. rubric:: References
         :name: references

      Data from the thesis by Plaster, M. E. (1989). *Inmates as mock
      jurors: The effects of physical attractiveness upon juridic
      decisions.* M.A. thesis, Greenville, NC: East Carolina University.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # manipulation check:  test ratings of the photos classified by Attractiveness
         jury.mod1 <- lm( cbind(phyattr, happy, independent, sophisticated) ~ Attr, data=MockJury)
         car::Anova(jury.mod1, test="Roy")

         heplot(jury.mod1, main="HE plot for manipulation check")
         pairs(jury.mod1)

         if (require(candisc)) {
             jury.can <- candisc(jury.mod1)
             jury.can
             heplot(jury.can, main="Canonical HE plot")
         }

         # influence of Attr of photo and nature of crime on Serious and Years
         jury.mod2 <- lm( cbind(Serious, Years) ~ Attr * Crime, data=MockJury)
         car::Anova(jury.mod2, test="Roy")
         heplot(jury.mod2)

         # stepdown test (ANCOVA), controlling for Serious
         jury.mod3 <- lm( Years ~ Serious + Attr * Crime, data=MockJury)
         car::Anova(jury.mod3)

         # need to consider heterogeneous slopes?
         jury.mod4 <- lm( Years ~ Serious * Attr * Crime, data=MockJury)
         car::Anova(jury.mod3, jury.mod4)
