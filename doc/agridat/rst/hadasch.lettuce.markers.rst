.. container::

   .. container::

      =============== ===============
      hadasch.lettuce R Documentation
      =============== ===============

      .. rubric:: Lettuce resistance to downy mildew resistance (with
         marker data)
         :name: lettuce-resistance-to-downy-mildew-resistance-with-marker-data

      .. rubric:: Description
         :name: description

      Lettuce resistance to downy mildew resistance (with marker data).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("hadasch.lettuce")

      .. rubric:: Format
         :name: format

      A data frame with 703 observations on the following 4 variables.

      ``loc``
         locations

      ``gen``
         genotype

      ``rep``
         replicate

      ``dmr``
         downy mildew resistance

      .. rubric:: Details
         :name: details

      A biparental cross of 95 recombinant inbred lines of "Salinas 88"
      (susceptible) and "La Brillante" (highly resistant to downy
      mildew). The 89 RILs were evaluated in field experiments performed
      in 2010 and 2011 near Salinas, California. Each loc had a 2 or 3
      rep RCB design. There were approximately 30 plants per plot. Plots
      were scored 0 (no disease) to 5 (severe disease).

      The authors used the following model in a first-stage analysis to
      compute adjusted means for each genotype:

      y = loc + gen + gen:loc + block:loc + error

      where gen was fixed and all other terms random. The adjusted means
      were used as the response in a second stage:

      mn = 1 + Zu + error

      where Z is the design matrix of marker effects. The error term is
      fixed to have covariance matrix R be the same as from the first
      stage.

      Genotyping was performed with 95 SNPs and 205 amplified fragment
      length polymporphism markers so that a marker matrix M (89×300)
      was provided. The biallelic marker M(iw) for the ith genotype and
      the wth marker with alleles A1 (i.e. the reference allele) and A2
      was coded as 1 for A1,A1, -1 for A2,A2 and 0 for A1,A2 and A2,A2.

      The electronic version of the lettuce data are licensed CC-BY 4
      and were downloaded 20 Feb 2021.
      https://figshare.com/articles/dataset/Lettuce_trial_phenotypic_and_marker_data\_/8299493

      .. rubric:: Source
         :name: source

      Hadasch, S., I. Simko, R. J. Hayes, J. O. Ogutu, and H.P. Piepho
      (2016). Comparing the predictive abilities of phenotypic and
      marker-assisted selection methods in a biparental lettuce
      population. Plant Genome 9.
      https://doi.org/10.3835/plantgenome2015.03.0014

      .. rubric:: References
         :name: references

      Hayes, R. J., Galeano, C. H., Luo, Y., Antonise, R., & Simko, I.
      (2014). Inheritance of Decay of Fresh-cut Lettuce in a Recombinant
      Inbred Line Population from "Salinas 88" × "La Brillante". J.
      Amer. Soc. Hort. Sci., 139(4), 388-398.
      https://doi.org/10.21273/JASHS.139.4.388

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           library(agridat)
           data(hadasch.lettuce)
           data(hadasch.lettuce.markers)
           dat <- hadasch.lettuce
           datm <- hadasch.lettuce.markers
           
           libs(agridat)
           # loc 1 has 2 reps, loc 3 has higher dmr
           dotplot(dmr ~ factor(gen)|factor(loc), dat,
                 group=rep, layout=c(1,3),
                 main="hadasch.lettuce")

           # kinship matrix
           # head( tcrossprod(as.matrix(datm[,-1])) )

           if(require("asreml", quietly=TRUE)){
             libs(asreml)
             dat <- transform(dat, loc=factor(loc), gen=factor(gen), rep=factor(rep))
             m1 <- asreml(dmr ~ 1 + gen, data=dat,
                          random = ~ loc + gen:loc + rep:loc)
             p1 <- predict(m1, classify="gen")$pvals
           }
           
           libs(sommer)
           m2 <- mmer(dmr ~ 0 + gen, data=dat,
                      random = ~ loc + gen:loc + rep:loc)
           p2 <- coef(m2)
           head(p1)
           head(p2)


         ## End(Not run)
