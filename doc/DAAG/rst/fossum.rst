.. container::

   ====== ===============
   possum R Documentation
   ====== ===============

   .. rubric:: Possum Measurements
      :name: possum

   .. rubric:: Description
      :name: description

   The ``possum`` data frame consists of nine morphometric measurements
   on each of 104 mountain brushtail possums, trapped at seven
   Australian sites from Southern Victoria to central Queensland. See
   ``possumsites`` for further details. The ``fossum`` data frame is the
   subset of ``possum`` that has measurements for the 43 females.

   .. rubric:: Usage
      :name: usage

   ::

        data(possum)
        data(fossum)
        

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   case
      observation number

   site
      one of seven locations where possums were trapped. The sites were,
      in order,Cambarville, Bellbird, Whian Whian, Byrangery, Conondale,
      Allyn River and Bulburin

   Pop
      a factor which classifies the sites as ``Vic`` Victoria, ``other``
      New South Wales or Queensland

   sex
      a factor with levels ``f`` female, ``m`` male

   age
      age

   hdlngth
      head length

   skullw
      skull width

   totlngth
      total length

   taill
      tail length

   footlgth
      foot length

   earconch
      ear conch length

   eye
      distance from medial canthus to lateral canthus of right eye

   chest
      chest girth (in cm)

   belly
      belly girth (in cm)

   .. rubric:: Source
      :name: source

   Lindenmayer, D. B., Viggers, K. L., Cunningham, R. B., and Donnelly,
   C. F. 1995. Morphological variation among columns of the mountain
   brushtail possum, Trichosurus caninus Ogilby (Phalangeridae:
   Marsupiala). Australian Journal of Zoology 43: 449-458.

   .. rubric:: Examples
      :name: examples

   ::

      boxplot(earconch~sex, data=possum)
      pause()

      sex <- as.integer(possum$sex)
      oldpar <- par(oma=c(2,4,5,4))
      pairs(possum[, c(9:11)], pch=c(0,2:7), col=c("red","blue"),
        labels=c("tail\nlength","foot\nlength","ear conch\nlength"))
      chh <- par()$cxy[2]; xleg <- 0.05; yleg <- 1.04
      oldpar <- par(xpd=TRUE)
      legend(xleg, yleg, c("Cambarville", "Bellbird", "Whian Whian  ",
        "Byrangery", "Conondale  ","Allyn River", "Bulburin"), pch=c(0,2:7),
        x.intersp=1, y.intersp=0.75, cex=0.8, xjust=0, bty="n", ncol=4)
      text(x=0.2, y=yleg - 2.25*chh, "female", col="red", cex=0.8, bty="n")
      text(x=0.75, y=yleg - 2.25*chh, "male", col="blue", cex=0.8, bty="n")
      par(oldpar)
      pause()

      sapply(possum[,6:14], function(x)max(x,na.rm=TRUE)/min(x,na.rm=TRUE))
      pause()

      here <- na.omit(possum$footlgth)
      possum.prc <- princomp(possum[here, 6:14])
      pause()

      plot(possum.prc$scores[,1] ~ possum.prc$scores[,2],
        col=c("red","blue")[as.numeric(possum$sex[here])],
        pch=c(0,2:7)[possum$site[here]], xlab = "PC1", ylab = "PC2")
        # NB: We have abbreviated the axis titles
      chh <- par()$cxy[2]; xleg <- -15; yleg <- 20.5
      oldpar <- par(xpd=TRUE)
      legend(xleg, yleg, c("Cambarville", "Bellbird", "Whian Whian  ",
        "Byrangery", "Conondale  ","Allyn River", "Bulburin"), pch=c(0,2:7),
        x.intersp=1, y.intersp=0.75, cex=0.8, xjust=0, bty="n", ncol=4)
      text(x=-9, y=yleg - 2.25*chh, "female", col="red", cex=0.8, bty="n")
      summary(possum.prc, loadings=TRUE, digits=2)
      par(oldpar)
      pause()

      require(MASS)
      here <- !is.na(possum$footlgth)
      possum.lda <- lda(site ~ hdlngth+skullw+totlngth+ taill+footlgth+
        earconch+eye+chest+belly, data=possum, subset=here)
      options(digits=4)
      possum.lda$svd   # Examine the singular values
      plot(possum.lda, dimen=3)
        # Scatterplot matrix - scores on 1st 3 canonical variates (Figure 11.4)
      possum.lda
      pause()
      boxplot(fossum$totlngth)
