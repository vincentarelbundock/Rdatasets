.. container::

   .. container::

      ===== ===============
      engin R Documentation
      ===== ===============

      .. rubric:: engin
         :name: engin

      .. rubric:: Description
         :name: description

      Wooldridge Source: Thada Chaisawangwong, a former graduate student
      at MSU, obtained these data for a term project in applied
      econometrics. They come from the Material Requirement Planning
      Survey carried out in Thailand during 1998. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('engin')

      .. rubric:: Format
         :name: format

      A data.frame with 403 observations on 17 variables:

      -  **male:** =1 if male

      -  **educ:** highest grade completed

      -  **wage:** monthly salary, Thai baht

      -  **swage:** starting wage

      -  **exper:** years on current job

      -  **pexper:** previous experience

      -  **lwage:** log(wage)

      -  **expersq:** exper^2

      -  **highgrad:** =1 if high school graduate

      -  **college:** =1 if college graduate

      -  **grad:** =1 if some graduate school

      -  **polytech:** =1 if a polytech

      -  **highdrop:** =1 if no high school degree

      -  **lswage:** log(swage)

      -  **pexpersq:** pexper^2

      -  **mleeduc:** male*educ

      -  **mleeduc0:** male*(educ - 14)

      .. rubric:: Notes
         :name: notes

      This is a nice change of pace from wage data sets for the United
      States. These data are for engineers in Thailand, and represents a
      more homogeneous group than data sets that consist of people
      across a variety of occupations. Plus, the starting salary is also
      provided in the data set, so factors affecting wage growth – and
      not just wage levels at a given point in time – can be studied.
      This is a good data set for a common term project that tests basic
      understanding of multiple regression and the interpretation of
      models with a logarithm for a dependent variable.

      Used in Text: not used

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(engin)
