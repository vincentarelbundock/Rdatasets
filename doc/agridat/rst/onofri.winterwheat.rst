.. container::

   .. container::

      ================== ===============
      onofri.winterwheat R Documentation
      ================== ===============

      .. rubric:: Multi-environment trial of winter wheat, 7 years
         :name: multi-environment-trial-of-winter-wheat-7-years

      .. rubric:: Description
         :name: description

      Multi-environment trial of winter wheat, 7 years, 8 gen

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("onofri.winterwheat")

      .. rubric:: Format
         :name: format

      A data frame with 168 observations on the following 5 variables.

      ``year``
         year, numeric

      ``block``
         block, 3 levels

      ``plot``
         plot, numeric

      ``gen``
         genotype, 7 levels

      ``yield``
         yield for each plot

      .. rubric:: Details
         :name: details

      Yield of 8 durum winter wheat varieties across 7 years with 3
      reps.

      Downloaded electronic version from here Nov 2015:
      https://www.casaonofri.it/Biometry/index.html

      Used with permission of Andrea Onofri.

      .. rubric:: Source
         :name: source

      Andrea Onofri, Egidio Ciriciofolo (2007). Using R to Perform the
      AMMI Analysis on Agriculture Variety Trials. R News, Vol. 7, No.
      1, pp. 14-19.

      .. rubric:: References
         :name: references

      F. Mendiburu. AMMI.
      https://tarwi.lamolina.edu.pe/~fmendiburu/AMMI.htm

      A. Onofri.
      https://accounts.unipg.it/~onofri/RTutorial/CaseStudies/WinterWheat.htm

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(agridat)
         data(onofri.winterwheat)
         dat <- onofri.winterwheat
         dat <- transform(dat, year=factor(dat$year))

         m1 <- aov(yield ~ year + block:year + gen + gen:year, dat)
         anova(m1) # Matches Onofri figure 1

         libs(agricolae)
         m2 <- AMMI(dat$year, dat$gen, dat$block, dat$yield)
         plot(m2)
         title("onofri.winterwheat - AMMI biplot")
