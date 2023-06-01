.. container::

   ========= ===============
   Equipment R Documentation
   ========= ===============

   .. rubric:: Transportation Equipment Manufacturing Data
      :name: Equipment

   .. rubric:: Description
      :name: description

   Statewide data on transportation equipment manufacturing for 25 US
   states.

   .. rubric:: Usage
      :name: usage

   ::

      data("Equipment")

   .. rubric:: Format
      :name: format

   A data frame containing 25 observations on 4 variables.

   valueadded
      Aggregate output, in millions of 1957 dollars.

   capital
      Capital input, in millions of 1957 dollars.

   labor
      Aggregate labor input, in millions of man hours.

   firms
      Number of firms.

   .. rubric:: Source
      :name: source

   Journal of Applied Econometrics Data Archive.

   http://qed.econ.queensu.ca/jae/1998-v13.2/zellner-ryu/

   Online complements to Greene (2003), Table F9.2.

   https://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

   .. rubric:: References
      :name: references

   Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper
   Saddle River, NJ: Prentice Hall.

   Zellner, A. and Revankar, N. (1969). Generalized Production
   Functions. *Review of Economic Studies*, **36**, 241–250.

   Zellner, A. and Ryu, H. (1998). Alternative Functional Forms for
   Production, Cost and Returns to Scale Functions. *Journal of Applied
   Econometrics*, **13**, 101–127.

   .. rubric:: See Also
      :name: see-also

   ``Greene2003``

   .. rubric:: Examples
      :name: examples

   ::

      ## Greene (2003), Example 17.5
      data("Equipment")

      ## Cobb-Douglas
      fm_cd <- lm(log(valueadded/firms) ~ log(capital/firms) + log(labor/firms), data = Equipment)

      ## generalized Cobb-Douglas with Zellner-Revankar trafo
      GCobbDouglas <- function(theta)
       lm(I(log(valueadded/firms) + theta * valueadded/firms) ~ log(capital/firms) + log(labor/firms), 
           data = Equipment)

      ## yields classical Cobb-Douglas for theta = 0
      fm_cd0 <- GCobbDouglas(0)

      ## ML estimation of generalized model
      ## choose starting values from classical model
      par0 <- as.vector(c(coef(fm_cd0), 0, mean(residuals(fm_cd0)^2)))

      ## set up likelihood function
      nlogL <- function(par) {
        beta <- par[1:3]
        theta <- par[4]
        sigma2 <- par[5]

        Y <- with(Equipment, valueadded/firms)
        K <- with(Equipment, capital/firms)
        L <- with(Equipment, labor/firms)

        rhs <- beta[1] + beta[2] * log(K) + beta[3] * log(L)
        lhs <- log(Y) + theta * Y

        rval <- sum(log(1 + theta * Y) - log(Y) +
          dnorm(lhs, mean = rhs, sd = sqrt(sigma2), log = TRUE))
        return(-rval)
      }

      ## optimization
      opt <- optim(par0, nlogL, hessian = TRUE)

      ## Table 17.2
      opt$par
      sqrt(diag(solve(opt$hessian)))[1:4]
      -opt$value

      ## re-fit ML model
      fm_ml <- GCobbDouglas(opt$par[4])
      deviance(fm_ml)
      sqrt(diag(vcov(fm_ml)))

      ## fit NLS model
      rss <- function(theta) deviance(GCobbDouglas(theta))
      optim(0, rss)
      opt2 <- optimize(rss, c(-1, 1))
      fm_nls <- GCobbDouglas(opt2$minimum)
      -nlogL(c(coef(fm_nls), opt2$minimum, mean(residuals(fm_nls)^2)))
