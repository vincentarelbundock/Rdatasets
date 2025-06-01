.. container::

   .. container::

      =============== ===============
      ryder.groundnut R Documentation
      =============== ===============

      .. rubric:: RCB experiment of groundut, wet and dry yields
         :name: rcb-experiment-of-groundut-wet-and-dry-yields

      .. rubric:: Description
         :name: description

      RCB experiment of groundut, wet and dry yields

      .. rubric:: Format
         :name: format

      A data frame with 24 observations on the following 6 variables.

      ``block``
         block

      ``row``
         row

      ``col``
         column

      ``gen``
         genotype factor

      ``wet``
         wet yield, kg/plot

      ``dry``
         dry yield, kg/plot

      .. rubric:: Details
         :name: details

      Ryder (1981) uses this data to discuss the importance of looking
      at the field plan for an experiment. Based on analysis of the
      residuals, he suggests that varieties A and B in block 3 may have
      had their data swapped.

      .. rubric:: Source
         :name: source

      K. Ryder (1981). Field plans: why the biometrician finds them
      useful, *Experimental Agriculture*, 17, 243–256.

      https://doi.org/10.1017/S0014479700011601

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(ryder.groundnut)
           dat <- ryder.groundnut

           # RCB model
           m1 <- lm(dry~block+gen,dat)
           dat$res1 <- resid(m1)

           # Table 3 of Ryder.  Scale up from kg/plot to kg/ha
           round(dat$res1 * 596.6,0)
           
           # Visually.  Note largest positive/negative residuals are adjacent
           libs(desplot)
           desplot(dat, res1 ~ col + row,
                   text=gen, # aspect unknown
                   main="ryder.groundnut - residuals")
           
           
           libs(desplot)
           # Swap the dry yields for two plots and re-analyze
           dat[dat$block=="B3" & dat$gen=="A", "dry"] <- 2.8
           dat[dat$block=="B3" & dat$gen=="B", "dry"] <- 1.4
           m2 <- lm(dry~block+gen, dat)
           dat$res2 <- resid(m2)
           desplot(dat, res2 ~ col+row,
                   # aspect unknown
                   text=gen, main="ryder.groundnut")


         ## End(Not run)
