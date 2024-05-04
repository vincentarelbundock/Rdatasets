.. container::

   .. container::

      ==== ===============
      TIPI R Documentation
      ==== ===============

      .. rubric:: Data on the Ten Item Personality Inventory
         :name: data-on-the-ten-item-personality-inventory

      .. rubric:: Description
         :name: description

      The Ten Item Personality Inventory (Gosling et al. 2003) is a
      brief inventory of the Big Five personality domains (Extraversion,
      Neuroticism, Conscientiousness, Agreeableness, and Openness to
      experience). This dataset, originally from the Open Source
      Psychometrics Project (https://openpsychometrics.org/), was used
      by Jones et al. (2020), from which we obtained this version.

      .. rubric:: Format
         :name: format

      A data frame with 1799 observations on the following 16 variables.

      ``Extraversion``
         a numeric vector

      ``Neuroticism``
         a numeric vector

      ``Conscientiousness``
         a numeric vector

      ``Agreeableness``
         a numeric vector

      ``Openness``
         a numeric vector

      ``education``
         an ordered factor with levels ``<HS`` < ``HS`` < ``Univ`` <
         ``Grad``

      ``urban``
         an ordered factor with levels ``Rural`` < ``Suburban`` <
         ``Urban``

      ``gender``
         a factor with levels ``M`` ``F``

      ``engnat``
         a factor with levels ``Native`` ``Non-native``

      ``age``
         a numeric vector

      ``religion``
         a factor with levels ``Agnostic`` ``Atheist`` ``Buddhist``
         ``Christian       (Catholic)`` ``Christian (Mormon)``
         ``Christian (Protestant)`` ``Christian (Other)`` ``Hindu``
         ``Jewish`` ``Muslim`` ``Sikh`` ``Other``

      ``orientation``
         a factor with levels ``Heterosexual`` ``Bisexual``
         ``Homosexual`` ``Asexual`` ``Other``

      ``race``
         a factor with levels ``Asian`` ``Arab`` ``Black``
         ``Indig-White`` ``Other``

      ``voted``
         a factor with levels ``Yes`` ``No``

      ``married``
         a factor with levels ``Never married`` ``Currently married``
         ``Previously married``

      ``familysize``
         a numeric vector

      .. rubric:: Details
         :name: details

      In addition to scores on the Big Five scales, the dataset contains
      11 demographic variables on the participants, potentially useful
      in multivariate analyses.

      Scores on each personality domain were calculated by averaging
      items assigned to each domain (after reverse scoring specific
      items). In this version, total scores for each scale were
      calculated by averaging the positively and negatively coded items,
      for example, ``TIPI$Extraversion <- (TIPI$E + (8-TIPI$E_r))/2``.

      Then, for the present purposes, some tidying was done:

      -  100 cases with 'gender=="Other" were deleted;

      -  codes for levels of 'education', 'engnat' and 'race' were
         abbreviated for ease of use in graphics.

      .. rubric:: Source
         :name: source

      Jones, P.J., Mair, P., Simon, T. et al. (2020). Network Trees: A
      Method for Recursively Partitioning Covariance Structures.
      *Psychometrika*, **85**, 926?945.
      https://doi.org/10.1007/s11336-020-09731-4

      .. rubric:: References
         :name: references

      Gosling, S. D., Rentfrow, P. J., & Swann, W. B, Jr. (2003). A very
      brief measure of the Big-Five personality domains. *Journal of
      Research in Personality*, **37**, 504?528.

      .. rubric:: Examples
         :name: examples

      ::

         data(TIPI)
         # fit an mlm
         tipi.mlm <- lm(cbind(Extraversion, Neuroticism, Conscientiousness, Agreeableness, Openness) 
                        ~ engnat + gender + education, data = TIPI )
         car::Anova(tipi.mlm)

         heplot(tipi.mlm, fill=TRUE, fill.alpha=0.1)

         pairs(tipi.mlm, fill=TRUE, fill.alpha=0.1)

         # candisc works best for factors with >2 levels
         library(candisc)
         tipi.can <- candisc(tipi.mlm, term="education")
         tipi.can

         heplot(tipi.can, fill=TRUE, fill.alpha=0.1, 
                var.col = "darkred", var.cex = 1.5, var.lwd = 3)
