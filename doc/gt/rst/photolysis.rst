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

      .. rubric:: Dataset ID and Badge
         :name: dataset-id-and-badge

      DATA-15

      .. container::

         |This image of that of a dataset badge.|

      .. rubric:: Dataset Introduced
         :name: dataset-introduced

      ``v0.11.0`` (July 9, 2024)

      .. rubric:: See Also
         :name: see-also

      Other datasets: ``constants``, ``countrypops``, ``exibble``,
      ``films``, ``gibraltar``, ``gtcars``, ``illness``, ``metro``,
      ``nuclides``, ``peeps``, ``pizzaplace``, ``reactions``,
      ``rx_addv``, ``rx_adsl``, ``sp500``, ``sza``, ``towny``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         dplyr::glimpse(photolysis)

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_photolysis.png
