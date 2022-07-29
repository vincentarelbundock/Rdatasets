.. container::

   ===== ===============
   recid R Documentation
   ===== ===============

   .. rubric:: recid
      :name: recid

   .. rubric:: Description
      :name: description

   Wooldridge Source: C.-F. Chung, P. Schmidt, and A.D. Witte (1991),
   “Survival Analysis: A Survey,” Journal of Quantitative Criminology 7,
   59-98. Professor Chung kindly provided the data. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('recid')

   .. rubric:: Format
      :name: format

   A data.frame with 1445 observations on 18 variables:

   -  **black:** =1 if black

   -  **alcohol:** =1 if alcohol problems

   -  **drugs:** =1 if drug history

   -  **super:** =1 if release supervised

   -  **married:** =1 if married when incarc.

   -  **felon:** =1 if felony sentence

   -  **workprg:** =1 if in N.C. pris. work prg.

   -  **property:** =1 if property crime

   -  **person:** =1 if crime against person

   -  **priors:** # prior convictions

   -  **educ:** years of schooling

   -  **rules:** # rules violations in prison

   -  **age:** in months

   -  **tserved:** time served, rounded to months

   -  **follow:** length follow period, months

   -  **durat:** min(time until return, follow)

   -  **cens:** =1 if duration right censored

   -  **ldurat:** log(durat)

   .. rubric:: Used in Text
      :name: used-in-text

   pages 611-612, 625

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(recid)
