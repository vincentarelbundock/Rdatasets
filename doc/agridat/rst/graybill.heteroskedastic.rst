.. container::

   .. container::

      ======================== ===============
      graybill.heteroskedastic R Documentation
      ======================== ===============

      .. rubric:: Multi-environment trial of wheat varieties with
         heteroskedastic yields
         :name: multi-environment-trial-of-wheat-varieties-with-heteroskedastic-yields

      .. rubric:: Description
         :name: description

      Wheat varieties with heteroskedastic yields

      .. rubric:: Format
         :name: format

      A data frame with 52 observations on the following 3 variables.

      ``env``
         environment, 13 levels

      ``gen``
         genotype, 4 levels

      ``yield``
         yield

      .. rubric:: Details
         :name: details

      Yield of 4 varieties of wheat at 13 locations in Oklahoma, USA.

      The data was used to explore variability between varieties.

      .. rubric:: Source
         :name: source

      F. A. Graybill, 1954. Variance heterogeneity in a randomized block
      design, *Biometrics*, 10, 516-520.

      .. rubric:: References
         :name: references

      Hans-Pieter Piepho, 1994. Missing observations in the analysis of
      stability. *Heredity*, 72, 141–145.
      https://doi.org/10.1038/hdy.1994.20

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(graybill.heteroskedastic)
         dat <- graybill.heteroskedastic

         # Genotypes are obviously not homoscedastic
         boxplot(yield ~ gen, dat, main="graybill.heteroskedastic")

         # Shukla stability variance of each genotype, same as Grubbs' estimate
         # Matches Piepho 1994 page 143.
         # Do not do this!  Nowadays, use mixed models instead.
         libs("reshape2")
         datm <- acast(dat, gen~env)
         w <- datm
         w <- sweep(w, 1, rowMeans(datm))
         w <- sweep(w, 2, colMeans(datm))
         w <- w + mean(datm)
         w <- rowSums(w^2)
         k=4; n=13
         sig2 <- k*w/((k-2)*(n-1)) - sum(w)/((k-1)*(k-2)*(n-1))
         ## sig2
         ##     G1     G2     G3     G4
         ## 145.98 -14.14  75.15  18.25

         var.shukla <- function(x,N){
           # Estimate variance of shukla stability statistics
           # Piepho 1994 equation (5)
           K <- length(x) # num genotypes
           S <- outer(x,x)
           S1 <- diag(S)
           S2 <- rowSums(S) - S1
           S[!upper.tri(S)] <- 0 # Make S upper triangular
           # The ith element of S3 is the sum of the upper triangular elements of S,
           # excluding the ith row and ith column
           S3 <- sum(S) - rowSums(S) - colSums(S)
           var.si2 <- 2*S1/(N-1) + 4/( (N-1)*(K-1)^2 ) * ( S2 + S3/(K-2)^2 )
           return(var.si2)
         }

         # Set negative estimates to zero
         sig2[sig2<0] <- 0

         # Variance of shukla stat. Match Piepho 1994, table 5, example 1
         var.shukla(sig2,13)
         ##        G1        G2        G3        G4 
         ## 4069.3296  138.9424 1423.0797  306.5270 


         ## End(Not run)
