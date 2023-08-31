.. container::

   ====== ===============
   campus R Documentation
   ====== ===============

   .. rubric:: campus
      :name: campus

   .. rubric:: Description
      :name: description

   Wooldridge Source: These data were collected by Daniel Martin, a
   former MSU undergraduate, for a final project. They come from the FBI
   Uniform Crime Reports and are for the year 1992. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data('campus')

   .. rubric:: Format
      :name: format

   A data.frame with 97 observations on 7 variables:

   -  **enroll:** total enrollment

   -  **priv:** =1 if private college

   -  **police:** employed officers

   -  **crime:** total campus crimes

   -  **lcrime:** log(crime)

   -  **lenroll:** log(enroll)

   -  **lpolice:** log(police)

   .. rubric:: Notes
      :name: notes

   Colleges and universities are now required to provide much better,
   more detailed crime data. A very rich data set can now be obtained,
   even a panel data set for colleges across different years. Statistics
   on male/female ratios, fraction of men/women in fraternities or
   sororities, policy variables – such as a “safe house” for women on
   campus, as was started at MSU in 1994 – could be added as explanatory
   variables. The crime rate in the host town would be a good control.

   Used in Text: pages 131-132

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   .. code:: R

       str(campus)
