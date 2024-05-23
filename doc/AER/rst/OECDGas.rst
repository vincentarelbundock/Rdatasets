.. container::

   .. container::

      ======= ===============
      OECDGas R Documentation
      ======= ===============

      .. rubric:: Gasoline Consumption Data
         :name: gasoline-consumption-data

      .. rubric:: Description
         :name: description

      Panel data on gasoline consumption in 18 OECD countries over 19
      years, 1960–1978.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("OECDGas")

      .. rubric:: Format
         :name: format

      A data frame containing 342 observations on 6 variables.

      country
         Factor indicating country.

      year
         Year.

      gas
         Logarithm of motor gasoline consumption per car.

      income
         Logarithm of real per-capita income.

      price
         Logarithm of real motor gasoline price.

      cars
         Logarithm of the stock of cars per-capita.

      .. rubric:: Source
         :name: source

      The data is from Baltagi (2002).

      .. rubric:: References
         :name: references

      Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

      Baltagi, B.H. and Griffin, J.M. (1983). Gasoline Demand in the
      OECD: An Application of Pooling and Testing Procedures. *European
      Economic Review*, **22**, 117–137.

      .. rubric:: See Also
         :name: see-also

      ``Baltagi2002``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data("OECDGas")

         library("lattice")
         xyplot(exp(cars) ~ year | country, data = OECDGas, type = "l")
         xyplot(exp(gas) ~ year | country, data = OECDGas, type = "l")
