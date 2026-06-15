======= ===============
Engel95 R Documentation
======= ===============

1995 British Family Expenditure Survey
--------------------------------------

Description
~~~~~~~~~~~

British cross-section data consisting of a random sample taken from the
British Family Expenditure Survey for 1995. The households consist of
married couples with an employed head-of-household between the ages of
25 and 55 years. There are 1655 household-level observations in total.

Usage
~~~~~

.. code:: R

   data("Engel95")

Format
~~~~~~

A data frame with 10 columns, and 1655 rows.

food
   expenditure share on food, of type ``numeric``

catering
   expenditure share on catering, of type ``numeric``

alcohol
   expenditure share on alcohol, of type ``numeric``

fuel
   expenditure share on fuel, of type ``numeric``

motor
   expenditure share on motor, of type ``numeric``

fares
   expenditure share on fares, of type ``numeric``

leisure
   expenditure share on leisure, of type ``numeric``

logexp
   logarithm of total expenditure, of type ``numeric``

logwages
   logarithm of total earnings, of type ``numeric``

nkids
   number of children, of type ``numeric``

Source
~~~~~~

Richard Blundell and Dennis Kristensen

References
~~~~~~~~~~

Blundell, R. and X. Chen and D. Kristensen (2007), “Semi-Nonparametric
IV Estimation of Shape-Invariant Engel Curves,” Econometrica, 75,
1613-1669.

Li, Q. and J.S. Racine (2007), *Nonparametric Econometrics: Theory and
Practice,* Princeton University Press.

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
   ## Example - compute nonparametric instrumental regression using
   ## Landweber-Fridman iteration of Fredholm integral equations of the
   ## first kind.

   ## We consider an equation with an endogenous regressor (`z') and an
   ## instrument (`w'). Let y = phi(z) + u where phi(z) is the function of
   ## interest. Here E(u|z) is not zero hence the conditional mean E(y|z)
   ## does not coincide with the function of interest, but if there exists
   ## an instrument w such that E(u|w) = 0, then we can recover the
   ## function of interest by solving an ill-posed inverse problem.

   data(Engel95)

   ## Sort on logexp (the endogenous regressor) for plotting purposes

   Engel95 <- Engel95[order(Engel95$logexp),] 
   Engel95 <- Engel95[seq_len(min(120, nrow(Engel95))), ]

   with(Engel95, {

   model.iv <- npregiv(y=food,
                       z=logexp,
                       w=logwages,
                       method="Landweber-Fridman",
                       iterate.max=3,
                       iterate.diff.tol=1.0e-04)
   phi <- model.iv$phi

   ## Compute the non-IV regression (i.e. regress y on z)

   ghat <- npreg(food~logexp,regtype="ll")

   ## For the plots, restrict focal attention to the bulk of the data
   ## (i.e. for the plotting area trim out 1/4 of one percent from each
   ## tail of y and z)

   trim <- 0.0025

   plot(logexp,food,
        ylab="Food Budget Share",
        xlab="log(Total Expenditure)",
        xlim=quantile(logexp,c(trim,1-trim)),
        ylim=quantile(food,c(trim,1-trim)),
        main="Nonparametric Instrumental Kernel Regression",
        type="p",
        cex=.5,
        col="lightgrey")

   lines(logexp,phi,col="blue",lwd=2,lty=2)

   lines(logexp,fitted(ghat),col="red",lwd=2,lty=4)

   legend(quantile(logexp,trim),quantile(food,1-trim),
          c(expression(paste("Nonparametric IV: ",hat(varphi)(logexp))),
            "Nonparametric Regression: E(food | logexp)"),
          lty=c(2,4),
          col=c("blue","red"),
          lwd=c(2,2))
   })

   ## End(Not run) 
