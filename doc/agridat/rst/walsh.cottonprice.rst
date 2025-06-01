.. container::

   .. container::

      ================= ===============
      walsh.cottonprice R Documentation
      ================= ===============

      .. rubric:: Acres and price of cotton 1910-1943
         :name: acres-and-price-of-cotton-1910-1943

      .. rubric:: Description
         :name: description

      Acres and price of cotton 1910-1943

      .. rubric:: Format
         :name: format

      A data frame with 34 observations on the following 9 variables.

      ``year``
         year, numeric 1910-1943

      ``acres``
         acres of cototn (1000s)

      ``cotton``
         price per pound (cents) in previous year

      ``cottonseed``
         price per ton (dollars) in previous year

      ``combined``
         cotton price/pound + 1.857 x cottonseed price/pound (cents)

      ``index``
         price index, 1911-1914=100

      ``adjcotton``
         adjusted cotton price per pound (cents) in previous year

      ``adjcottonseed``
         adjusted cottonseed price per ton (dollars) in previous year

      ``adjcombined``
         adjusted combined price/pound (cents)

      .. rubric:: Details
         :name: details

      The 'index' is a price index for all farm commodities.

      .. rubric:: Source
         :name: source

      R.M. Walsh (1944). Response to Price in Production of Cotton and
      Cottonseed, *Journal of Farm Economics*, 26, 359-372.
      https://doi.org/10.2307/1232237

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

         data(walsh.cottonprice)
         dat <- walsh.cottonprice

         dat <- transform(dat, acres=acres/1000) # convert to million acres

         percentchg <- function(x){ # percent change from previous to current
           ix <- 2:(nrow(dat))
           c(NA, (x[ix]-x[ix-1])/x[ix-1])
         }

         # Compare percent change in acres with percent change in previous price
         # using constant dollars
         dat <- transform(dat, chga = percentchg(acres), chgp = percentchg(adjcombined))

         with(dat, cor(chga, chgp, use='pair')) # .501 correlation
         libs(lattice)
         xyplot(chga~chgp, dat, type=c('p','r'),
                main="walsh.cottonprice",
                xlab="Percent change in previous price", ylab="Percent change in acres")

         ## End(Not run)
