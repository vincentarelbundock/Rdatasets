.. container::

   ===== ===============
   vote1 R Documentation
   ===== ===============

   .. rubric:: vote1
      :name: vote1

   .. rubric:: Description
      :name: description

   Wooldridge Source: From M. Barone and G. Ujifusa, The Almanac of
   American Politics, 1992. Washington, DC: National Journal. Data loads
   lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('vote1')

   .. rubric:: Format
      :name: format

   A data.frame with 173 observations on 10 variables:

   -  **state:** state postal code

   -  **district:** congressional district

   -  **democA:** =1 if A is democrat

   -  **voteA:** percent vote for A

   -  **expendA:** camp. expends. by A, $1000s

   -  **expendB:** camp. expends. by B, $1000s

   -  **prtystrA:** percent vote for president

   -  **lexpendA:** log(expendA)

   -  **lexpendB:** log(expendB)

   -  **shareA:** 100*(expendA/(expendA+expendB))

   .. rubric:: Used in Text
      :name: used-in-text

   pages 34, 39, 164, 221-222, 299, 699

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(vote1)
