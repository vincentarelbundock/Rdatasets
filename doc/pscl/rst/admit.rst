.. container::

   .. container::

      ===== ===============
      admit R Documentation
      ===== ===============

      .. rubric:: Applications to a Political Science PhD Program
         :name: applications-to-a-political-science-phd-program

      .. rubric:: Description
         :name: description

      Ordinal ratings (faculty evaluations) of applicants to a Political
      Science PhD Program.

      .. rubric:: Usage
         :name: usage

      ::

         data(admit)

      .. rubric:: Format
         :name: format

      A data frame with 106 observations on the following 6 variables.

      ``score``
         an ordered factor with levels ``1`` < ``2`` < ``3`` < ``4`` <
         ``5``

      ``gre.quant``
         applicant's score on the quantitative section of the GRE; the
         maximum score is 800

      ``gre.verbal``
         applicant's score on the verbal section of the GRE; the maximum
         score is 800

      ``ap``
         1 if the applicant indicated an interest in American politics;
         0 otherwise

      ``pt``
         1 if the applicant indicated an interest in Political Theory; 0
         otherwise

      ``female``
         1 for female applicants; 0 otherwise

      .. rubric:: References
         :name: references

      Jackman, Simon. 2004. "What Do We Learn From Graduate Admissions
      Committees?: A Multiple-Rater, Latent Variable Model, with
      Incomplete Discrete and Continuous Indicators." *Political
      Analysis*. 12(4):400-424.

      .. rubric:: Examples
         :name: examples

      ::

         data(admit)
         summary(admit)
         ## ordered probit model
         op1 <- MASS::polr(score ~ gre.quant + gre.verbal + ap + pt + female,
                     Hess=TRUE,
                     data=admit,
                     method="probit")
         summary(op1)
         hitmiss(op1)
         logLik(op1)
         pR2(op1)   
