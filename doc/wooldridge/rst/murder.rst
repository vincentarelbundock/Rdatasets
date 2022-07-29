.. container::

   ====== ===============
   murder R Documentation
   ====== ===============

   .. rubric:: murder
      :name: murder

   .. rubric:: Description
      :name: description

   Wooldridge Source: From the Statistical Abstract of the United
   States, 1995 (Tables 310 and 357), 1992 (Table 289). The execution
   data originally come from the U.S. Bureau of Justice Statistics,
   Capital Punishment Annual. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('murder')

   .. rubric:: Format
      :name: format

   A data.frame with 153 observations on 13 variables:

   -  **id:** state identifier

   -  **state:** postal code

   -  **year:** 87, 90, or 93

   -  **mrdrte:** murders per 100,000 people

   -  **exec:** total executions, past 3 years

   -  **unem:** annual unem. rate

   -  **d90:** =1 if year == 90

   -  **d93:** =1 if year == 93

   -  **cmrdrte:** mrdrte - mrdrte[_n-1]

   -  **cexec:** exec - exec[_n-1]

   -  **cunem:** unem - unem[_n-1]

   -  **cexec_1:** cexec[_n-1]

   -  **cunem_1:** cunem[_n-1]

   .. rubric:: Notes
      :name: notes

   Prosecutors in different counties might pursue the death penalty with
   different intensities, so it makes sense to collect murder and
   execution data at the county level. This could be combined with
   better demographic information at the county level, along with better
   economic data (say, on wages for various kinds of employment).

   Used in Text: pages 480, 505, 548

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(murder)
