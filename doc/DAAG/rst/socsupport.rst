.. container::

   ========== ===============
   socsupport R Documentation
   ========== ===============

   .. rubric:: Social Support Data
      :name: social-support-data

   .. rubric:: Description
      :name: description

   Data from a survey on social and other kinds of support.

   .. rubric:: Usage
      :name: usage

   ::

      socsupport

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   gender
      a factor with levels ``female``, ``male``

   age
      age, in years, with levels ``18-20``, ``21-24``, ``25-30``,
      ``31-40``,\ ``40+``

   country
      a factor with levels ``australia``, ``other``

   marital
      a factor with levels ``married``, ``other``, ``single``

   livewith
      a factor with levels ``alone``, ``friends``, ``other``,
      ``parents``, ``partner``, ``residences``

   employment
      a factor with levels ``employed fulltime``,
      ``employed part-time``, ``govt assistance``, ``other``,
      ``parental support``

   firstyr
      a factor with levels ``first year``, ``other``

   enrolment
      a factor with levels ``full-time``, ``part-time``, ``<NA>``

   emotional
      summary of 5 questions on emotional support availability

   emotionalsat
      summary of 5 questions on emotional support satisfaction

   tangible
      summary of 4 questions on availability of tangible support

   tangiblesat
      summary of 4 questions on satisfaction with tangible support

   affect
      summary of 3 questions on availability of affectionate support
      sources

   affectsat
      summary of 3 questions on satisfaction with affectionate support
      sources

   psi
      summary of 3 questions on availability of positive social
      interaction

   psisat
      summary of 3 questions on satisfaction with positive social
      interaction

   esupport
      summary of 4 questions on extent of emotional support sources

   psupport
      summary of 4 questions on extent of practical support sources

   supsources
      summary of 4 questions on extent of social support sources
      (formerly, socsupport)

   BDI
      Score on the Beck depression index (summary of 21 questions)

   .. rubric:: Source
      :name: source

   Melissa Manning, Psychology, Australian National University

   .. rubric:: Examples
      :name: examples

   ::

      attach(socsupport)

      not.na <- apply(socsupport[,9:19], 1, function(x)!any(is.na(x)))
      ss.pr1 <- princomp(as.matrix(socsupport[not.na, 9:19]), cor=TRUE)  
      pairs(ss.pr1$scores[,1:3])
      sort(-ss.pr1$scores[,1])        # Minus the largest value appears first
      pause()

      not.na[36] <- FALSE
      ss.pr <- princomp(as.matrix(socsupport[not.na, 9:19]), cor=TRUE)  
      summary(ss.pr)          # Examine the contribution of the components
      pause()

      # We now regress BDI on the first six principal components:
      ss.lm <- lm(BDI[not.na] ~ ss.pr$scores[, 1:6], data=socsupport)
      summary(ss.lm)$coef
      pause()

      ss.pr$loadings[,1]
      plot(BDI[not.na] ~  ss.pr$scores[ ,1], col=as.numeric(gender), 
      pch=as.numeric(gender),  xlab ="1st principal component", ylab="BDI")
      topleft <- par()$usr[c(1,4)]
      legend(topleft[1], topleft[2], col=1:2, pch=1:2, legend=levels(gender))
