.. container::

   .. container::

      ======= ===============
      pension R Documentation
      ======= ===============

      .. rubric:: pension
         :name: pension

      .. rubric:: Description
         :name: description

      Wooldridge Source: L.E. Papke (2004), “Individual Financial
      Decisions in Retirement Saving: The Role of
      Participant-Direction,” Journal of Public Economics 88, 39-61.
      Professor Papke kindly provided the data. She collected them from
      the National Longitudinal Survey of Mature Women, 1991. Data loads
      lazily.

      .. rubric:: Usage
         :name: usage

      ::

         data('pension')

      .. rubric:: Format
         :name: format

      A data.frame with 194 observations on 19 variables:

      -  **id:** family identifier

      -  **pyears:** years in pension plan

      -  **prftshr:** =1 if profit sharing plan

      -  **choice:** =1 if can choose method invest

      -  **female:** =1 if female

      -  **married:** =1 if married

      -  **age:** age in years

      -  **educ:** highest grade completed

      -  **finc25:** $15,000 < faminc92 <= $25,000

      -  **finc35:** $25,000 < faminc92 <= $35,000

      -  **finc50:** $35,000 < faminc92 <= $50,000

      -  **finc75:** $50,000 < faminc92 <= $75,000

      -  **finc100:** $75,000 < faminc92 <= $100,000

      -  **finc101:** $100,000 < faminc92

      -  **wealth89:** net worth, 1989, $1000

      -  **black:** =1 if black

      -  **stckin89:** =1 if owned stock in 1989

      -  **irain89:** =1 if had IRA in 1989

      -  **pctstck:** 0=mstbnds,50=mixed,100=mststcks

      .. rubric:: Used in Text
         :name: used-in-text

      page 506

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      ::

          str(pension)
