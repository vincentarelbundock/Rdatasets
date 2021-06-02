=============== ===============
Electricity1970 R Documentation
=============== ===============

Cost Function of Electricity Producers 1970
-------------------------------------------

Description
~~~~~~~~~~~

Cross-section data, at the firm level, on electric power generation.

Usage
~~~~~

::

   data("Electricity1970")

Format
~~~~~~

A data frame containing 158 cross-section observations on 9 variables.

cost
   total cost.

output
   total output.

labor
   wage rate.

laborshare
   cost share for labor.

capital
   capital price index.

capitalshare
   cost share for capital.

fuel
   fuel price.

fuelshare
   cost share for fuel.

Details
~~~~~~~

The data are from Christensen and Greene (1976) and pertain to the year
1970. However, the file contains some extra observations, the holding
companies. Only the first 123 observations are needed to replicate
Christensen and Greene (1976).

Source
~~~~~~

Online complements to Greene (2003), Table F5.2.

http://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

References
~~~~~~~~~~

Christensen, L. and Greene, W.H. (1976). Economies of Scale in U.S.
Electric Power Generation. *Journal of Political Economy*, **84**,
655–676.

Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper Saddle
River, NJ: Prentice Hall.

See Also
~~~~~~~~

``Greene2003``, ``Electricity1955``

Examples
~~~~~~~~

::

   data("Electricity1970")

   ## Greene (2003), Ex. 5.6: a generalized Cobb-Douglas cost function
   fm <- lm(log(cost/fuel) ~ log(output) + I(log(output)^2/2) + 
     log(capital/fuel) + log(labor/fuel), data=Electricity1970[1:123,])

