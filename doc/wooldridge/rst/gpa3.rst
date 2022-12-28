.. container::

   ==== ===============
   gpa3 R Documentation
   ==== ===============

   .. rubric:: gpa3
      :name: gpa3

   .. rubric:: Description
      :name: description

   Wooldridge Source: See GPA2.RAW Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('gpa3')

   .. rubric:: Format
      :name: format

   A data.frame with 732 observations on 23 variables:

   -  **term:** fall = 1, spring = 2

   -  **sat:** SAT score

   -  **tothrs:** total hours prior to term

   -  **cumgpa:** cumulative GPA

   -  **season:** =1 if in season

   -  **frstsem:** =1 if student's 1st semester

   -  **crsgpa:** weighted course GPA

   -  **verbmath:** verbal SAT to math SAT ratio

   -  **trmgpa:** term GPA

   -  **hssize:** size h.s. grad. class

   -  **hsrank:** rank in h.s. class

   -  **id:** student identifier

   -  **spring:** =1 if spring term

   -  **female:** =1 if female

   -  **black:** =1 if black

   -  **white:** =1 if white

   -  **ctrmgpa:** change in trmgpa

   -  **ctothrs:** change in total hours

   -  **ccrsgpa:** change in crsgpa

   -  **ccrspop:** change in crspop

   -  **cseason:** change in season

   -  **hsperc:** percentile in h.s.

   -  **football:** =1 if football player

   .. rubric:: Used in Text
      :name: used-in-text

   pages 246-248, 273, 297-298, 478

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(gpa3)
