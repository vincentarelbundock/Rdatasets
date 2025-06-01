.. container::

   .. container::

      =========================== ===============
      stickler.sorghum.uniformity R Documentation
      =========================== ===============

      .. rubric:: Uniformity trial of sorghum
         :name: uniformity-trial-of-sorghum

      .. rubric:: Description
         :name: description

      Uniformity trial of sorghum in at Manhattan, Kansas, 1958-1959.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("stickler.sorghum.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 1600 observations on the following 4 variables.

      ``expt``
         experiment

      ``row``
         row

      ``col``
         col

      ``yield``
         yield, pounds

      .. rubric:: Details
         :name: details

      Four sorghum experiments at the Agronomy Farm at Manhattan,
      Kansas. Experiments E1,E2 grown in 1958. Expts E3,E5 grown in
      1959.

      Experiment E1.

      Field width = 20 units \* 14 inches = 23.3 ft.

      Field length = 20 units \* 10 feet = 200 feet.

      Experiment E2-E3.

      Field width = 20 units \* 40 inches = 73 feet

      Field length = 20 units \* 5 ft = 100 feet.

      .. rubric:: Source
         :name: source

      F. C. Stickler (1960). Estimates of Optimum Plot Size from Grain
      Sorghum Uniformity Trial Data. Technical bulletin, Kansas
      Agricultural Experiment Station, page 17-20.
      https://babel.hathitrust.org/cgi/pt?id=uiug.30112019584322&view=1up&seq=21

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(stickler.sorghum.uniformity)
           dat <- stickler.sorghum.uniformity
           
           dat1 <- subset(dat, expt=="E1")
           dat2 <- subset(dat, expt!="E1")
           
           libs(desplot)
           desplot(dat, yield ~ col*row|expt,
                   subset=expt=="E1",
                   #cex=1,text=yield, shorten="none",
                   xlab="row",ylab="range",
                   flip=TRUE, tick=TRUE, aspect=(20*10)/(20*14/12), # true aspect
                   main="stickler.sorghum.uniformity: expt E1")

           desplot(dat, yield ~ col*row|expt,
                   subset=expt!="E1",
                   xlab="row",ylab="range",
                   flip=TRUE, tick=TRUE, aspect=(20*5)/(20*44/12), # true aspect
                   main="stickler.sorghum.uniformity: expt E2,E3,E4")

           # Stickler, p. 10-11 has
           #    E1    E2    E3    E4
           # 34.81 11.53 11.97 14.10 
           cv <- function(x) 100*sd(x)/mean(x)
           tapply(dat$yield, dat$expt, cv)
           # 35.74653 11.55062 11.97011 14.11389
           

         ## End(Not run)
