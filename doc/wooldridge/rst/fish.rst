.. container::

   ==== ===============
   fish R Documentation
   ==== ===============

   .. rubric:: fish
      :name: fish

   .. rubric:: Description
      :name: description

   Wooldridge Source: K Graddy (1995), “Testing for Imperfect
   Competition at the Fulton Fish Market,” RAND Journal of Economics 26,
   75-92. Professor Graddy's collaborator on a later paper, Professor
   Joshua Angrist at MIT, kindly provided me with these data. Data loads
   lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('fish')

   .. rubric:: Format
      :name: format

   A data.frame with 97 observations on 20 variables:

   -  **prca:** price for Asian buyers

   -  **prcw:** price for white buyers

   -  **qtya:** quantity sold to Asians

   -  **qtyw:** quantity sold to whites

   -  **mon:** =1 if Monday

   -  **tues:** =1 if Tuesday

   -  **wed:** =1 if Wednesday

   -  **thurs:** =1 if Thursday

   -  **speed2:** min past 2 days wind speeds

   -  **wave2:** avg max last 2 days wave height

   -  **speed3:** 3 day lagged max windspeed

   -  **wave3:** avg max wave hghts of 3 & 4 day lagged hghts

   -  **avgprc:** ((prca*qtya) + (prcw*qtyw))/(qtya + qtyw)

   -  **totqty:** qtya + qtyw

   -  **lavgprc:** log(avgprc)

   -  **ltotqty:** log(totqty)

   -  **t:** time trend

   -  **lavgp_1:** lavgprc[_n-1]

   -  **gavgprc:** lavgprc - lavgp_1

   -  **gavgp_1:** gavgprc[_n-1]

   .. rubric:: Notes
      :name: notes

   This is a nice example of how to go about finding exogenous variables
   to use as instrumental variables. Often, weather conditions can be
   assumed to affect supply while having a negligible effect on demand.
   If so, the weather variables are valid instrumental variables for
   price in the demand equation. It is a simple matter to test whether
   prices vary with weather conditions by estimating the reduced form
   for price.

   Used in Text: pages 443, 580

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(fish)
