.. container::

   ============= ===============
   cottonworkers R Documentation
   ============= ===============

   .. rubric:: Occupation and wage profiles of British cotton workers
      :name: occupation-and-wage-profiles-of-british-cotton-workers

   .. rubric:: Description
      :name: description

   Numbers are given in different categories of worker, in each of two
   investigations. The first source of information is the Board of Trade
   Census that was conducted on 1886. The second is a relatively
   informal survey conducted by US Bureau of Labor representatives in
   1889, for use in official reports.

   .. rubric:: Usage
      :name: usage

   ::

      data(cottonworkers)

   .. rubric:: Format
      :name: format

   A data frame with 14 observations on the following 3 variables.

   census1886
      Numbers of workers in each of 14 different categories, according
      to the Board of Trade wage census that was conducted in 1886

   survey1889
      Numbers of workers in each of 14 different categories, according
      to data collected in 1889 by the US Bureau of Labor, for use in a
      report to the US Congress and House of Representatives

   avwage
      Average wage, in pence, as estimated in the US Bureau of Labor
      survey

   .. rubric:: Details
      :name: details

   The data in ``survey1889`` were collected in a relatively informal
   manner, by approaching individuals on the street. Biases might
   therefore be expected.

   .. rubric:: Source
      :name: source

   United States congress, House of Representatives, Sixth Annual Report
   of the Commissioner of Labor, 1890, Part III, Cost of Living
   (Washington D.C. 1891); idem., Seventh Annual Report of the
   Commissioner of Labor, 1891, Part III, Cost of Living (Washington
   D.C. 1892)

   Return of wages in the principal textile trades of the United
   Kingdom, with report therein. (P.P. 1889, LXX). United Kingdom
   Official Publication.

   .. rubric:: References
      :name: references

   Boot, H. M. and Maindonald, J. H. 2007. New estimates of age- and
   sex- specific earnings and the male-female earnings gap in the
   British cotton industry, 1833-1906. *Economic History Review*.
   Published online 28-Aug-2007 doi: 10.1111/j.1468-0289.2007.00398.x

   .. rubric:: Examples
      :name: examples

   ::

      data(cottonworkers)
      str(cottonworkers)
      plot(survey1889 ~ census1886, data=cottonworkers)
      plot(I(avwage*survey1889) ~ I(avwage*census1886), data=cottonworkers)
