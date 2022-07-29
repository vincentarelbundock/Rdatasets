.. container::

   ====== ===============
   meap93 R Documentation
   ====== ===============

   .. rubric:: meap93
      :name: meap93

   .. rubric:: Description
      :name: description

   Wooldridge Source: I collected these data from the old Michigan
   Department of Education web site. See MATHPNL.RAW for the current web
   site. I used data on most high schools in the state of Michigan for
   1993. I dropped some high schools that had suspicious-looking data.
   Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('meap93')

   .. rubric:: Format
      :name: format

   A data.frame with 408 observations on 17 variables:

   -  **lnchprg:** perc of studs in sch lnch prog

   -  **enroll:** school enrollment

   -  **staff:** staff per 1000 students

   -  **expend:** expend. per stud, $

   -  **salary:** avg. teacher salary, $

   -  **benefits:** avg. teacher benefits, $

   -  **droprate:** school dropout rate, perc

   -  **gradrate:** school graduation rate, perc

   -  **math10:** perc studs passing MEAP math

   -  **sci11:** perc studs passing MEAP science

   -  **totcomp:** salary + benefits

   -  **ltotcomp:** log(totcomp)

   -  **lexpend:** log of expend

   -  **lenroll:** log(enroll)

   -  **lstaff:** log(staff)

   -  **bensal:** benefits/salary

   -  **lsalary:** log(salary)

   .. rubric:: Notes
      :name: notes

   Many states have data, at either the district or building level, on
   student performance and spending. A good exercise in data collection
   and cleaning is to have students find such data for a particular
   state, and to put it into a form that can be used for econometric
   analysis.

   Used in Text: pages 50, 65, 111-112, 127-128, 155-156, 219, 336, 339,
   696-697

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(meap93)
