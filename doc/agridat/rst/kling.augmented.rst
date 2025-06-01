.. container::

   .. container::

      =============== ===============
      kling.augmented R Documentation
      =============== ===============

      .. rubric:: Augmented design of meadowfoam
         :name: augmented-design-of-meadowfoam

      .. rubric:: Description
         :name: description

      Augmented design of meadowfoam

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("kling.augmented")

      .. rubric:: Format
         :name: format

      A data frame with 68 observations on the following 7 variables.

      ``plot``
         Plot number

      ``gen``
         Genotype / Entry

      ``name``
         Genotype name

      ``block``
         Block, text

      ``tsw``
         Thousand seed weight

      ``row``
         Row ordinate

      ``col``
         Column ordinate

      .. rubric:: Details
         :name: details

      An experiment with meadowfoam. Blocks are in one direction,
      serpentine layout. There are 50 new genotypes and 3 checks
      (C1=Ross, C2=OMF183, C3=Starlight). New genotypes have 1 rep,
      checks have 6 reps. The response variable is thousand seed weight.

      .. rubric:: Source
         :name: source

      Jennifer Kling, "Introduction to Augmented Experimental Design"
      https://plant-breeding-genomics.extension.org/introduction-to-augmented-experimental-design/
      Accessed May 2022.

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(kling.augmented)
         dat <- kling.augmented
         libs(desplot,lattice,lme4)
         # Layout and yields
         desplot(dat, tsw ~ col*row, text=name, cex=1.5)

         # Mixed model, fixed blocks, random genotypes
         m1 <- lmer(tsw ~ block + (1|name), data=dat)
         ran1 <- ranef(m1, condVar=TRUE)
         ran1
         dotplot(ran1) # Caterpillar plot

         ## End(Not run)
