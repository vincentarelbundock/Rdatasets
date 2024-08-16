.. container::

   .. container::

      ========== ===============
      photolysis R Documentation
      ========== ===============

      .. rubric:: Data on photolysis rates for gas-phase organic
         compounds
         :name: data-on-photolysis-rates-for-gas-phase-organic-compounds

      .. rubric:: Description
         :name: description

      The ``photolysis`` dataset contains numerical values for
      describing the photolytic degradation pathways of 25 compounds of
      relevance in atmospheric chemistry. Many volatile organic
      compounds (VOCs) are emitted in substantial quantities from both
      biogenic and anthropogenic sources, and they can have a major
      influence on the chemistry of the lower atmosphere. A portion of
      these can be transformed into other VOCs via the energy provided
      from light.

      In order to realistically predict the composition of the
      atmosphere and how it evolves over time, we need accurate
      estimates of photolysis rates. The data provided here in
      ``photolysis`` allows for computations of photolysis rates (*J*,
      having units of ``s^-1``) as a function of the solar zenith angle
      (SZA). Having such values is essential when deploying atmospheric
      chemistry models.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         photolysis

      .. rubric:: Format
         :name: format

      A tibble with 34 rows and 10 variables:

      compd_name
         The name of the primary compound undergoing photolysis.

      cmpd_formula
         The chemical formula of the compound.

      products
         A product pathway for the photolysis of the compound.

      type
         The type of organic compound undergoing photolysis.

      l, m, n
         The parameter values given in the ``l``, ``m``, and ``n``
         columns can be used to calculate the photolysis rate (*J*) as a
         function of the solar zenith angle (*X*, in radians) through
         the expression: ``J = l * cos(X)^m * exp(-n * sec(X))``.

      quantum_yield
         In the context of photolysis reactions, this is the efficiency
         of a given photolytic reaction. In other words, it's the number
         of product molecules formed over the number of photons
         absorbed.

      wavelength_nm, sigma_298_cm2
         The ``wavelength_nm`` and ``sigma_298_cm2`` columns provide
         photoabsorption data for the compound undergoing photolysis.
         The values in ``wavelength_nm`` provide the wavelength of light
         in nanometer units; the ``sigma_298_cm2`` values are paired
         with the ``wavelength_nm`` values and they are in units of
         ``⁠cm^2 molecule^-1⁠``.

      .. rubric:: Examples
         :name: examples

      Here is a glimpse at the data available in ``photolysis``.

      .. container:: sourceCode r

         ::

            dplyr::glimpse(photolysis)
            #> Rows: 34
            #> Columns: 10
            #> $ cmpd_name     <chr> "ozone", "ozone", "hydrogen peroxide", "nitrogen dioxide~
            #> $ cmpd_formula  <chr> "O3", "O3", "H2O2", "NO2", "NO3", "NO3", "HONO", "HNO3",~
            #> $ products      <chr> "-> O(^1D) + O2", "-> O(^3P) + O2", "-> OH + OH", "-> NO~
            #> $ type          <chr> "inorganic reactions", "inorganic reactions", "inorganic~
            #> $ l             <dbl> 6.073e-05, 4.775e-04, 1.041e-05, 1.165e-02, 2.485e-02, 1~
            #> $ m             <dbl> 1.743, 0.298, 0.723, 0.244, 0.168, 0.155, 0.261, 1.230, ~
            #> $ n             <dbl> 0.474, 0.080, 0.279, 0.267, 0.108, 0.125, 0.288, 0.307, ~
            #> $ quantum_yield <dbl> NA, NA, 1.000, NA, 1.000, 1.000, 1.000, 1.000, NA, NA, N~
            #> $ wavelength_nm <chr> "290,291,292,293,294,295,296,297,298,299,300,301,302,303~
            #> $ sigma_298_cm2 <chr> "1.43E-18,1.27E-18,1.11E-18,9.94E-19,8.68E-19,7.69E-19,6~

      .. rubric:: Dataset ID and Badge
         :name: dataset-id-and-badge

      DATA-15

      .. container::

         |This image of that of a dataset badge.|

      .. rubric:: Dataset Introduced
         :name: dataset-introduced

      ``v0.11.0``

      .. rubric:: See Also
         :name: see-also

      Other datasets: ``constants``, ``countrypops``, ``exibble``,
      ``films``, ``gibraltar``, ``gtcars``, ``illness``, ``metro``,
      ``nuclides``, ``peeps``, ``pizzaplace``, ``reactions``,
      ``rx_addv``, ``rx_adsl``, ``sp500``, ``sza``, ``towny``

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_photolysis.png
