============ ===============
uniondensity R Documentation
============ ===============

Cross-National Rates of Trade Union Density
-------------------------------------------

Description
~~~~~~~~~~~

Cross-national data on relative size of the trade unions and predictors
in 20 countries. This is a data set of interest to replicating Western
and Jackman (1994), who themselves were addressing a debate between
Wallerstein and Stephens on which of two highly correlated predictors
explains trade union density.

Usage
~~~~~

::

   uniondensity

Format
~~~~~~

A data frame with 20 observations on the following 5 variables.

``country``
   a character vector for the country

``union``
   a numeric vector for the percentage of the total number of wage and
   salary earners plus the unemployed who are union members, measured
   between 1975 and 1980, with most of the data drawn from 1979.

``left``
   a numeric vector tapping the extent to which parties of the left have
   controlled governments since 1919, due to Wilensky (1981).

``size``
   a numeric vector measuring the log of labor force size, defined as
   the number of wage and salary earners, plus the unemployed.

``concen``
   a numeric vector measuring the percentage of employment, shipments,
   or production accounted for by the four largest enterprises in a
   particular industry, averaged over industries (with weights
   proportional to the size of the industry) and the resulting measure
   is normalized such that the United States scores a 1.0, and is due to
   Pryor (1973). Some of the scores on this variable are imputed using
   procedures described in Stephens and Wallerstein (1991, 945).

Details
~~~~~~~

Data documentation are derived from Simon Jackman's ``pscl`` package. I
just tidied up the presentation a bit.

Source
~~~~~~

Pryor, Frederic. 1973. Property and Industrial Organization in Communist
and Capitalist Countries. Bloomington: Indiana University Press.

Stephens, John and Michael Wallerstein. 1991. Industrial Concentration,
Country Size and Trade Union Membership. American Political Science
Review 85:941-953.

Western, Bruce and Simon Jackman. 1994. Bayesian Inference for
Comparative Research. American Political Science Review 88:412-423.

Wilensky, Harold L. 1981. Leftism, Catholicism, Democratic Corporatism:
The Role of Political Parties in Recemt Welfare State Development. In
The Development of Welfare States in Europe and America, ed. Peter Flora
and Arnold J. Heidenheimer. New Brunswick: Transaction Books.

References
~~~~~~~~~~

Jackman, Simon. 2009. Bayesian Analysis for the Social Sciences. Wiley:
Hoboken, New Jersey.
