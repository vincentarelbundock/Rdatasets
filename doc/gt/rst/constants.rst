.. container::

   .. container::

      ========= ===============
      constants R Documentation
      ========= ===============

      .. rubric:: The fundamental physical constants
         :name: the-fundamental-physical-constants

      .. rubric:: Description
         :name: description

      This dataset contains values for over 300 basic fundamental
      constants in nature. The values originate from the 2018 adjustment
      which is based on the latest relevant precision measurements and
      improvements of theoretical calculations. Such work has been
      carried out under the authority of the *Task Group on Fundamental
      Constants* (TGFC) of the *Committee on Data of the International
      Science Council* (CODATA). These updated values became available
      on May 20, 2019. They are published at
      http://physics.nist.gov/constants, a website of the *Fundamental
      Constants Data Center* of the *National Institute of Standards and
      Technology* (NIST), Gaithersburg, Maryland, USA.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         constants

      .. rubric:: Format
         :name: format

      A tibble with 354 rows and 4 variables:

      name
         The name of the constant.

      value
         The value of the constant.

      uncert
         The uncertainty associated with the value. If ``NA`` then the
         value is seen as an 'exact' value (e.g., an electron volt has
         the exact value of 1.602 176 634 e-19 J).

      sf_value,sf_uncert
         The number of significant figures associated with the value and
         any uncertainty value.

      units
         The units associated with the constant.

      .. rubric:: Dataset ID and Badge
         :name: dataset-id-and-badge

      DATA-12

      .. container::

         |This image of that of a dataset badge.|

      .. rubric:: Dataset Introduced
         :name: dataset-introduced

      ``v0.10.0`` (October 7, 2023)

      .. rubric:: See Also
         :name: see-also

      Other datasets: ``countrypops``, ``exibble``, ``films``,
      ``gibraltar``, ``gtcars``, ``illness``, ``metro``, ``nuclides``,
      ``peeps``, ``photolysis``, ``pizzaplace``, ``reactions``,
      ``rx_addv``, ``rx_adsl``, ``sp500``, ``sza``, ``towny``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         dplyr::glimpse(constants)

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_constants.png
