.. container::

   .. container::

      ============ ===============
      linder.wheat R Documentation
      ============ ===============

      .. rubric:: Multi-environment trial of wheat in Switzerland
         :name: multi-environment-trial-of-wheat-in-switzerland

      .. rubric:: Description
         :name: description

      Multi-environment trial of wheat in Switzerland

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("linder.wheat")

      .. rubric:: Format
         :name: format

      A data frame with 252 observations on the following 4 variables.

      ``env``
         environment

      ``block``
         block

      ``gen``
         genotype

      ``yield``
         yield, in 10 kg/ha

      .. rubric:: Details
         :name: details

      An experiment of 9 varieties of wheat in 7 localities in
      Switzerland in 1960, RCB design.

      .. rubric:: Source
         :name: source

      Arthur Linder (1960). Design and Analysis of Experiments, notes on
      lectures held during the fall semester 1963 at the Statistics
      Department, University of North Carolina, page 160.
      https://www.stat.ncsu.edu/information/library/mimeo.archive/ISMS_1964_398-A.pdf

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(agridat)
         data(linder.wheat)
         dat <- linder.wheat

         libs(gge)
         dat <- transform(dat, eb=paste0(env,block))
         m1 <- gge(dat, yield~gen*eb, env.group=env)
         biplot(m1, main="linder.wheat")
