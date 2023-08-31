.. container::

   ======== ===============
   approval R Documentation
   ======== ===============

   .. rubric:: approval
      :name: approval

   .. rubric:: Description
      :name: description

   Wooldridge Source: Harbridge, L., J. Krosnick, and J.M. Wooldridge
   (forthcoming), “Presidential Approval and Gas Prices: Sociotropic or
   Pocketbook Influence?” in New Explorations in Political Psychology,
   ed. J. Krosnick. New York: Psychology Press (Taylor and Francis
   Group). Professor Harbridge kindly provided the data, of which I have
   used a subset. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('approval')

   .. rubric:: Format
      :name: format

   A data.frame with 78 observations on 16 variables:

   -  **id:** id

   -  **month:** month

   -  **year:** year

   -  **sp500:** S&P 500 index

   -  **cpi:** Consumer Price Index

   -  **cpifood:** CPI for food

   -  **approve:** Gallup approval rate, percent

   -  **gasprice:** average gas price, cents

   -  **unemploy:** unemployment rate, percent

   -  **katrina:** =1 for three months after Hurricane Katrina

   -  **rgasprice:** real gas price, 100*(gasprice/cpi)

   -  **lrgasprice:** log(rgasprice)

   -  **sep11:** =1 for 09/2001 and two months following

   -  **iraqinvade:** =1 for three months after Iraq invasion

   -  **lsp500:** log(sp500)

   -  **lcpifood:** log(cpifood)

   .. rubric:: Used in Text
      :name: used-in-text

   343, 371, 400

   .. rubric:: Source
      :name: source

   http://www.cengage.com/c/introductory-econometrics-a-modern-approach-6e-wooldridge

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(approval)
