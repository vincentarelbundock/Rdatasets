.. container::

   .. container::

      ======= ===============
      jtrain3 R Documentation
      ======= ===============

      .. rubric:: jtrain3
         :name: jtrain3

      .. rubric:: Description
         :name: description

      Wooldridge Source: R.H. Dehejia and S. Wahba (1999), “Causal
      Effects in Nonexperimental Studies: Reevaluating the Evaluation of
      Training Programs,” Journal of the American Statistical
      Association 94, 1053-1062. Professor Sergio Firpo, at the
      University of British Columbia, has used this data set in his
      recent work, and he kindly provided it to me. This data set is a
      subset of that originally used by Lalonde in the study cited for
      JTRAIN2.RAW. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      ::

         data('jtrain3')

      .. rubric:: Format
         :name: format

      A data.frame with 2675 observations on 20 variables:

      -  **train:** =1 if in job training

      -  **age:** in years, 1977

      -  **educ:** years of schooling

      -  **black:** =1 if black

      -  **hisp:** =1 if Hispanic

      -  **married:** =1 if married

      -  **re74:** '74 earnings, $1000s '82

      -  **re75:** '75 earnings, $1000s '82

      -  **unem75:** =1 if unem. all of '75

      -  **unem74:** =1 if unem. all of '74

      -  **re78:** '78 earnings, $1000s '82

      -  **agesq:** age^2

      -  **trre74:** train*re74

      -  **trre75:** train*re75

      -  **trun74:** train*unem74

      -  **trun75:** train*unem75

      -  **avgre:** (re74 + re75)/2

      -  **travgre:** train*avgre

      -  **unem78:** =1 if unem. all of '78

      -  **em78:** 1 - unem78

      .. rubric:: Used in Text
         :name: used-in-text

      pages 340-341, 480-481

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      ::

          str(jtrain3)
