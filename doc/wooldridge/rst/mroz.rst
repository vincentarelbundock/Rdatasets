.. container::

   ==== ===============
   mroz R Documentation
   ==== ===============

   .. rubric:: mroz
      :name: mroz

   .. rubric:: Description
      :name: description

   Wooldridge Source: T.A. Mroz (1987), “The Sensitivity of an Empirical
   Model of Married Women’s Hours of Work to Economic and Statistical
   Assumptions,” Econometrica 55, 765-799. Professor Ernst R. Berndt, of
   MIT, kindly provided the data, which he obtained from Professor Mroz.
   Data loads lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('mroz')

   .. rubric:: Format
      :name: format

   A data.frame with 753 observations on 22 variables:

   -  **inlf:** =1 if in lab frce, 1975

   -  **hours:** hours worked, 1975

   -  **kidslt6:** # kids < 6 years

   -  **kidsge6:** # kids 6-18

   -  **age:** woman's age in yrs

   -  **educ:** years of schooling

   -  **wage:** est. wage from earn, hrs

   -  **repwage:** rep. wage at interview in 1976

   -  **hushrs:** hours worked by husband, 1975

   -  **husage:** husband's age

   -  **huseduc:** husband's years of schooling

   -  **huswage:** husband's hourly wage, 1975

   -  **faminc:** family income, 1975

   -  **mtr:** fed. marg. tax rte facing woman

   -  **motheduc:** mother's years of schooling

   -  **fatheduc:** father's years of schooling

   -  **unem:** unem. rate in county of resid.

   -  **city:** =1 if live in SMSA

   -  **exper:** actual labor mkt exper

   -  **nwifeinc:** (faminc - wage*hours)/1000

   -  **lwage:** log(wage)

   -  **expersq:** exper^2

   .. rubric:: Used in Text
      :name: used-in-text

   pages 249-251, 260, 294, 519-520, 530, 535, 535-536, 565-566,
   578-579, 593- 595, 601-603, 619-620, 625

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(mroz)
