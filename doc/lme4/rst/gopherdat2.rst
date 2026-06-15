========== ===============
gopherdat2 R Documentation
========== ===============

Gopher tortoises shell remains
------------------------------

Description
~~~~~~~~~~~

Data of fresh Gopher tortoise shell remains (Ozgul et al. 2009).

Usage
~~~~~

.. code:: R

   data("gopherdat2")

Format
~~~~~~

A data frame with 30 observations on the following 7 variables.

``Site``
   a factor representing the sampling site. There are ``10`` levels:

   - ``BS`` (Big Shoals State Park).

   - ``CB`` (Camp Blanding Wildlife Management Area).

   - ``Cent`` (privately-owned property in central Florida).

   - ``CF`` (Cecil Field/Branan Field Wildlife and Environmental Area).

   - ``FC`` (Fort Cooper State Park).

   - ``FE`` (Flying Eagle Wildlife Management Area).

   - ``GH`` (Gold Head Branch State Park).

   - ``Old`` (Perry Oldenburg Wildlife and Environmental Area).

   - ``Ord`` (Ordway-Swisher Biological Station).

   - ``TE`` (Tenoroc Fish Management Area).

``year``
   a numeric vector of the sampling year.

``shells``
   a numeric vector of the number of shells found.

``Area``
   a numeric vector representing site area (units unknown).

``density``
   a numeric vector representing population density.

``prev``
   a numeric vector representing the seroprevalence (frequency of
   antibodies to disease) of *M. agassizi*.

Details
~~~~~~~

Details of the study is described in (Ozgul et al. 2009) as follows:
"The fieldwork was conducted between 2003 and 2006, during late
spring/summer (May–September). Systematic surveys were conducted to
locate tortoise burrows and shell remains from deceased tortoises at
study sites and consisted of a line of four to eight observers spaced 10
m apart walking parallel transects across the study area."

Source
~~~~~~

(Ozgul et al. 2009)

References
~~~~~~~~~~

Ozgul A, Oli MK, Bolker BM, Perez-Heydrich C (2009). “Upper respiratory
tract disease, force of infection, and effects on survival of gopher
tortoises.” *Ecological Applications*, **19**\ (3), 786-798.
`doi:10.1890/08-0219.1 <https://doi.org/10.1890/08-0219.1>`__.

Examples
~~~~~~~~

.. code:: R

   ## Simple model gives a singular fit:
   gopher_glmer <- glmer(shells ~ factor(year) + prev + offset(log(Area))
                      + (1|Site), data = gopherdat2, family = "poisson")
   ## The site-level variance for this model is indeed zero:
   VarCorr(gopher_glmer)
   ## So a Poisson GLM gives the same answer here:
   gopher_glm <- glm(shells ~ factor(year) + prev + offset(log(Area)),
                     data = gopherdat2, family = "poisson")
   all.equal(fixef(gopher_glmer), coef(gopher_glm))
