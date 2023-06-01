.. container::

   ====== ===============
   USGasB R Documentation
   ====== ===============

   .. rubric:: US Gasoline Market Data (1950–1987, Baltagi)
      :name: USGasB

   .. rubric:: Description
      :name: description

   Time series data on the US gasoline market.

   .. rubric:: Usage
      :name: usage

   ::

      data("USGasB")

   .. rubric:: Format
      :name: format

   An annual multiple time series from 1950 to 1987 with 6 variables.

   cars
      Stock of cars.

   gas
      Consumption of motor gasoline (in 1000 gallons).

   price
      Retail price of motor gasoline.

   population
      Population.

   gnp
      Real gross national product (in 1982 dollars).

   deflator
      GNP deflator (1982 = 100).

   .. rubric:: Source
      :name: source

   The data are from Baltagi (2002).

   .. rubric:: References
      :name: references

   Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

   .. rubric:: See Also
      :name: see-also

   ``Baltagi2002``, ``USGasG``

   .. rubric:: Examples
      :name: examples

   ::

      data("USGasB")
      plot(USGasB)
