.. container::

   .. container::

      ====== ===============
      KleinI R Documentation
      ====== ===============

      .. rubric:: Klein Model I
         :name: klein-model-i

      .. rubric:: Description
         :name: description

      Klein's Model I for the US economy.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("KleinI")

      .. rubric:: Format
         :name: format

      An annual multiple time series from 1920 to 1941 with 9 variables.

      consumption
         Consumption.

      cprofits
         Corporate profits.

      pwage
         Private wage bill.

      invest
         Investment.

      capital
         Previous year's capital stock.

      gnp
         Gross national product.

      gwage
         Government wage bill.

      gexpenditure
         Government spending.

      taxes
         Taxes.

      .. rubric:: Source
         :name: source

      Online complements to Greene (2003). Table F15.1.

      https://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

      .. rubric:: References
         :name: references

      Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper
      Saddle River, NJ: Prentice Hall.

      Klein, L. (1950). *Economic Fluctuations in the United States,
      1921–1941*. New York: John Wiley.

      Maddala, G.S. (1977). *Econometrics*. New York: McGraw-Hill.

      .. rubric:: See Also
         :name: see-also

      ``Greene2003``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data("KleinI", package = "AER")
         plot(KleinI)

         ## Greene (2003), Tab. 15.3, OLS
         library("dynlm")
         fm_cons <- dynlm(consumption ~ cprofits + L(cprofits) + I(pwage + gwage), data = KleinI)
         fm_inv <- dynlm(invest ~ cprofits + L(cprofits) + capital, data = KleinI)
         fm_pwage <- dynlm(pwage ~ gnp + L(gnp) + I(time(gnp) - 1931), data = KleinI)
         summary(fm_cons)
         summary(fm_inv)
         summary(fm_pwage)

         ## More examples can be found in:
         ## help("Greene2003")
