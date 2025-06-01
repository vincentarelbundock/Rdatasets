.. container::

   .. container::

      ================ ===============
      urquhart.feedlot R Documentation
      ================ ===============

      .. rubric:: Weight gain calves in a feedlot
         :name: weight-gain-calves-in-a-feedlot

      .. rubric:: Description
         :name: description

      Weight gain calves in a feedlot, given three different diets.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("urquhart.feedlot")

      .. rubric:: Format
         :name: format

      A data frame with 67 observations on the following 5 variables.

      ``animal``
         animal ID

      ``herd``
         herd ID

      ``diet``
         diet: Low, Medium, High

      ``weight1``
         initial weight

      ``weight2``
         slaughter weight

      .. rubric:: Details
         :name: details

      Calves born in 1975 in 11 different herds entered a feedlot as
      yearlings. Each animal was fed one of three diets with low,
      medium, or high energy. The original sources explored the use of
      some contrasts for comparing breeds.

      ==== ===============================
      Herd Breed
      9    New Mexico Herefords
      16   New Mexico Herefords
      3    Utah State University Herefords
      32   Angus
      24   Angus x Hereford (cross)
      31   Charolais x Hereford
      19   Charolais x Hereford
      36   Charolais x Hereford
      34   Brangus
      35   Brangus
      33   Southern Select
      \    
      ==== ===============================

      .. rubric:: Source
         :name: source

      N. Scott Urquhart (1982). Adjustment in Covariance when One Factor
      Affects the Covariate Biometrics, 38, 651-660. Table 4, p. 659.
      https://doi.org/10.2307/2530046

      .. rubric:: References
         :name: references

      N. Scott Urquhart and David L. Weeks (1978). Linear Models in
      Messy Data: Some Problems and Alternatives Biometrics, 34,
      696-705. https://doi.org/10.2307/2530391

      Also available in the 'emmeans' package as the 'feedlot' data.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(urquhart.feedlot)
           dat <- urquhart.feedlot

           libs(reshape2)
           d2 <- melt(dat, id.vars=c('animal','herd','diet'))

           libs(latticeExtra)
           useOuterStrips(xyplot(value ~ variable|diet*herd, data=d2, group=animal,
                                 type='l',
                                 xlab="Initial & slaughter timepoint for each diet",
                                 ylab="Weight for each herd",
                                 main="urquhart.feedlot - weight gain by animal"))


           # simple fixed-effects model 
           dat <- transform(dat, animal = factor(animal), herd=factor(herd))
           m1 <- lm(weight2 ~ weight1 + herd*diet, data = dat)
           coef(m1) # weight1 = 1.1373 match Urquhart table 5 common slope
           
           # random-effects model might be better, for example
           # libs(lme4)
           # m1 <- lmer(weight2 ~ -1 + diet + weight1 + (1|herd), data=dat)
           # summary(m1) # weight1 = 1.2269
           

         ## End(Not run)
