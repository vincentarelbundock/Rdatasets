.. container::

   .. container::

      ============== ===============
      grover.diallel R Documentation
      ============== ===============

      .. rubric:: Diallel 6x6
         :name: diallel-6x6

      .. rubric:: Description
         :name: description

      Diallel 6x6 in 4 blocks.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("grover.diallel")

      .. rubric:: Format
         :name: format

      A data frame with 144 observations on the following 5 variables.

      ``yield``
         yield value

      ``rep``
         a character vector

      ``parent1``
         a character vector

      ``parent2``
         a character vector

      ``cross``
         a character vector

      .. rubric:: Details
         :name: details

      Yield for a 6x6 diallel with 4 reps.

      Note: The mean for the 2x2 cross is slightly different than Grover
      p. 252. There appears to be an unknown error in the one of the 4
      reps in the data on page 250.

      .. rubric:: Source
         :name: source

      Grover, Deepak & Lajpat Rai (2010). Experimental Designing And
      Data Analysis In Agriculture And Biology. Agrotech Publishing
      Academy. Page 85.
      https://archive.org/details/expldesnanddatanalinagblg00023

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           data(grover.diallel)
           dat <- grover.diallel

           anova(aov(yield ~ rep + cross, data=dat))

           # These effects match the GCA and SCA values in Grover table 3, page 253.
           
           libs(lmDiallel)
           m2 <- lm.diallel(yield ~ parent1 + parent2, Block=rep,
                            data=dat, fct="GRIFFING1")
           library(multcomp)
           summary( glht(linfct=diallel.eff(m2), test=adjusted(type="none")) )
           ## Linear Hypotheses:
           ##                Estimate Std. Error t value Pr(>|t|)    
           ## Intercept == 0  93.0774     0.9050 102.851    <0.01 ***
           ## g_P1 == 0        1.4851     1.4309   1.038   1.0000    
           ## g_P2 == 0       -0.9911     1.4309  -0.693   1.0000    
           ## g_P3 == 0        2.2631     1.4309   1.582   0.9748    
           ## g_P4 == 0        5.4247     1.4309   3.791   0.0302 *  
           ## g_P5 == 0       -4.2490     1.4309  -2.969   0.1972    
           ## g_P6 == 0       -3.9328     1.4309  -2.748   0.3008    
           ## ts_P1:P1 == 0  -10.4026     4.5249  -2.299   0.6014    
           ## ts_P1:P2 == 0   -9.7214     3.2629  -2.979   0.1933    
           ## ts_P1:P3 == 0   -0.4581     3.2629  -0.140   1.0000    
           ## ts_P1:P4 == 0   17.0428     3.2629   5.223    <0.01 ***
           ## ts_P1:P5 == 0   25.4765     3.2629   7.808    <0.01 ***
           ## ts_P1:P6 == 0  -21.9372     3.2629  -6.723    <0.01 ***
           ## ts_P2:P1 == 0   -9.7214     3.2629  -2.979   0.1928    
           ## ts_P2:P2 == 0    7.0899     4.5249   1.567   0.9773    


         ## End(Not run)
