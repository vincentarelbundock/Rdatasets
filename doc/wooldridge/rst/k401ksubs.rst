.. container::

   .. container::

      ========= ===============
      k401ksubs R Documentation
      ========= ===============

      .. rubric:: k401ksubs
         :name: k401ksubs

      .. rubric:: Description
         :name: description

      Wooldridge Source: A. Abadie (2003), “Semiparametric Instrumental
      Variable Estimation of Treatment Response Models,” Journal of
      Econometrics 113, 231-263. Professor Abadie kindly provided these
      data. He obtained them from the 1991 Survey of Income and Program
      Participation (SIPP). Data loads lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('k401ksubs')

      .. rubric:: Format
         :name: format

      A data.frame with 9275 observations on 11 variables:

      -  **e401k:** =1 if eligble for 401(k)

      -  **inc:** annual income, $1000s

      -  **marr:** =1 if married

      -  **male:** =1 if male respondent

      -  **age:** in years

      -  **fsize:** family size

      -  **nettfa:** net total fin. assets, $1000

      -  **p401k:** =1 if participate in 401(k)

      -  **pira:** =1 if have IRA

      -  **incsq:** inc^2

      -  **agesq:** age^2

      .. rubric:: Notes
         :name: notes

      This data set can also be used to illustrate the binary response
      models, probit and logit, in Chapter 17, where, say, pira (an
      indicator for having an individual retirement account) is the
      dependent variable, and e401k [the 401(k) eligibility indicator]
      is the key explanatory variable.

      Used in Text: pages 166, 174, 223, 264, 283, 301-302, 340, 549

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(k401ksubs)
