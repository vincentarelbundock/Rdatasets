.. container::

   ====== ===============
   prison R Documentation
   ====== ===============

   .. rubric:: prison
      :name: prison

   .. rubric:: Description
      :name: description

   Wooldridge Source: S.D. Levitt (1996), “The Effect of Prison
   Population Size on Crime Rates: Evidence from Prison Overcrowding
   Legislation,” Quarterly Journal of Economics 111, 319-351. Professor
   Levitt kindly provided me with the data, of which I used a subset.
   Data loads lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('prison')

   .. rubric:: Format
      :name: format

   A data.frame with 714 observations on 45 variables:

   -  **state:** alphabetical; DC = 9

   -  **year:** 80 to 93

   -  **govelec:** =1 if gubernatorial election

   -  **black:** proportion black

   -  **metro:** proportion in metro. areas

   -  **unem:** proportion unemployed

   -  **criv:** viol. crimes per 100,000

   -  **crip:** prop. crimes per 100,000

   -  **lcriv:** log(criv)

   -  **lcrip:** log(crip)

   -  **gcriv:** lcriv - lcriv_1

   -  **gcrip:** lcrip - lcrip_1

   -  **y81:** =1 if year == 81

   -  **y82:**

   -  **y83:**

   -  **y84:**

   -  **y85:**

   -  **y86:**

   -  **y87:**

   -  **y88:**

   -  **y89:**

   -  **y90:**

   -  **y91:**

   -  **y92:**

   -  **y93:**

   -  **ag0_14:** prop. pop. 0 to 14 yrs

   -  **ag15_17:** prop. pop. 15 to 17 yrs

   -  **ag18_24:** prop. pop. 18 to 24 yrs

   -  **ag25_34:** prop. pop. 25 to 34 yrs

   -  **incpc:** per capita income, nominal

   -  **polpc:** police per 100,000 residents

   -  **gincpc:** log(incpc) - log(incpc_1)

   -  **gpolpc:** lpolpc - lpolpc_1

   -  **cag0_14:** change in ag0_14

   -  **cag15_17:** change in ag15_17

   -  **cag18_24:** change in ag18_24

   -  **cag25_34:** change in ag25_34

   -  **cunem:** change in unem

   -  **cblack:** change in black

   -  **cmetro:** change in metro

   -  **pris:** prison pop. per 100,000

   -  **lpris:** log(pris)

   -  **gpris:** lpris - lpris[\_n-1]

   -  **final1:** =1 if fnl dec on litig, curr yr

   -  **final2:** =1 if dec on litig, prev 2 yrs

   .. rubric:: Used in Text
      :name: used-in-text

   pages 573-574

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(prison)
