============ ===============
GoosePermits R Documentation
============ ===============

Goose Permit Study
------------------

Description
~~~~~~~~~~~

237 hunters were each offered one of 11 cash amounts (bids) ranging from
$1 to $200 in return for their goose permits. Hunters returned either
their permit or the cash.

Usage
~~~~~

::

   data(GoosePermits)

Format
~~~~~~

A data.frame with 11 observations on the following 3 variables.

itemcodebid amount offered for permit (US $) (numeric) itemcodekeep
number of hunters who kept the permit and returned the cash (numeric)
itemcodesell number of hunters who kept the cash and returned the permit
(numeric)

Source
~~~~~~

Bishop and Heberlein. "Measuring values of extramarket goods: are
indirect measures biased?". Amer. J. Agr. Econ. 61, 1979. Available at
https://onlinelibrary.wiley.com/doi/abs/10.2307/3180348

Examples
~~~~~~~~

::

   data(GoosePermits)

   goose.model <- 
     glm( cbind(keep, sell) ~ log(bid), data = GoosePermits, family = binomial())
   if (require(ggformula)) {
     y.hat <- makeFun(goose.model)
     gf_point( (keep/(keep+sell)) ~ bid, data = GoosePermits, ylim = c(0,1.05)) %>%
     gf_fun(y.hat(b) ~ b, add = TRUE, color = "red", alpha = 0.5) 
   }

