.. container::

   .. container::

      ==== ===============
      gpa1 R Documentation
      ==== ===============

      .. rubric:: gpa1
         :name: gpa1

      .. rubric:: Description
         :name: description

      Wooldridge Source: Christopher Lemmon, a former MSU undergraduate,
      collected these data from a survey he took of MSU students in Fall
      1994. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('gpa1')

      .. rubric:: Format
         :name: format

      A data.frame with 141 observations on 29 variables:

      -  **age:** in years

      -  **soph:** =1 if sophomore

      -  **junior:** =1 if junior

      -  **senior:** =1 if senior

      -  **senior5:** =1 if fifth year senior

      -  **male:** =1 if male

      -  **campus:** =1 if live on campus

      -  **business:** =1 if business major

      -  **engineer:** =1 if engineering major

      -  **colGPA:** MSU GPA

      -  **hsGPA:** high school GPA

      -  **ACT:** 'achievement' score

      -  **job19:** =1 if job <= 19 hours

      -  **job20:** =1 if job >= 20 hours

      -  **drive:** =1 if drive to campus

      -  **bike:** =1 if bicycle to campus

      -  **walk:** =1 if walk to campus

      -  **voluntr:** =1 if do volunteer work

      -  **PC:** =1 of pers computer at sch

      -  **greek:** =1 if fraternity or sorority

      -  **car:** =1 if own car

      -  **siblings:** =1 if have siblings

      -  **bgfriend:** =1 if boy- or girlfriend

      -  **clubs:** =1 if belong to MSU club

      -  **skipped:** avg lectures missed per week

      -  **alcohol:** avg # days per week drink alc.

      -  **gradMI:** =1 if Michigan high school

      -  **fathcoll:** =1 if father college grad

      -  **mothcoll:** =1 if mother college grad

      .. rubric:: Notes
         :name: notes

      This is a nice example of how students can obtain an original data
      set by focusing locally and carefully composing a survey.

      Used in Text: pages 75, 77, 81, 129-130, 160, 232, 262, 295-296,
      300-301

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(gpa1)
