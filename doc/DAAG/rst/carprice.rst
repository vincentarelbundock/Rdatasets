.. container::

   .. container::

      ======== ===============
      carprice R Documentation
      ======== ===============

      .. rubric:: US Car Price Data
         :name: us-car-price-data

      .. rubric:: Description
         :name: description

      U.S. data extracted from ``Cars93``, a data frame in the MASS
      package.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         carprice

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      Type
         Type of car, e.g. Sporty, Van, Compact

      Min.Price
         Price for a basic model

      Price
         Price for a mid-range model

      Max.Price
         Price for a ‘premium’ model

      Range.Price
         Difference between Max.Price and Min.Price

      RoughRange
         Rough.Range plus some N(0,.0001) noise

      gpm100
         The number of gallons required to travel 100 miles

      MPG.city
         Average number of miles per gallon for city driving

      MPG.highway
         Average number of miles per gallon for highway driving

      .. rubric:: Source
         :name: source

      MASS package

      .. rubric:: References
         :name: references

      Venables, W.N.\\ and Ripley, B.D., 4th edn 2002. Modern Applied
      Statistics with S. Springer, New York.

      See also ‘R’ Complements to Modern Applied Statistics with S-Plus,
      available from http://www.stats.ox.ac.uk/pub/MASS3/

      .. rubric:: Examples
         :name: examples

      .. code:: R

          
         print("Multicollinearity - Example 6.8")
         pairs(carprice[,-c(1,8,9)])

         carprice1.lm <- lm(gpm100 ~ Type+Min.Price+Price+Max.Price+Range.Price,
             data=carprice)
         round(summary(carprice1.lm)$coef,3)
         pause()

         alias(carprice1.lm)
         pause()

         carprice2.lm <- lm(gpm100 ~ Type+Min.Price+Price+Max.Price+RoughRange, data=carprice)
         round(summary(carprice2.lm)$coef, 2)
         pause()

         carprice.lm <- lm(gpm100 ~ Type + Price, data = carprice)
         round(summary(carprice.lm)$coef,4)  
         pause()

         summary(carprice1.lm)$sigma   # residual standard error when fitting all 3 price variables
         pause()

         summary(carprice.lm)$sigma    # residual standard error when only price is used
         pause()

         vif(lm(gpm100 ~ Price, data=carprice)) # Baseline Price
         pause()

         vif(carprice1.lm)    # includes Min.Price, Price & Max.Price
         pause()

         vif(carprice2.lm)    # includes Min.Price, Price, Max.Price & RoughRange
         pause()

         vif(carprice.lm)     # Price alone
