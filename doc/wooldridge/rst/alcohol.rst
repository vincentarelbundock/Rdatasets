.. container::

   ======= ===============
   alcohol R Documentation
   ======= ===============

   .. rubric:: alcohol
      :name: alcohol

   .. rubric:: Description
      :name: description

   Wooldridge Source: Terza, J.V. (2002), “Alcohol Abuse and Employment:
   A Second Look,” Journal of Applied Econometrics 17, 393-404. I
   obtained these data from the Journal of Applied Econometrics data
   archive at http://qed.econ.queensu.ca/jae/. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('alcohol')

   .. rubric:: Format
      :name: format

   A data.frame with 9822 observations on 33 variables:

   -  **abuse:** =1 if abuse alcohol

   -  **status:** out of workforce = 1; unemployed = 2, employed = 3

   -  **unemrate:** state unemployment rate

   -  **age:** age in years

   -  **educ:** years of schooling

   -  **married:** =1 if married

   -  **famsize:** family size

   -  **white:** =1 if white

   -  **exhealth:** =1 if in excellent health

   -  **vghealth:** =1 if in very good health

   -  **goodhealth:** =1 if in good health

   -  **fairhealth:** =1 if in fair health

   -  **northeast:** =1 if live in northeast

   -  **midwest:** =1 if live in midwest

   -  **south:** =1 if live in south

   -  **centcity:** =1 if live in central city of MSA

   -  **outercity:** =1 if in outer city of MSA

   -  **qrt1:** =1 if interviewed in first quarter

   -  **qrt2:** =1 if interviewed in second quarter

   -  **qrt3:** =1 if interviewed in third quarter

   -  **beertax:** state excise tax, $ per gallon

   -  **cigtax:** state cigarette tax, cents per pack

   -  **ethanol:** state per-capita ethanol consumption

   -  **mothalc:** =1 if mother an alcoholic

   -  **fathalc:** =1 if father an alcoholic

   -  **livealc:** =1 if lived with alcoholic

   -  **inwf:** =1 if status > 1

   -  **employ:** =1 if employed

   -  **agesq:** age^2

   -  **beertaxsq:** beertax^2

   -  **cigtaxsq:** cigtax^2

   -  **ethanolsq:** ethanol^2

   -  **educsq:** educ^2

   .. rubric:: Used in Text
      :name: used-in-text

   page 629

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(alcohol)
