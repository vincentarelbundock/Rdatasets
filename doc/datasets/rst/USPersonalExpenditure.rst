.. container::

   .. container::

      ===================== ===============
      USPersonalExpenditure R Documentation
      ===================== ===============

      .. rubric:: Personal Expenditure Data
         :name: personal-expenditure-data

      .. rubric:: Description
         :name: description

      This data set consists of United States personal expenditures (in
      billions of dollars) in the categories; food and tobacco,
      household operation, medical and health, personal care, and
      private education for the years 1940, 1945, 1950, 1955 and 1960.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         USPersonalExpenditure

      .. rubric:: Format
         :name: format

      A matrix with 5 rows and 5 columns.

      .. rubric:: Source
         :name: source

      The World Almanac and Book of Facts, 1962, page 756.

      .. rubric:: References
         :name: references

      Tukey, J. W. (1977) *Exploratory Data Analysis*. Addison-Wesley.

      McNeil, D. R. (1977) *Interactive Data Analysis*. Wiley.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         require(stats) # for medpolish
         USPersonalExpenditure
         medpolish(log10(USPersonalExpenditure))
