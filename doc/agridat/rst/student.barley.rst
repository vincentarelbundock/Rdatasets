.. container::

   .. container::

      ============== ===============
      student.barley R Documentation
      ============== ===============

      .. rubric:: Multi-environment trial of barley
         :name: multi-environment-trial-of-barley

      .. rubric:: Description
         :name: description

      Yield for two varieties of barley grown at 51 locations in the
      years 1901 to 1906.

      .. rubric:: Format
         :name: format

      A data frame with 102 observations on the following 7 variables.

      ``year``
         year, 1901-1906

      ``farmer``
         farmer name

      ``place``
         place (nearest town)

      ``district``
         district, geographical area

      ``gen``
         genotype, ``Archer`` and ``Goldthorpe``

      ``yield``
         yield, 'stones' per acre (1 stone = 14 pounds)

      ``income``
         income per acre in shillings, based on yield and quality

      .. rubric:: Details
         :name: details

      Experiments were conducted for six years by the Department of
      Agriculture in Ireland. A total of seven varieties were tested,
      but only Archer and Goldthorpe were tested in all six years
      (others were dropped after being found inferior, or were added
      later). Plots were two acres in size. The value of the grain
      depended on the yield and quality. Quality varied much from farm
      to farm, but not so much within the same farm.

      The phrase "analysis of variance" first appears in the abstract
      (only) of a 1918 paper by Fisher. The 1923 paper by Student
      contained the first analysis of variance table (but not for this
      data).

      One stone is 14 pounds. To convert lb/ac to tonnes/ha, multiply by
      0.00112085116

      Note: The analysis of Student cannot be reproduced exactly. For
      example, Student states that the maximum income of Goldthorpe is
      230 shillings. A quick glance at Table I of Student shows that the
      maximum income for Goldthorpe is 220 shillings (11 pounds, 0
      shillings) in 1901 at Thurles. Also, the results of Kempton could
      not be reproduced exactly, perhaps due to rounding or the
      conversion factor that was used.

      .. rubric:: Source
         :name: source

      Student. 1923. On Testing Varieties of Cereals. *Biometrika*, 15,
      271–293. https://doi.org/10.1093/biomet/15.3-4.271

      .. rubric:: References
         :name: references

      R A Kempton and P N Fox, 1997. *Statistical Methods for Plant
      Variety Evaluation*.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(student.barley)
           dat <- student.barley

           libs(lattice)
           bwplot(yield ~ gen|district, dat, main="student.barley - yield")

           dat$year <- factor(dat$year)
           dat$income <- NULL
           
           # convert to tons/ha
           dat <- transform(dat, yield=yield*14 * 0.00112085116)
           
           # Define 'loc' the way that Kempton does
           dat$loc <- rep("",nrow(dat))
           dat[is.element(dat$farmer, c("Allardyce","Roche","Quinn")),"loc"] <- "1"
           dat[is.element(dat$farmer, c("Luttrell","Dooley")), "loc"] <- "2"
           dat[is.element(dat$year, c("1904","1905","1906")) & dat$farmer=="Kearney","loc"] <- "2"
           dat[dat$farmer=="Mulhall","loc"] <- "3"
           
           dat <- transform(dat, loc=factor(paste(place,loc,sep="")))
           
           libs(reshape2)
           datm <- melt(dat, measure.var='yield')

           # Kempton Table 9.5
           round(acast(datm, loc+gen~year),2)

           # Kempton Table 9.6
           d2 <- dcast(datm, year+loc~gen)
           mean(d2$Archer)
           mean(d2$Goldthorpe)
           mean(d2$Archer-d2$Goldthorpe)
           sqrt(var(d2$Archer-d2$Goldthorpe)/51)
           cor(d2$Archer,d2$Goldthorpe)


         if(0){
           # Kempton Table 9.6b
           libs(lme4)
           m2 <- lmer(yield~1 + (1|loc) + (1|year) +
                        (1|loc:year) + (1|gen:loc) + (1|gen:year), data=dat,
                      control=lmerControl(check.nobs.vs.rankZ="ignore"))
         }


         ## End(Not run)
