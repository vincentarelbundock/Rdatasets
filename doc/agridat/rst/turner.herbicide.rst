.. container::

   .. container::

      ================ ===============
      turner.herbicide R Documentation
      ================ ===============

      .. rubric:: Herbicide control of larkspur
         :name: herbicide-control-of-larkspur

      .. rubric:: Description
         :name: description

      Herbicide control of larkspur

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("turner.herbicide")

      .. rubric:: Format
         :name: format

      A data frame with 12 observations on the following 4 variables.

      ``rep``
         rep factor

      ``rate``
         rate of herbicide

      ``live``
         number of live plants before application

      ``dead``
         number of plants killed by herbicide

      .. rubric:: Details
         :name: details

      Effectiveness of the herbicide Picloram on larkspur plants at 4
      doses (0, 1.1, 2.2, 4.5) in 3 reps. Experiment was done in 1986 at
      Manti, Utah.

      .. rubric:: Source
         :name: source

      David L. Turner and Michael H. Ralphs and John O. Evans (1992).
      Logistic Analysis for Monitoring and Assessing Herbicide Efficacy.
      *Weed Technology*, 6, 424-430.
      https://www.jstor.org/stable/3987312

      .. rubric:: References
         :name: references

      Christopher Bilder, Thomas Loughin. *Analysis of Categorical Data
      with R*.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(turner.herbicide)
           dat <- turner.herbicide
           
           dat <- transform(dat, prop=dead/live)
           # xyplot(prop~rate,dat, pch=20, main="turner.herbicide", ylab="Proportion killed")

           m1 <- glm(prop~rate, data=dat, weights=live, family=binomial)
           coef(m1) # -3.46, 2.6567  Same as Turner eqn 3
           
           # Make conf int on link scale and back-transform
           p1 <- expand.grid(rate=seq(0,to=5,length=50))
           p1 <- cbind(p1, predict(m1, newdata=p1, type='link', se.fit=TRUE))
           p1 <- transform(p1, lo = plogis(fit - 2*se.fit),
                           fit = plogis(fit),
                           up = plogis(fit + 2*se.fit))
           
           # Figure 2 of Turner
           libs(latticeExtra)
           foo1 <- xyplot(prop~rate,dat, cex=1.5,
                          main="turner.herbicide (model with 2*S.E.)",
                          xlab="Herbicide rate", ylab="Proportion killed")
           foo2 <- xyplot(fit~rate, p1, type='l')
           foo3 <- xyplot(lo+up~rate, p1, type='l', lty=1, col='gray')
           print(foo1 + foo2 + foo3)


           # What dose gives a LD90 percent kill rate?
           # libs(MASS)
           # dose.p(m1, p=.9)
           ##             Dose       SE
           ## p = 0.9: 2.12939 0.128418

           # Alternative method
           # libs(car) # logit(.9) = 2.197225
           # deltaMethod(m1, g="(log(.9/(1-.9))-b0)/(b1)", parameterNames=c('b0','b1'))
           ##                      Estimate       SE
           ## (2.197225 - b0)/(b1)  2.12939 0.128418
           
           # What is a 95 percent conf interval for LD90?  Bilder & Loughin page 138
           root <- function(x, prob=.9, alpha=0.05){
             co <- coef(m1)    # b0,b1
             covs <- vcov(m1)  # b00,b11,b01
             # .95 = b0 + b1*x
             # (b0+b1*x) + Z(alpha/2) * sqrt(b00 + x^2*b11 + 2*x*b01) > .95
             # (b0+b1*x) - Z(alpha/2) * sqrt(b00 + x^2*b11 + 2*x*b01) < .95
             f <- abs(co[1] + co[2]*x - log(prob/(1-prob))) /
               sqrt(covs[1,1] + x^2 * covs[2,2] + 2*x*covs[1,2])
             return( f - qnorm(1-alpha/2))
           }
           lower <- uniroot(f=root, c(0,2.13))
           upper <- uniroot(f=root, c(2.12, 5))
           c(lower$root, upper$root)
           # 1.92 2.45
           

         ## End(Not run)
