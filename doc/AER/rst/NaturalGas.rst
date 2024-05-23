.. container::

   .. container::

      ========== ===============
      NaturalGas R Documentation
      ========== ===============

      .. rubric:: Natural Gas Data
         :name: natural-gas-data

      .. rubric:: Description
         :name: description

      Panel data originating from 6 US states over the period 1967–1989.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("NaturalGas")

      .. rubric:: Format
         :name: format

      A data frame containing 138 observations on 10 variables.

      state
         factor. State abbreviation.

      statecode
         factor. State Code.

      year
         factor coding year.

      consumption
         Consumption of natural gas by the residential sector.

      price
         Price of natural gas

      eprice
         Price of electricity.

      oprice
         Price of distillate fuel oil.

      lprice
         Price of liquefied petroleum gas.

      heating
         Heating degree days.

      income
         Real per-capita personal income.

      .. rubric:: Source
         :name: source

      The data are from Baltagi (2002).

      .. rubric:: References
         :name: references

      Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

      .. rubric:: See Also
         :name: see-also

      ``Baltagi2002``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data("NaturalGas")
         summary(NaturalGas)
