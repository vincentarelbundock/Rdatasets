.. container::

   ======= ===============
   sleep75 R Documentation
   ======= ===============

   .. rubric:: sleep75
      :name: sleep75

   .. rubric:: Description
      :name: description

   Wooldridge Source: J.E. Biddle and D.S. Hamermesh (1990), “Sleep and
   the Allocation of Time,” Journal of Political Economy 98, 922-943.
   Professor Biddle kindly provided the data. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('sleep75')

   .. rubric:: Format
      :name: format

   A data.frame with 706 observations on 34 variables:

   -  **age:** in years

   -  **black:** =1 if black

   -  **case:** identifier

   -  **clerical:** =1 if clerical worker

   -  **construc:** =1 if construction worker

   -  **educ:** years of schooling

   -  **earns74:** total earnings, 1974

   -  **gdhlth:** =1 if in good or excel. health

   -  **inlf:** =1 if in labor force

   -  **leis1:** sleep - totwrk

   -  **leis2:** slpnaps - totwrk

   -  **leis3:** rlxall - totwrk

   -  **smsa:** =1 if live in smsa

   -  **lhrwage:** log hourly wage

   -  **lothinc:** log othinc, unless othinc < 0

   -  **male:** =1 if male

   -  **marr:** =1 if married

   -  **prot:** =1 if Protestant

   -  **rlxall:** slpnaps + personal activs

   -  **selfe:** =1 if self employed

   -  **sleep:** mins sleep at night, per wk

   -  **slpnaps:** minutes sleep, inc. naps

   -  **south:** =1 if live in south

   -  **spsepay:** spousal wage income

   -  **spwrk75:** =1 if spouse works

   -  **totwrk:** mins worked per week

   -  **union:** =1 if belong to union

   -  **worknrm:** mins work main job

   -  **workscnd:** mins work second job

   -  **exper:** age - educ - 6

   -  **yngkid:** =1 if children < 3 present

   -  **yrsmarr:** years married

   -  **hrwage:** hourly wage

   -  **agesq:** age^2

   .. rubric:: Notes
      :name: notes

   In their article, Biddle and Hamermesh include an hourly wage measure
   in the sleep equation. An econometric problem that arises is that the
   hourly wage is missing for those who do not work. Plus, the wage
   offer may be endogenous (even if it were always observed). Biddle and
   Hamermesh employ extensions of the sample selection methods in
   Section 17.5. See their article for details.

   Used in Text: pages 64, 106-107, 162, 259, 263, 299

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(sleep75)
