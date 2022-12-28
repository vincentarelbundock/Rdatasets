.. container::

   ======= ===============
   wagepan R Documentation
   ======= ===============

   .. rubric:: wagepan
      :name: wagepan

   .. rubric:: Description
      :name: description

   Wooldridge Source: F. Vella and M. Verbeek (1998), “Whose Wages Do
   Unions Raise? A Dynamic Model of Unionism and Wage Rate Determination
   for Young Men,” Journal of Applied Econometrics 13, 163-183. I
   obtained the data from the Journal of Applied Econometrics data
   archive at http://qed.econ.queensu.ca/jae/. This is generally a nice
   resource for undergraduates looking to replicate or extend a
   published study. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('wagepan')

   .. rubric:: Format
      :name: format

   A data.frame with 4360 observations on 44 variables:

   -  **nr:** person identifier

   -  **year:** 1980 to 1987

   -  **agric:** =1 if in agriculture

   -  **black:** =1 if black

   -  **bus:**

   -  **construc:** =1 if in construction

   -  **ent:**

   -  **exper:** labor mkt experience

   -  **fin:**

   -  **hisp:** =1 if Hispanic

   -  **poorhlth:** =1 if in poor health

   -  **hours:** annual hours worked

   -  **manuf:** =1 if in manufacturing

   -  **married:** =1 if married

   -  **min:**

   -  **nrthcen:** =1 if north central

   -  **nrtheast:** =1 if north east

   -  **occ1:**

   -  **occ2:**

   -  **occ3:**

   -  **occ4:**

   -  **occ5:**

   -  **occ6:**

   -  **occ7:**

   -  **occ8:**

   -  **occ9:**

   -  **per:**

   -  **pro:**

   -  **pub:**

   -  **rur:**

   -  **south:** =1 if south

   -  **educ:** years of schooling

   -  **tra:**

   -  **trad:**

   -  **union:** =1 if in union

   -  **lwage:** log(wage)

   -  **d81:** =1 if year == 1981

   -  **d82:**

   -  **d83:**

   -  **d84:**

   -  **d85:**

   -  **d86:**

   -  **d87:**

   -  **expersq:** exper^2

   .. rubric:: Used in Text
      :name: used-in-text

   pages 480, 494-495, 505

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(wagepan)
