.. container::

   .. container::

      =========== ===============
      azprocedure R Documentation
      =========== ===============

      .. rubric:: azprocedure
         :name: azprocedure

      .. rubric:: Description
         :name: description

      Data come from the 1991 Arizona cardiovascular patient files. A
      subset of the fields was selected to model the differential length
      of stay for patients entering the hospital to receive one of two
      standard cardiovascular procedures: CABG and PTCA. CABG is the
      standard acronym for Coronary Artery Bypass Graft, where the flow
      of blood in a diseased or blocked coronary artery or vein has been
      grafted to bypass the diseased sections. PTCA, or Percutaneous
      Transluminal Coronary Angioplasty, is a method of placing a
      balloon in a blocked coronary artery to open it to blood flow. It
      is a much less severe method of treatment for those having
      coronary blockage, with a corresponding reduction in risk.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(azprocedure)

      .. rubric:: Format
         :name: format

      A data frame with 3589 observations on the following 6 variables.

      ``los``
         length of hospital stay

      ``procedure``
         1=CABG;0=PTCA

      ``sex``
         1=Male; 0=female

      ``admit``
         1=Urgent/Emerg; 0=elective (type of admission)

      ``age75``
         1= Age>75; 0=Age<=75

      ``hospital``
         encrypted facility code (string)

      .. rubric:: Details
         :name: details

      azprocedure is saved as a data frame. Count models use los as
      response variable. 0 counts are structurally excluded

      .. rubric:: Source
         :name: source

      1991 Arizona Medpar data, cardiovascular patient files, National
      Health Economics & Research Co.

      .. rubric:: References
         :name: references

      Hilbe, Joseph M (2014), Modeling Count Data, Cambridge University
      Press Hilbe, Joseph M (2007, 2011), Negative Binomial Regression,
      Cambridge University Press Hilbe, Joseph M (2009), Logistic
      Regression Models, Chapman & Hall/CRC

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(MASS)
         library(msme)

         data(azprocedure)

         glmazp <- glm(los ~ procedure + sex + admit, family=poisson, data=azprocedure)
         summary(glmazp)
         exp(coef(glmazp))

         nb2 <- nbinomial(los ~ procedure + sex + admit, data=azprocedure)
         summary(nb2)
         exp(coef(nb2))

         glmaznb <- glm.nb(los ~ procedure + sex + admit, data=azprocedure)
         summary(glmaznb)
         exp(coef(glmaznb))
