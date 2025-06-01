.. container::

   .. container::

      ==================== ===============
      grover.rcb.subsample R Documentation
      ==================== ===============

      .. rubric:: Rice RCB with subsamples
         :name: rice-rcb-with-subsamples

      .. rubric:: Description
         :name: description

      An experiment on rice with 9 fertilizer treatments in 4 blocks, 4
      hills per plot.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("grover.rcb.subsample")

      .. rubric:: Format
         :name: format

      A data frame with 144 observations on the following 4 variables.

      ``tiller``
         number of tillers

      ``trt``
         treatment factor

      ``block``
         block factor

      ``unit``
         subsample unit

      .. rubric:: Details
         :name: details

      An experiment on rice with 9 fertilizer treatments in 4 blocks, 4
      hills per plot. The response variable is tiller count (per hill).
      The hills are sampling units.

      .. rubric:: Source
         :name: source

      Grover, Deepak & Lajpat Rai (2010). Experimental Designing And
      Data Analysis In Agriculture And Biology. Agrotech Publishing
      Academy. Page 85.
      https://archive.org/details/expldesnanddatanalinagblg00023

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           data(grover.rcb.subsample)
           # Fixed-effects ANOVA. Matches Grover page 86.
           anova(aov(tiller ~ block + trt + block:trt, data=grover.rcb.subsample))
           ## Response: tiller
           ##            Df Sum Sq Mean Sq F value  Pr(>F)    
           ## block       3    930  310.01  3.6918 0.01415 *  
           ## trt         8  11816 1477.00 17.5891 < 2e-16 ***
           ## block:trt  24   4721  196.71  2.3425 0.00158 ** 
           ## Residuals 108   9069   83.97                    

         ## End(Not run)
