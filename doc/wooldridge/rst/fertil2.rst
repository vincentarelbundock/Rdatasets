.. container::

   ======= ===============
   fertil2 R Documentation
   ======= ===============

   .. rubric:: fertil2
      :name: fertil2

   .. rubric:: Description
      :name: description

   Wooldridge Source: These data were obtained by James Heakins, a
   former MSU undergraduate, for a term project. They come from
   Botswana’s 1988 Demographic and Health Survey. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('fertil2')

   .. rubric:: Format
      :name: format

   A data.frame with 4361 observations on 27 variables:

   -  **mnthborn:** month woman born

   -  **yearborn:** year woman born

   -  **age:** age in years

   -  **electric:** =1 if has electricity

   -  **radio:** =1 if has radio

   -  **tv:** =1 if has tv

   -  **bicycle:** =1 if has bicycle

   -  **educ:** years of education

   -  **ceb:** children ever born

   -  **agefbrth:** age at first birth

   -  **children:** number of living children

   -  **knowmeth:** =1 if know about birth control

   -  **usemeth:** =1 if ever use birth control

   -  **monthfm:** month of first marriage

   -  **yearfm:** year of first marriage

   -  **agefm:** age at first marriage

   -  **idlnchld:** 'ideal' number of children

   -  **heduc:** husband's years of education

   -  **agesq:** age^2

   -  **urban:** =1 if live in urban area

   -  **urb_educ:** urban*educ

   -  **spirit:** =1 if religion == spirit

   -  **protest:** =1 if religion == protestant

   -  **catholic:** =1 if religion == catholic

   -  **frsthalf:** =1 if mnthborn <= 6

   -  **educ0:** =1 if educ == 0

   -  **evermarr:** =1 if ever married

   .. rubric:: Notes
      :name: notes

   Currently, this data set is used only in one computer exercise. Since
   the dependent variable of interest – number of living children or
   number of children every born – is a count variable, the Poisson
   regression model discussed in Chapter 17 can be used. However, some
   care is required to combine Poisson regression with an endogenous
   explanatory variable (educ). I refer you to Chapter 19 of my book
   Econometric Analysis of Cross Section and Panel Data. Even in the
   context of linear models, much can be done beyond Computer Exercise
   C15.2. At a minimum, the binary indicators for various religions can
   be added as controls. One might also interact the schooling variable,
   educ, with some of the exogenous explanatory variables.

   Used in Text: page 547

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(fertil2)
