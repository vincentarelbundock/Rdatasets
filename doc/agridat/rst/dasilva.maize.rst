.. container::

   .. container::

      ============= ===============
      dasilva.maize R Documentation
      ============= ===============

      .. rubric:: Multi-environment trial of maize
         :name: multi-environment-trial-of-maize

      .. rubric:: Description
         :name: description

      Multi-environment trial of maize with 3 reps.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("dasilva.maize")

      .. rubric:: Format
         :name: format

      A data frame with 1485 observations on the following 4 variables.

      ``env``
         environment

      ``rep``
         replicate block, 3 per env

      ``gen``
         genotype

      ``yield``
         yield (tons/hectare)

      .. rubric:: Details
         :name: details

      Each location had 3 blocks. Block numbers are unique across
      environments.

      NOTE! The environment codes in the supplemental data file of da
      Silva 2015 do not quite match the environment codes of the paper,
      but are mostly off by 1.

      DaSilva Table 1 has a footnote "Machado et al 2007". This
      reference appears to be:

      Machado et al. Estabilidade de producao de hibridos simples e
      duplos de milhooriundos de um mesmo conjunto genico. Bragantia,
      67, no 3. www.scielo.br/pdf/brag/v67n3/a10v67n3.pdf

      In DaSilva Table 1, the mean of E1 is 10.803. This appears to be a
      copy of the mean from row 1 of Table 1 in Machado. Using the
      supplemental data from this paper, the correct mean is 8.685448.

      .. rubric:: Source
         :name: source

      A Bayesian Shrinkage Approach for AMMI Models. Carlos Pereira da
      Silva, Luciano Antonio de Oliveira, Joel Jorge Nuvunga, Andrezza
      Kellen Alves Pamplona, Marcio Balestre. Plos One. Supplemental
      material. https://doi.org/10.1371/journal.pone.0131414

      Used via license: Creative Commons BY-SA.

      .. rubric:: References
         :name: references

      J.J. Nuvunga, L.A. Oliveira, A.K.A. Pamplona, C.P. Silva, R.R.
      Lima and M. Balestre. Factor analysis using mixed models of
      multi-environment trials with different levels of unbalancing.
      Genet. Mol. Res. 14.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(agridat)
         data(dasilva.maize)
         dat <- dasilva.maize

         # Try to match Table 1 of da Silva 2015.
         # aggregate(yield ~ env, data=dat, FUN=mean)
         ##   env     yield
         ## 1  E1  6.211817  # match E2 in Table 1
         ## 2  E2  4.549104  # E3
         ## 3  E3  5.152254  # E4
         ## 4  E4  6.245904  # E5
         ## 5  E5  8.084609  # E6
         ## 6  E6 13.191890  # E7
         ## 7  E7  8.895721  # E8
         ## 8  E8  8.685448  
         ## 9  E9  8.737089  # E9

         # Unable to match CVs in Table 2, but who knows what they used
         # for residual variance.
         # aggregate(yield ~ env, data=dat, FUN=function(x) 100*sd(x)/mean(x))

         # Match DaSilva supplement 2, ANOVA
         # m1 <- aov(yield ~ env + gen + rep:env + gen:env, dat)
         # anova(m1)
         ## Response: yield
         ##            Df Sum Sq Mean Sq  F value    Pr(>F)    
         ## env         8 8994.2 1124.28 964.1083 < 2.2e-16 ***
         ## gen        54  593.5   10.99   9.4247 < 2.2e-16 ***
         ## env:rep    18   57.5    3.19   2.7390 0.0001274 ***
         ## env:gen   432  938.1    2.17   1.8622 1.825e-15 ***
         ## Residuals 972 1133.5    1.17                       
