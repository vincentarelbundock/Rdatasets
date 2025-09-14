.. container::

   .. container::

      ========= ===============
      spirittax R Documentation
      ========= ===============

      .. rubric:: The spirittax dataset
         :name: the-spirittax-dataset

      .. rubric:: Description
         :name: description

      This dataset contains a list of historical tax rates for distilled
      spirits per proof gallon from TTB.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         spirittax

      .. rubric:: Format
         :name: format

      A data frame with 15 observations of 3 variables:

      FROM
         FROM, date of starting tax rate

      TO
         TO, date of ending tax rate. The last row is considered the
         present day rate indicated by the package creation date.

      RATE
         RATE, in dollars

      .. rubric:: Source
         :name: source

      http://catalog.data.gov/dataset/historical-tax-rates
