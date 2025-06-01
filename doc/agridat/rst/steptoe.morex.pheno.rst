.. container::

   .. container::

      =================== ===============
      steptoe.morex.pheno R Documentation
      =================== ===============

      .. rubric:: Multi-environment trial of barley, phenotypic and
         genotypic data for a population of Steptoe x Morex
         :name: multi-environment-trial-of-barley-phenotypic-and-genotypic-data-for-a-population-of-steptoe-x-morex

      .. rubric:: Description
         :name: description

      Phenotypic and genotypic data for a barley population of Steptoe x
      Morex. There were 150 doubled haploid crosses, evaluated at 223
      markers. Phenotypic data wascollected on 8 traits at 16
      environments.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("steptoe.morex.pheno")

      .. rubric:: Format
         :name: format

      ``steptoe.morex.pheno`` is a data.frame of phenotypic data with
      2432 observations on 10 variables:

      ``gen``
         genotype factor with parents Steptoe and Morex, and 150 crosses
         SM1, SM2, ..., SM200. Not all 200 numbers were used.

      ``env``
         environment, 16 levels

      ``amylase``
         alpha amylase (20 Deg Units)

      ``diapow``
         diastatic power (degree units)

      ``hddate``
         heading date (julian days)

      ``lodging``
         lodging (percent)

      ``malt``
         malt extract (percent)

      ``height``
         plant height (centimeters)

      ``protein``
         grain protein (percent)

      ``yield``
         grain yield (Mt/Ha)

      ``steptoe.morex.geno`` is a ``cross`` object from the ``qtl``
      package with genotypic data of the 223 markers for the 150 crosses
      of Steptoe x Morex.

      .. rubric:: Details
         :name: details

      As described by Hayes et al (1993), a population of 150 barley
      doubled haploid (DH) lines was developed by the Oregon State
      University Barley Breeding Program for the North American Barley
      Genome Mapping Project. The parentage of the population is Steptoe
      / Morex.

      Steptoe is the dominant feed barley in the northwestern U.S.

      Morex is the spring U.S. malting quality standard.

      Seed from a single head of each parent was used to create the F1,
      from which a set of 150 lines was developed.

      Phenotypic values for the parents Steptoe and Morex are here:
      https://wheat.pw.usda.gov/ggpages/SxM/parental_values.html

      There are 16 locations, The average across locations is in column
      17. Not all traits were collected at every location. At each
      location, all 150 lines were included in block 1, a random subset
      of 50 lines was used in block 2.

      The traits are: Alpha Amylase (20 Deg Units), Diastatic Power (Deg
      Units), Heading Date (Julian Days), Lodging (percent), Malt
      Extract (percent), Grain Protein (percent), Grain Yield (Mt/Ha).

      Phenotypic values of the 150 lines in the F1 population are here:
      https://wheat.pw.usda.gov/ggpages/SxM/phenotypes.html

      Each trait is in a different file, in which each block of numbers
      represents one location.

      The 223-markers Steptoe/Morex base map is here:
      https://wheat.pw.usda.gov/ggpages/SxM/smbasev2.map

      The data for these markers on the 150 lines is
      https://wheat.pw.usda.gov/ggpages/SxM/smbasev2.mrk

      These were hand-assembled (e.g. marker distances were cumulated to
      marker positions) into a .csv file which was then imported into R
      using ``qtl::read.cross``. The class was manually changed from
      c('bc','cross') to c('dh','cross').

      The marker data is coded as A = Steptoe, B = Morex, - = missing.

      The pedigrees for the 150 lines are found here:
      https://wheat.pw.usda.gov/ggpages/SxM/pedigrees.html

      Data provided by the United States Department of Agriculture.

      .. rubric:: Source
         :name: source

      The Steptoe x Morex Barley Mapping Population. Map: Version 2,
      August 1, 1995 https://wheat.pw.usda.gov/ggpages/SxM. Accessed Jan
      2015.

      .. rubric:: References
         :name: references

      P.M. Hayes, B.H. Liu, S.J. Knapp, F. Chen, B. Jones, T. Blake, J.
      Franckowiak, D. Rasmusson, M. Sorrells, S.E. Ullrich, and others.
      1993. Quantitative trait locus effects and environmental
      interaction in a sample of North American barley germplasm.
      *Theoretical and Applied Genetics*, 87, 392–401.
      https://doi.org/10.1007/BF01184929

      Ignacio Romagosa, Steven E. Ullrich, Feng Han, Patrick M. Hayes.
      1996. Use of the additive main effects and multiplicative
      interaction model in QTL mapping for adaptation in barley. *Theor
      Appl Genet*, 93, 30-37. https://doi.org/10.1007/BF00225723

      Piepho, Hans-Peter. 2000. A mixed-model approach to mapping
      quantitative trait loci in barley on the basis of multiple
      environment data. *Genetics*, 156, 2043-2050.

      M. Malosetti, J. Voltas, I. Romagosa, S.E. Ullrich, F.A. van
      Eeuwijk. (2004). Mixed models including environmental covariables
      for studying QTL by environment interaction. *Euphytica*, 137,
      139-145. https://doi.org/10.1023/B:EUPH.0000040511.4638

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(steptoe.morex.pheno)
           dat <- steptoe.morex.pheno

           # Visualize GxE of traits
           libs(lattice)
           redblue <- colorRampPalette(c("firebrick", "lightgray", "#375997"))
           levelplot(amylase~env*gen, data=dat, col.regions=redblue,
                     scales=list(x=list(rot=90)), main="amylase")
           ## levelplot(diapow~env*gen, data=dat, col.regions=redblue,
           ##           scales=list(x=list(rot=90)), main="diapow")
           ## levelplot(hddate~env*gen, data=dat, col.regions=redblue,
           ##           scales=list(x=list(rot=90)), main="hddate")
           ## levelplot(lodging~env*gen, data=dat, col.regions=redblue,
           ##           scales=list(x=list(rot=90)), main="lodging")
           ## levelplot(malt~env*gen, data=dat, col.regions=redblue,
           ##           scales=list(x=list(rot=90)), main="malt")
           ## levelplot(height~env*gen, data=dat, col.regions=redblue,
           ##           scales=list(x=list(rot=90)), main="height")
           ## levelplot(protein~env*gen, data=dat, col.regions=redblue,
           ##           scales=list(x=list(rot=90)), main="protein")
           ## levelplot(yield~env*gen, data=dat, col.regions=redblue,
           ##           scales=list(x=list(rot=90)), main="yield")


           # Calculate avg yield for each loc as in Romagosa 1996, table 3
           # t(t(round(tapply(dat$yield, dat$env, FUN=mean),2)))
           # SKo92,SKg92 means in table 3 are switched.  Who is right, him or me?

           # Draw marker map
           libs(qtl)
           data(steptoe.morex.geno)
           datg <- steptoe.morex.geno
           qtl::plot.map(datg, main="steptoe.morex.geno")
           qtl::plotMissing(datg)
             

           # This is a very rudimentary example.
           # The 'wgaim' function works interactively, but fails during
           # devtools::check().
           if(0 & require("asreml", quietly=TRUE)){
             libs(asreml)

             # Fit a simple multi-environment mixed model
             m1 <- asreml(yield ~ env, data=dat, random=~gen)
           
             libs(wgaim)
             wgaim::linkMap(datg)
             # Create an interval object for wgaim
             dati <- wgaim::cross2int(datg, id="gen")
             
             # Whole genome qtl
             q1 <- wgaim::wgaim(m1, intervalObj=dati,
                                merge.by="gen", na.action=na.method(x="include"))
             #wgaim::linkMap(q1, dati) # Visualize
             wgaim::outStat(q1, dati) # outlier statistic
             summary(q1, dati)  # Table of important intervals
             # Chrom Left Marker dist(cM) Right Marker dist(cM)   Size Pvalue 
             #     3      ABG399     52.6       BCD828     56.1  0.254  0.000  45.0
             #     5      MWG912      148      ABG387A    151.2  0.092  0.001   5.9
             #     6     ABC169B     64.8       CDO497     67.5 -0.089  0.001   5.6
           }
           

         ## End(Not run)
