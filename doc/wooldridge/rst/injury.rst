.. container::

   ====== ===============
   injury R Documentation
   ====== ===============

   .. rubric:: injury
      :name: injury

   .. rubric:: Description
      :name: description

   Wooldridge Source: B.D. Meyer, W.K. Viscusi, and D.L. Durbin (1995),
   “Workers’ Compensation and Injury Duration: Evidence from a Natural
   Experiment,” American Economic Review 85, 322-340. Professor Meyer
   kindly provided the data. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('injury')

   .. rubric:: Format
      :name: format

   A data.frame with 7150 observations on 30 variables:

   -  **durat:** duration of benefits

   -  **afchnge:** =1 if after change in benefits

   -  **highearn:** =1 if high earner

   -  **male:** =1 if male

   -  **married:** =1 if married

   -  **hosp:** =1 if inj. required hosp. stay

   -  **indust:** industry

   -  **injtype:** type of injury

   -  **age:** age at time of injury

   -  **prewage:** previous weekly wage, 1982 $

   -  **totmed:** total med. costs, 1982 $

   -  **injdes:** 4 digit injury description

   -  **benefit:** real dollar value of benefit

   -  **ky:** =1 for kentucky

   -  **mi:** =1 for michigan

   -  **ldurat:** log(durat)

   -  **afhigh:** afchnge*highearn

   -  **lprewage:** log(wage)

   -  **lage:** log(age)

   -  **ltotmed:** log(totmed); = 0 if totmed < 1

   -  **head:** =1 if head injury

   -  **neck:** =1 if neck injury

   -  **upextr:** =1 if upper extremities injury

   -  **trunk:** =1 if trunk injury

   -  **lowback:** =1 if lower back injury

   -  **lowextr:** =1 if lower extremities injury

   -  **occdis:** =1 if occupational disease

   -  **manuf:** =1 if manufacturing industry

   -  **construc:** =1 if construction industry

   -  **highlpre:** highearn*lprewage

   .. rubric:: Notes
      :name: notes

   This data set also can be used to illustrate the Chow test in Chapter
   7. In particular, students can test whether the regression functions
   differ between Kentucky and Michigan. Or, allowing for different
   intercepts for the two states, do the slopes differ? A good lesson
   from this example is that a small R-squared is compatible with the
   ability to estimate the effects of a policy. Of course, for the
   Michigan data, which has a smaller sample size, the estimated effect
   is much less precise (but of virtually identical magnitude).

   Used in Text: pages 458-459, 475-476

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(injury)
