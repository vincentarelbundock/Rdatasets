.. container::

   .. container::

      ============= ===============
      lillemo.wheat R Documentation
      ============= ===============

      .. rubric:: Multi-environment trial of wheat susceptibile to
         powdery mildew
         :name: multi-environment-trial-of-wheat-susceptibile-to-powdery-mildew

      .. rubric:: Description
         :name: description

      Resistance of wheat to powdery mildew

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("lillemo.wheat")

      .. rubric:: Format
         :name: format

      A data frame with 408 observations on the following 4 variables.

      ``gen``
         genotype, 24 levels

      ``env``
         environrment, 13 levels

      ``score``
         score

      ``scale``
         scale used for score

      .. rubric:: Details
         :name: details

      The data are means across reps of the original scores. Lower
      scores indicate better resistance to mildew.

      Each location used one of four different measurement scales for
      scoring resistance to powdery mildew: 0-5 scale, 1-9 scale, 0-9
      scale, percent.

      Environment codes consist of two letters for the location name and
      two digits for the year of testing. Location names: CA=Cruz Alta,
      Brazil. Ba= Bawburgh, UK. Aa=As, Norway. Ha=Hamar, Norway.
      Ch=Choryn, Poland. Ce=Cerekwica, Poland. Ma=Martonvasar, Hungary.
      Kh=Kharkiv, Ukraine. BT=Bila Tserkva, Ukraine. Gl=Glevakha,
      Ukraine. Bj=Beijing, China.

      Note, Lillemo et al. did not remove genotype effects as is
      customary when calculating Huehn's non-parametric stability
      statistics.

      In the examples below, the results do not quite match the results
      of Lillemo. This could easily be the result of the original data
      table being rounded to 1 decimal place. For example, environment
      'Aa03' had 3 reps and so the mean for genotype 1 was probably
      16.333, not 16.3.

      Used with permission of Morten Lillemo.

      Electronic data supplied by Miroslav Zoric.

      .. rubric:: Source
         :name: source

      Morten Lillemo, Ravi Sing, Maarten van Ginkel. (2011).
      Identification of Stable Resistance to Powdery Mildew in Wheat
      Based on Parametric and Nonparametric Methods Crop Sci.
      50:478-485. https://doi.org/10.2135/cropsci2009.03.0116

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(lillemo.wheat)
         dat <- lillemo.wheat

         # Change factor levels to match Lillemo
         dat$env <- as.character(dat$env)
         dat$env <- factor(dat$env,
                           levels=c("Bj03","Bj05","CA03","Ba04","Ma04",
                                    "Kh06","Gl05","BT06","Ch04","Ce04",
                                    "Ha03","Ha04","Ha05","Ha07","Aa03","Aa04","Aa05"))
         # Interesting look at different measurement scales by environment
         libs(lattice)
         qqmath(~score|env, dat, group=scale,
                as.table=TRUE, scales=list(y=list(relation="free")),
                auto.key=list(columns=4),
                main="lillemo.wheat - QQ plots by environment")


           # Change data to matrix format
           libs(reshape2)
           datm <- acast(dat, gen~env, value.var='score')
           
           # Environment means. Matches Lillemo Table 3
           apply(datm, 2, mean)
           
           # Two different transforms within envts to approximate 0-9 scale
           datt <- datm
           datt[,"CA03"] <- 1.8 * datt[,"CA03"]
           ix <- c("Ba04","Kh06","Gl05","BT06","Ha03","Ha04","Ha05","Ha07","Aa03","Aa04","Aa05")
           datt[,ix] <- apply(datt[,ix],2,sqrt)

           # Genotype means of transformed data. Matches Lillemo table 3.
           round(rowMeans(datt),2)

           # Biplot of transformed data like Lillemo Fig 2
           libs(gge)
           biplot(gge(datt, scale=FALSE), main="lillemo.wheat")
           
           # Median polish of transformed table
           m1 <- medpolish(datt)
           # Half-normal prob plot like Fig 1
           # libs(faraway)
           # halfnorm(abs(as.vector(m1$resid)))

           # Nonparametric stability statistics. Lillemo Table 4.
           huehn <- function(mat){
             # Gen in rows, Env in cols  
             nenv <- ncol(mat)
             # Corrected yield. Remove genotype effects
             # Remove the following line to match Table 4 of Lillemo
             mat <- sweep(mat, 1, rowMeans(mat)) + mean(mat)
             # Ranks in each environment
             rmat <- apply(mat, 2, rank)
             
             # Mean genotype rank across envts
             MeanRank <- apply(rmat, 1, mean)
             
             # Huehn S1
             gfun <- function(x){
               oo <- outer(x,x,"-")
               sum(abs(oo)) # sum of all absolute pairwise differences
             }
             S1 <- apply(rmat, 1, gfun)/(nenv*(nenv-1))
             
             # Huehn S2
             S2 <- apply((rmat-MeanRank)^2,1,sum)/(nenv-1)
             
             out <- data.frame(MeanRank,S1,S2)
             rownames(out) <- rownames(mat)
             return(out)
           }
           round(huehn(datm),2) # Matches table 4
           
           # I do not think phenability package gives correct values for S1
           # libs(phenability)
           # nahu(datm)
           

         ## End(Not run)
