.. container::

   .. container::

      ======== ===============
      lawsch85 R Documentation
      ======== ===============

      .. rubric:: lawsch85
         :name: lawsch85

      .. rubric:: Description
         :name: description

      Wooldridge Source: Collected by Kelly Barnett, an MSU economics
      student, for use in a term project. The data come from two
      sources: The Official Guide to U.S. Law Schools, 1986, Law School
      Admission Services, and The Gourman Report: A Ranking of Graduate
      and Professional Programs in American and International
      Universities, 1995, Washington, D.C. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('lawsch85')

      .. rubric:: Format
         :name: format

      A data.frame with 156 observations on 21 variables:

      -  **rank:** law school ranking

      -  **salary:** median starting salary

      -  **cost:** law school cost

      -  **LSAT:** median LSAT score

      -  **GPA:** median college GPA

      -  **libvol:** no. volumes in lib., 1000s

      -  **faculty:** no. of faculty

      -  **age:** age of law sch., years

      -  **clsize:** size of entering class

      -  **north:** =1 if law sch in north

      -  **south:** =1 if law sch in south

      -  **east:** =1 if law sch in east

      -  **west:** =1 if law sch in west

      -  **lsalary:** log(salary)

      -  **studfac:** student-faculty ratio

      -  **top10:** =1 if ranked in top 10

      -  **r11_25:** =1 if ranked 11-25

      -  **r26_40:** =1 if ranked 26-40

      -  **r41_60:** =1 if ranked 41-60

      -  **llibvol:** log(libvol)

      -  **lcost:** log(cost)

      .. rubric:: Notes
         :name: notes

      More recent versions of both cited documents are available. One
      could try a similar analysis for, say, MBA programs or Ph.D.
      programs in economics. Quality of placements may be a good
      dependent variable, and measures of business school or graduate
      program quality could be included among the explanatory variables.
      Of course, one would want to control for factors describing the
      incoming class so as to isolate the effect of the program itself.

      Used in Text: pages 107, 164-165, 239

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(lawsch85)
