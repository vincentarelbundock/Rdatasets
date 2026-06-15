============== ===============
CrabSatellites R Documentation
============== ===============

Horseshoe Crab Mating
---------------------

Description
~~~~~~~~~~~

Determinants of mating for male satellites to nesting horseshoe crabs.
The number of ``satellites`` is a natural outcome variable. This dataset
is useful for exploring various count data models.

Format
~~~~~~

A data frame containing 173 observations on 5 variables.

``color``
   Ordered factor indicating color (light medium, medium, dark medium,
   dark).

``spine``
   Ordered factor indicating spine condition (both good, one worn or
   broken, both worn or broken).

``width``
   Carapace width (cm).

``weight``
   Weight (kg).

``satellites``
   Number of satellites.

Details
~~~~~~~

Brockmann (1996) investigates horseshoe crab mating. The crabs arrive on
the beach in pairs to spawn. Furthermore, unattached males also come to
the beach, crowd around the nesting couples and compete with attached
males for fertilizations. These so-called satellite males form large
groups around some couples while ignoring others. Brockmann (1996) shows
that the groupings are not driven by environmental factors but by
properties of the nesting female crabs. Larger females that are in
better condition attract more satellites.

Agresti (2002, 2013) reanalyzes the number of satellites using count
models. Explanatory variables are the female crab's color, spine
condition, weight, and carapace width. Color and spine condition are
ordered factors but are treated as numeric in some analyses.

Source
~~~~~~

Table 4.3 in Agresti (2002). This dataset was taken from the countreg
package, which is not on CRAN

References
~~~~~~~~~~

Agresti A (2002). Categorical Data Analysis, 2nd ed., John Wiley & Sons,
Hoboken.

Agresti A (2013). Categorical Data Analysis, 3rd ed., John Wiley & Sons,
Hoboken. Brockmann HJ (1996). “Satellite Male Groups in Horseshoe Crabs,
Limulus polyphemus”, Ethology, 102(1), 1–21.

Examples
~~~~~~~~

.. code:: R

   ## load data, use ordered factors as numeric, and grouped factor version of width
   data("CrabSatellites", package = "vcdExtra")
   CrabSatellites <- transform(CrabSatellites,
     color = as.numeric(color),
     spine = as.numeric(spine),
     cwidth = cut(width, c(-Inf, seq(23.25, 29.25), Inf))
   )

   ## Agresti, Table 4.4
   aggregate(CrabSatellites$satellites,
             list(CrabSatellites$cwidth), function(x)
     round(c(Number = length(x), Sum = sum(x), Mean = mean(x), Var = var(x)), digits = 2))

   ## Agresti, Figure 4.4
   plot(tapply(satellites, cwidth, mean) ~ tapply(width, cwidth, mean),
     data = CrabSatellites,
     ylim = c(0, 6), pch = 19, cex = 1.5,
     xlab = "Mean carapace width (cm)",
     ylab = "Mean number of satellites")

   ## More examples: ?countreg::CrabSatellites` has examples of other plots and count data models
