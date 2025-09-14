.. container::

   .. container::

      ========== ===============
      tobaccotax R Documentation
      ========== ===============

      .. rubric:: The tobaccotax dataset
         :name: the-tobaccotax-dataset

      .. rubric:: Description
         :name: description

      This dataset contains a list of historical tax rates for tobacco
      and tobacco products from TTB.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         tobaccotax

      .. rubric:: Format
         :name: format

      A data frame with 46 observations of 3 variables:

      ITEM
         ITEM, specific tobacco-based product.

      FROM
         FROM, date of starting tax rate. The first date does not have a
         listed day, so 09/01/1862 is used.

      TO
         TO, date of ending tax rate. The last row is considered the
         present day rate indicated by the package creation date.

      RATE
         RATE, in dollars. Small cigarettes through Large cigars are per
         thousand. Chewing tobacco through Roll your own are per pound.
         Cigarette papers and tubes are per 50.

      .. rubric:: Source
         :name: source

      http://catalog.data.gov/dataset/historical-tax-rates
