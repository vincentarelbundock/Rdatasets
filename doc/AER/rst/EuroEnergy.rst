.. container::

   .. container::

      ========== ===============
      EuroEnergy R Documentation
      ========== ===============

      .. rubric:: European Energy Consumption Data
         :name: european-energy-consumption-data

      .. rubric:: Description
         :name: description

      Cross-section data on energy consumption for 20 European
      countries, for the year 1980.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("EuroEnergy")

      .. rubric:: Format
         :name: format

      A data frame containing 20 observations on 2 variables.

      gdp
         Real gross domestic product for the year 1980 (in million 1975
         US dollars).

      energy
         Aggregate energy consumption (in million kilograms coal
         equivalence).

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

         data("EuroEnergy")
         energy_lm <- lm(log(energy) ~ log(gdp), data = EuroEnergy)
         influence.measures(energy_lm)
