.. container::

   .. container::

      ==================== ===============
      lavoranti.eucalyptus R Documentation
      ==================== ===============

      .. rubric:: Height of Eucalyptus trees in southern Brazil
         :name: height-of-eucalyptus-trees-in-southern-brazil

      .. rubric:: Description
         :name: description

      Height of Eucalyptus trees in southern Brazil

      .. rubric:: Format
         :name: format

      A data frame with 490 observations on the following 4 variables.

      ``gen``
         genotype (progeny) factor

      ``origin``
         origin of progeny

      ``loc``
         location

      ``height``
         height, meters

      .. rubric:: Details
         :name: details

      The genotypes originated from three different locations in
      Queensland, Australia, and were tested in southern Brazil. The
      experiment was conducted as a randomized complete block design
      with 6 plants per plot and 10 blocks. Mean tree height is
      reported.

      The testing locations are described in the following table:

      +-----+-------+-------+-------+-------+-------+-------+-------+-------+
      | Loc | City  | Lat   | Long  | Alt   | Avg   | Avg   | Avg   | P     |
      |     |       | (S)   | (W)   | itude | min   | max   | temp  | recip |
      |     |       |       |       |       | temp  | temp  | (C)   | (mm)  |
      +-----+-------+-------+-------+-------+-------+-------+-------+-------+
      | L1  | Barra | 30.33 | 51.23 | 30    | 9     | 25    | 19    | 1400  |
      |     | Rib   |       |       |       |       |       |       |       |
      |     | eiro, |       |       |       |       |       |       |       |
      |     | RS    |       |       |       |       |       |       |       |
      +-----+-------+-------+-------+-------+-------+-------+-------+-------+
      | L2  | Tel   | 24.25 | 20.48 | 850   | 11    | 26    | 19    | 1480  |
      |     | emaco |       |       |       |       |       |       |       |
      |     | B     |       |       |       |       |       |       |       |
      |     | orba, |       |       |       |       |       |       |       |
      |     | PR    |       |       |       |       |       |       |       |
      +-----+-------+-------+-------+-------+-------+-------+-------+-------+
      | L3  | Boa   | 21.95 | 48.53 | 540   | 15    | 23    | 21    | 1300  |
      |     | Expe  |       |       |       |       |       |       |       |
      |     | ranca |       |       |       |       |       |       |       |
      |     | de    |       |       |       |       |       |       |       |
      |     | Sul,  |       |       |       |       |       |       |       |
      |     | SP    |       |       |       |       |       |       |       |
      +-----+-------+-------+-------+-------+-------+-------+-------+-------+
      | L4  | Guan  | 18.66 | 43    | 900   | 14    | 24    | 19    | 1600  |
      |     | haes, |       |       |       |       |       |       |       |
      |     | MG    |       |       |       |       |       |       |       |
      +-----+-------+-------+-------+-------+-------+-------+-------+-------+
      | L5  | Ipat  | 19.25 | 42.33 | 250   | 15    | 24    | 22    | 1250  |
      |     | inga, |       |       |       |       |       |       |       |
      |     | MG    |       |       |       |       |       |       |       |
      +-----+-------+-------+-------+-------+-------+-------+-------+-------+
      | L6  | Ara   | 19.8  | 40.28 | 50    | 15    | 26    | 24    | 1360  |
      |     | cruz, |       |       |       |       |       |       |       |
      |     | ES    |       |       |       |       |       |       |       |
      +-----+-------+-------+-------+-------+-------+-------+-------+-------+
      | L7  | Cac   | 23.05 | 45.76 | 650   | 14    | 24    | 20    | 1260  |
      |     | apva, |       |       |       |       |       |       |       |
      |     | SP    |       |       |       |       |       |       |       |
      +-----+-------+-------+-------+-------+-------+-------+-------+-------+

      Arciniegas-Alarcon (2010) used the 'Ravenshoe' subset of the data
      to illustrate imputation of missing values.

      .. rubric:: Source
         :name: source

      O J Lavoranti (2003). Estabilidade e adaptabilidade fenotipica
      atraves da reamostragem bootstrap no modelo AMMI, PhD thesis,
      University of Sao Paulo, Brazil.

      .. rubric:: References
         :name: references

      Arciniegas-Alarcon, S. and Garcia-Pena, M. and dos Santos Dias,
      C.T. and Krzanowski, W.J. (2010). An alternative methodology for
      imputing missing data in trials with genotype-by-environment
      interaction, *Biometrical Letters*, 47, 1-14.
      https://doi.org/10.2478/bile-2014-0006

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         # Arciniegas-Alarcon et al use SVD and regression to estimate missing values.
         # Partition the matrix X as a missing value xm, row vector xr1, column
         # vector xc1, and submatrix X11
         # X = [ xm  xr1 ]
         #     [ xc1 X11 ] and let X11 = UDV'.
         # Estimate the missing value xm = xr1 V D^{-1} U' xc1

         data(lavoranti.eucalyptus)
         dat <- lavoranti.eucalyptus

         libs(lattice)
         levelplot(height~loc*gen, dat, main="lavoranti.eucalyptus - GxE heatmap")

         dat <- droplevels(subset(dat, origin=="Ravenshoe"))
         libs(reshape2)
         dat <- acast(dat, gen~loc, value.var='height')

         dat[1,1] <- NA
         x11 <- dat[-1,][,-1]
         X11.svd <- svd(x11)
         xc1 <- dat[-1,][,1]
         xr1 <- dat[,-1][1,]
         xm <- xr1 
         xm # = 18.29, Original value was 17.4


         ## End(Not run)
