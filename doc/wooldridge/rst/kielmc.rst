.. container::

   ====== ===============
   kielmc R Documentation
   ====== ===============

   .. rubric:: kielmc
      :name: kielmc

   .. rubric:: Description
      :name: description

   Wooldridge Source: K.A. Kiel and K.T. McClain (1995), “House Prices
   During Siting Decision Stages: The Case of an Incinerator from Rumor
   Through Operation,” Journal of Environmental Economics and Management
   28, 241-255. Professor McClain kindly provided the data, of which I
   used only a subset. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('kielmc')

   .. rubric:: Format
      :name: format

   A data.frame with 321 observations on 25 variables:

   -  **year:** 1978 or 1981

   -  **age:** age of house

   -  **agesq:** age^2

   -  **nbh:** neighborhood, 1-6

   -  **cbd:** dist. to cent. bus. dstrct, ft.

   -  **intst:** dist. to interstate, ft.

   -  **lintst:** log(intst)

   -  **price:** selling price

   -  **rooms:** # rooms in house

   -  **area:** square footage of house

   -  **land:** square footage lot

   -  **baths:** # bathrooms

   -  **dist:** dist. from house to incin., ft.

   -  **ldist:** log(dist)

   -  **wind:** prc. time wind incin. to house

   -  **lprice:** log(price)

   -  **y81:** =1 if year == 1981

   -  **larea:** log(area)

   -  **lland:** log(land)

   -  **y81ldist:** y81*ldist

   -  **lintstsq:** lintst^2

   -  **nearinc:** =1 if dist <= 15840

   -  **y81nrinc:** y81*nearinc

   -  **rprice:** price, 1978 dollars

   -  **lrprice:** log(rprice)

   .. rubric:: Used in Text
      :name: used-in-text

   pages 220, 454-457, 475, 477

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(kielmc)
