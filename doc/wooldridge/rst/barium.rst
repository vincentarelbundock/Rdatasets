.. container::

   ====== ===============
   barium R Documentation
   ====== ===============

   .. rubric:: barium
      :name: barium

   .. rubric:: Description
      :name: description

   Wooldridge Source: C.M. Krupp and P.S. Pollard (1999), Market
   Responses to Antidumpting Laws: Some Evidence from the U.S. Chemical
   Industry, Canadian Journal of Economics 29, 199-227. Dr. Krupp kindly
   provided the data. They are monthly data covering February 1978
   through December 1988. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('barium')

   .. rubric:: Format
      :name: format

   A data.frame with 131 observations on 31 variables:

   -  **chnimp:** Chinese imports, bar. chl.

   -  **bchlimp:** total imports bar. chl.

   -  **befile6:** =1 for all 6 mos before filing

   -  **affile6:** =1 for all 6 mos after filing

   -  **afdec6:** =1 for all 6 mos after decision

   -  **befile12:** =1 all 12 mos before filing

   -  **affile12:** =1 all 12 mos after filing

   -  **afdec12:** =1 all 12 mos after decision

   -  **chempi:** chemical production index

   -  **gas:** gasoline production

   -  **rtwex:** exchange rate index

   -  **spr:** =1 for spring months

   -  **sum:** =1 for summer months

   -  **fall:** =1 for fall months

   -  **lchnimp:** log(chnimp)

   -  **lgas:** log(gas)

   -  **lrtwex:** log(rtwex)

   -  **lchempi:** log(chempi)

   -  **t:** time trend

   -  **feb:** =1 if month is feb

   -  **mar:** =1 if month is march

   -  **apr:**

   -  **may:**

   -  **jun:**

   -  **jul:**

   -  **aug:**

   -  **sep:**

   -  **oct:**

   -  **nov:**

   -  **dec:**

   -  **percchn:** percent imports from china

   .. rubric:: Note
      :name: note

   Rather than just having intercept shifts for the different regimes,
   one could conduct a full Chow test across the different regimes.

   Used in Text: pages 361-362, 372, 377, 426, 442-443, 445, 663, 665,
   672

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(barium)
