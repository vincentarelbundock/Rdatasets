==== ===============
cbpp R Documentation
==== ===============

Contagious bovine pleuropneumonia
---------------------------------

Description
~~~~~~~~~~~

Contagious bovine pleuropneumonia (CBPP) is a major disease of cattle in
Africa, caused by a mycoplasma. This dataset describes the serological
incidence of CBPP in zebu cattle during a follow-up survey implemented
in 15 commercial herds located in the Boji district of Ethiopia. The
goal of the survey was to study the within-herd spread of CBPP in newly
infected herds. Blood samples were quarterly collected from all animals
of these herds to determine their CBPP status. These data were used to
compute the serological incidence of CBPP (new cases occurring during a
given time period). Some data are missing (lost to follow-up).

There are two datasets, although their precise origins are unclear. The
dataset used in the classical ``lme4`` examples, ``cbpp``, matches the
file maintained by the package authors. The extended dataset, ``cbpp2``,
corresponds to Table 1 of (Lesnoff et al. 2004), with the exception of
herd 6, which is a known typographical error in the original paper.

Format
~~~~~~

``cbpp`` is a data frame with 56 observations on the following 4
variables.

``herd``
   A factor identifying the herd (1 to 15).

``incidence``
   The number of new serological cases for a given herd and time period.

``size``
   A numeric vector describing herd size at the beginning of a given
   time period.

``period``
   A factor with levels ``1`` to ``4``.

The extended version, ``cbpp2``, has the additional variables:

``herd``
   A factor identifying the herd (1 to 15).

``treatment``
   A factor referring to the control measure used to manage CBPP.

   - ``Complete`` = complete isolation or antibiotic treatment,

   - ``Partial/null`` = partial/null isolation and no antibiotic
     treatment,

   - ``Unknown`` = strategy remained.

``avg_size``
   The average number of animals housed in a della (a temporary paddock
   used for holding cattle on the farm).

Details
~~~~~~~

Serological status was determined using a competitive enzyme-linked
immuno-sorbent assay (cELISA).

Source
~~~~~~

(Lesnoff et al. 2004)

References
~~~~~~~~~~

Lesnoff M, Laval G, Bonnet P, Abdicho S, Workalemahu A, Kifle D, Peyraud
A, Lancelot R, Thiaucourt F (2004). “Within-herd spread of contagious
bovine pleuropneumonia in Ethiopian highlands.” *Preventive Veterinary
Medicine*, **64**\ (1), 27-40. ISSN 0167-5877,
`doi:10.1016/j.prevetmed.2004.03.005 <https://doi.org/10.1016/j.prevetmed.2004.03.005>`__.

Examples
~~~~~~~~

.. code:: R

   ## response as a matrix
   (m1 <- glmer(cbind(incidence, size - incidence) ~ period + (1 | herd),
                family = binomial, data = cbpp))
   ## response as a vector of probabilities and usage of argument "weights"
   m1p <- glmer(incidence / size ~ period + (1 | herd), weights = size,
                family = binomial, data = cbpp)
   ## Confirm that these are equivalent:
   stopifnot(all.equal(fixef(m1), fixef(m1p), tolerance = 1e-5),
             all.equal(ranef(m1), ranef(m1p), tolerance = 1e-5))

   ## GLMM with individual-level variability (accounting for overdispersion)
   cbpp$obs <- 1:nrow(cbpp)
   (m2 <- glmer(cbind(incidence, size - incidence) ~ period + (1 | herd) +  (1|obs),
                 family = binomial, data = cbpp))
                 
   ## Fitting the model for cbpp2
   gm1 <- glmer(incidence/size ~ period + treatment + avg_size + (1 | herd),
                family = binomial,
                data = cbpp2, weights = size,
                control = glmerControl(optimizer="bobyqa"))
   ## Adding an observation-level random effect
   cbpp2 <- transform(cbpp2,obs=factor(seq(nrow(cbpp2))))
   ## Herd and observation-level REs (below causes singular fit issues)
   gm2 <- update(gm1,.~.+(1|obs)) 
   ## observation-level REs only (no singular fit issue)
   gm3 <- update(gm1,.~.-(1|herd)+(1|obs)) 
