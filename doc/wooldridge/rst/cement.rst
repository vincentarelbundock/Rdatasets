.. container::

   ====== ===============
   cement R Documentation
   ====== ===============

   .. rubric:: cement
      :name: cement

   .. rubric:: Description
      :name: description

   Wooldridge Source: J. Shea (1993), “The Input-Output Approach to
   Instrument Selection,” Journal of Business and Economic Statistics
   11, 145-156. Professor Shea kindly provided these data. Data loads
   lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('cement')

   .. rubric:: Format
      :name: format

   A data.frame with 312 observations on 30 variables:

   -  **year:** 1964-1989

   -  **month:** 1-12

   -  **prccem:** BLS ppi for cement

   -  **ipcem:** industrial prod. index, cement

   -  **prcpet:** ppi for crude petroleum

   -  **rresc:** real residential construction

   -  **rnonc:** real nonres. construction

   -  **ip:** aggregate index of indus. prod.

   -  **rdefs:** real defense spending

   -  **milemp:** military employment

   -  **gprc:** log(prccem) - log(prccem[_n-1])

   -  **gcem:** log(ipcem) - log(ipcem[_n-1])

   -  **gprcpet:** log(prcpet) - log(prcpet[_n-1])

   -  **gres:** log(rresc) - log(rresc[_n-1])

   -  **gnon:** log(rnonc) - log(rnonc[_n-1])

   -  **gip:** log(ip) - log(ip[_n-1])

   -  **gdefs:** log(rdefs) - log(rdefs[_n-1])

   -  **gmilemp:** log(milemp) - log(milemp[_n-1])

   -  **jan:** =1 if month == 1

   -  **feb:** =1 if month == 2

   -  **mar:** =1 if month == 3

   -  **apr:** =1 if month == 4

   -  **may:** =1 if month == 5

   -  **jun:** =1 if month == 6

   -  **jul:** =1 if month == 7

   -  **aug:** =1 if month == 8

   -  **sep:** =1 if month == 9

   -  **oct:** =1 if month == 10

   -  **nov:** =1 if month == 11

   -  **dec:** =1 if month == 12

   .. rubric:: Notes
      :name: notes

   Compared with Shea’s analysis, the producer price index (PPI) for
   fuels and power has been replaced with the PPI for petroleum. The
   data are monthly and have not been seasonally adjusted.

   Used in Text: pages 579

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(cement)
