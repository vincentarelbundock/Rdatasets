.. container::

   .. container::

      ======== ===============
      salinity R Documentation
      ======== ===============

      .. rubric:: Salinity Data
         :name: salinity-data

      .. rubric:: Description
         :name: description

      This is a data set consisting of measurements of water salinity
      (i.e., its salt concentration) and river discharge taken in North
      Carolina's Pamlico Sound, recording some bi-weekly averages in
      March, April, and May from 1972 to 1977. This dataset was listed
      by Ruppert and Carroll (1980). In Carrol and Ruppert (1985) the
      physical background of the data is described. They indicated that
      observations 5 and 16 correspond to periods of very heavy
      discharge and showed that the discrepant observation 5 was masked
      by observations 3 and 16, i.e., only after deletion of these
      observations it was possible to identify the influential
      observation 5.

      This data set is a prime example of the *masking effect*.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(salinity, package="robustbase")

      .. rubric:: Format
         :name: format

      A data frame with 28 observations on the following 4 variables (in
      parentheses are the names used in the 1980 reference).

      ``X1``:
         Lagged Salinity (‘SALLAG’)

      ``X2``:
         Trend (‘TREND’)

      ``X3``:
         Discharge (‘H2OFLOW’)

      ``Y``:
         Salinity (‘SALINITY’)

      .. rubric:: Note
         :name: note

      The `boot <https://CRAN.R-project.org/package=boot>`__ package
      contains another version of this salinity data set, also
      attributed to Ruppert and Carroll (1980), but with two clear
      transcription errors, see the examples.

      .. rubric:: Source
         :name: source

      P. J. Rousseeuw and A. M. Leroy (1987) *Robust Regression and
      Outlier Detection*; Wiley, p.82, table 5.

      Ruppert, D. and Carroll, R.J. (1980) Trimmed least squares
      estimation in the linear model. *JASA* **75**, 828–838; table 3,
      p.835.

      Carroll, R.J. and Ruppert, D. (1985) Transformations in
      regression: A robust analysis. *Technometrics* **27**, 1–12

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(salinity)
         summary(lm.sali  <-        lm(Y ~ . , data = salinity))
         summary(rlm.sali <- MASS::rlm(Y ~ . , data = salinity))
         summary(lts.sali <-    ltsReg(Y ~ . , data = salinity))

         salinity.x <- data.matrix(salinity[, 1:3])
         c_sal <- covMcd(salinity.x)
         plot(c_sal, "tolEllipsePlot")

         ## Connection with boot package's version :
         if(requireNamespace("boot")) { ## 'always'
          print( head(boot.sal <- boot::salinity        ) )
          print( head(robb.sal <- salinity [, c(4, 1:3)]) ) # difference: has one digit more
          ## Otherwise the same ?
          dimnames(robb.sal) <- dimnames(boot.sal)
          ## apart from the 4th column, they are "identical":
          stopifnot( all.equal(boot.sal[, -4], robb.sal[, -4], tol = 1e-15) )

          ## But the discharge ('X3', 'dis' or 'H2OFLOW')  __differs__ in two places:
          plot(cbind(robustbase = robb.sal[,4], boot = boot.sal[,4]))
          abline(0,1, lwd=3, col=adjustcolor("red", 1/4))
          D.sal <- robb.sal[,4] - boot.sal[,4]
          stem(robb.sal[,4] - boot.sal[,4])
          which(abs(D.sal) > 0.01) ## 2 8
          ## *two* typos (=> difference ~= 1) in the version of 'boot': obs. 2 & 8 !!!
          cbind(robb = robb.sal[,4], boot = boot.sal[,4], D.sal)
         }# boot
