.. container::

   .. container::

      ============== ===============
      gregory.cotton R Documentation
      ============== ===============

      .. rubric:: Factorial experiment of cotton in Sudan.
         :name: factorial-experiment-of-cotton-in-sudan.

      .. rubric:: Description
         :name: description

      Factorial experiment of cotton in Sudan.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("gregory.cotton")

      .. rubric:: Format
         :name: format

      A data frame with 144 observations on the following 6 variables.

      ``yield``
         yield

      ``year``
         year

      ``nitrogen``
         nitrogen level

      ``date``
         sowing date

      ``water``
         irrigation amount

      ``spacing``
         spacing between plants

      .. rubric:: Details
         :name: details

      Experiment conducted in Sudan at the Gezira Research Farm in
      1929-1930 and 1930-1931. The effects on yield of four factors was
      studied in all possible combinations.

      Sowing dates in 1929: D1 = Jul 24, D2 = Aug 11, D3 = Sep 2, D4 =
      Sep 25.

      Spacing: S1 = 25 cm between holes, S2 = 50 cm, S3 = 75 cm. The
      usual spacing is 50-70 cm.

      Irrigation: I1 = Light, I2 = Medium, I3 = Heavy.

      Nitrogen: N0 = None/Control, N1 = 600 rotls/feddan.

      In each year there were 4*3*2*2=72 treatments, each replicated
      four times. The means are given here.

      Gregory (1932) has two interesting graphics: 1. radial bar plot 2.
      photographs of 3D model of treatment means.

      .. rubric:: Source
         :name: source

      Gregory, FG and Crowther, F and Lambert, AR (1932). The
      interrelation of factors controlling the production of cotton
      under irrigation in the Sudan. *The Journal of Agricultural
      Science*, 22, 617-638. Table 1, 10.
      https://doi.org/10.1017/S0021859600054137

      .. rubric:: References
         :name: references

      Paterson, D. Statistical Technique in Agricultural Research, p.
      211.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(gregory.cotton)
         dat <- gregory.cotton

         # Main effect means, Gregory table 2
         ## libs(dplyr)
         ## dat 
         ## dat 
         ## dat 
         ## dat 


         # Figure 2 of Gregory. Not recommended, but an interesting exercise.
         # https://stackoverflow.com/questions/13887365
         if(FALSE){
           libs(ggplot2)
           d1 <- subset(dat, year=="Y1")
           d1 <- transform(d1, grp=factor(paste(date,nitrogen,water,spacing)))
           d1 <- d1[order(d1$grp),] # for angles
           # Rotate labels on the left half 180 deg. First 18, last 18 labels
           d1$ang <- 90+seq(from=(360/nrow(d1))/1.5, to=(1.5*(360/nrow(d1)))-360,
                            length.out=nrow(d1))+80
           d1$ang[1:18] <- d1$ang[1:18] + 180
           d1$ang[55:72] <- d1$ang[55:72] + 180
           # Lables on left half to right-adjusted
           d1$hjust <- 0
           d1$hjust[1:18] <- d1$hjust[55:72] <- 1
           
           gg <- ggplot(d1, aes(x=grp,y=yield,fill=factor(spacing))) +
             geom_col() +
             guides(fill=FALSE) + # no legend for 'spacing'
             coord_polar(start=-pi/2) + # default is to start at top
             labs(title="gregory.cotton 1929",x="",y="",label="") +
             # The bar columns are centered on 1:72, subtract 0.5 to add radial axes
             geom_vline(xintercept = seq(1, 72, by=3)-0.5, color="gray", size=.25) +
             geom_vline(xintercept = seq(1, 72, by=18)-0.5, size=1) +
             geom_vline(xintercept = seq(1, 72, by=9)-0.5, size=.5) +
             geom_hline(yintercept=c(1,2,3)) + 
             geom_text(data=d1, aes(x=grp, y=max(yield), label=grp, angle=ang, hjust=hjust),
                       size=2) +
             theme(panel.background=element_blank(),
                   axis.title=element_blank(),
                   panel.grid=element_blank(),
                   axis.text.x=element_blank(),
                   axis.text.y=element_blank(),
                   axis.ticks=element_blank() )
           print(gg)
           
         }

         ## End(Not run)
