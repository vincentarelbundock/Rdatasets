.. container::

   .. container::

      =========== ===============
      HousePrices R Documentation
      =========== ===============

      .. rubric:: House Prices in the City of Windsor, Canada
         :name: house-prices-in-the-city-of-windsor-canada

      .. rubric:: Description
         :name: description

      Sales prices of houses sold in the city of Windsor, Canada, during
      July, August and September, 1987.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("HousePrices")

      .. rubric:: Format
         :name: format

      A data frame containing 546 observations on 12 variables.

      price
         Sale price of a house.

      lotsize
         Lot size of a property in square feet.

      bedrooms
         Number of bedrooms.

      bathrooms
         Number of full bathrooms.

      stories
         Number of stories excluding basement.

      driveway
         Factor. Does the house have a driveway?

      recreation
         Factor. Does the house have a recreational room?

      fullbase
         Factor. Does the house have a full finished basement?

      gasheat
         Factor. Does the house use gas for hot water heating?

      aircon
         Factor. Is there central air conditioning?

      garage
         Number of garage places.

      prefer
         Factor. Is the house located in the preferred neighborhood of
         the city?

      .. rubric:: Source
         :name: source

      Journal of Applied Econometrics Data Archive.

      http://qed.econ.queensu.ca/jae/1996-v11.6/anglin-gencay/

      .. rubric:: References
         :name: references

      Anglin, P., and Gencay, R. (1996). Semiparametric Estimation of a
      Hedonic Price Function. *Journal of Applied Econometrics*, **11**,
      633–648.

      Verbeek, M. (2004). *A Guide to Modern Econometrics*, 2nd ed.
      Chichester, UK: John Wiley.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data("HousePrices")

         ### Anglin + Gencay (1996), Table II
         fm_ag <- lm(log(price) ~ driveway + recreation + fullbase + gasheat + 
           aircon + garage + prefer + log(lotsize) + log(bedrooms) + 
           log(bathrooms) + log(stories), data = HousePrices)

         ### Anglin + Gencay (1996), Table III
         fm_ag2 <- lm(log(price) ~ driveway + recreation + fullbase + gasheat + 
           aircon + garage + prefer + log(lotsize) + bedrooms + 
           bathrooms + stories, data = HousePrices)

         ### Verbeek (2004), Table 3.1
         fm <- lm(log(price) ~ log(lotsize) + bedrooms + bathrooms + aircon, data = HousePrices)
         summary(fm)

         ### Verbeek (2004), Table 3.2
         fm_ext <- lm(log(price) ~ . - lotsize + log(lotsize), data = HousePrices)
         summary(fm_ext)

         ### Verbeek (2004), Table 3.3
         fm_lin <- lm(price ~ . , data = HousePrices)
         summary(fm_lin)
