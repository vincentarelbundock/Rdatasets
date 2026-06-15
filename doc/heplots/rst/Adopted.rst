======= ===============
Adopted R Documentation
======= ===============

Adopted Children
----------------

Description
~~~~~~~~~~~

Data are a subset from an observational, longitudinal, study on adopted
children. Is child's intelligence related to intelligence of the
biological mother and the intelligence of the adoptive mother?

Format
~~~~~~

A data frame with 62 observations on the following 6 variables.

``AMED``
   adoptive mother's years of education (proxy for her IQ)

``BMIQ``
   biological mother's score on IQ test

``Age2IQ``
   IQ of child at age 2

``Age4IQ``
   IQ of child at age 4

``Age8IQ``
   IQ of child at age 8

``Age13IQ``
   IQ of child at age 13

Details
~~~~~~~

The child's intelligence was measured at age 2, 4, 8, and 13 for this
sample. How does intelligence change over time, and how are these
changes related to intelligence of the birth and adoptive mother?

Source
~~~~~~

Ramsey, F.L. and Schafer, D.W. (2002). *The Statistical Sleuth: A Course
in Methods of Data Analysis (2nd ed)*, Duxbury.

This data set is identical to ``ex1605`` in the ``Sleuth2`` package.

References
~~~~~~~~~~

Friendly, M. (2010). HE Plots for Repeated Measures Designs. *Journal of
Statistical Software*, 37(4), 1-40.
`doi:10.18637/jss.v037.i04 <https://doi.org/10.18637/jss.v037.i04>`__.

Skodak, M. and Skeels, H.M. (1949). A Final Follow-up Study of One
Hundred Adopted Children, *Journal of Genetic Psychology* **75**:
85–125.

See Also
~~~~~~~~

``ex1605``

Examples
~~~~~~~~

.. code:: R


   # Treat as multivariate regression problem
   Adopted.mod <- lm(cbind(Age2IQ, Age4IQ, Age8IQ, Age13IQ) ~ AMED + BMIQ, 
                     data=Adopted)
   Adopted.mod


   require(car)
   # test overall multivariate regression
   print(linearHypothesis(Adopted.mod, c("AMED","BMIQ")), SSP=FALSE)

   # show separate linear regressions
   op <- par(mfcol=c(2,4), mar=c(4,4,1,1)+.1)
   for (i in 3:6) {
       dataEllipse(as.matrix(Adopted[,c(1,i)]),
                   col="black", levels=0.68, ylim=c(70,140))
       abline(lm(Adopted[,i] ~ Adopted[,1]), col="red", lwd=2)

       dataEllipse(as.matrix(Adopted[,c(2,i)]),
                   col="black", levels=0.68, ylim=c(70,140))
       abline(lm(Adopted[,i] ~ Adopted[,2]), col="red", lwd=2)
       abline(a=0,b=1, lty=1, col="blue")
   }
   par(op)

   # between-S (MMReg) plots
   heplot(Adopted.mod, hypotheses=list("Reg"=c("AMED", "BMIQ")),
       main="IQ scores of adopted children: MMReg")

   pairs(Adopted.mod, hypotheses=list("Reg"=c("AMED", "BMIQ")))

   if(requireNamespace("rgl")){
   heplot3d(Adopted.mod, hypotheses=list("Reg"=c("AMED", "BMIQ")),
       col = c("red", "blue", "black", "gray"), wire=FALSE)
   }

   # Treat IQ at different ages as a repeated measure factor
   # within-S models & plots
   Age <- data.frame(Age=ordered(c(2,4,8,13)))
   car::Anova(Adopted.mod, idata=Age, idesign=~Age, test="Roy")

   # within-S plots
   heplot(Adopted.mod, idata=Age, idesign=~Age, iterm="Age",
       cex=1.25, cex.lab=1.4, fill=c(FALSE, TRUE),
       hypotheses=list("Reg"=c("AMED", "BMIQ"))
       )
