.. container::

   .. container::

      ====== ===============
      bwght2 R Documentation
      ====== ===============

      .. rubric:: bwght2
         :name: bwght2

      .. rubric:: Description
         :name: description

      Wooldridge Source: Dr. Zhehui Luo, a recent MSU Ph.D. in economics
      and Visiting Research Associate in the Department of Epidemiology
      at MSU, kindly provided these data. She obtained them from state
      files linking birth and infant death certificates, and from the
      National Center for Health Statistics natality and mortality data.
      Data loads lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('bwght2')

      .. rubric:: Format
         :name: format

      A data.frame with 1832 observations on 23 variables:

      -  **mage:** mother's age, years

      -  **meduc:** mother's educ, years

      -  **monpre:** month prenatal care began

      -  **npvis:** total number of prenatal visits

      -  **fage:** father's age, years

      -  **feduc:** father's educ, years

      -  **bwght:** birth weight, grams

      -  **omaps:** one minute apgar score

      -  **fmaps:** five minute apgar score

      -  **cigs:** avg cigarettes per day

      -  **drink:** avg drinks per week

      -  **lbw:** =1 if bwght <= 2000

      -  **vlbw:** =1 if bwght <= 1500

      -  **male:** =1 if baby male

      -  **mwhte:** =1 if mother white

      -  **mblck:** =1 if mother black

      -  **moth:** =1 if mother is other

      -  **fwhte:** =1 if father white

      -  **fblck:** =1 if father black

      -  **foth:** =1 if father is other

      -  **lbwght:** log(bwght)

      -  **magesq:** mage^2

      -  **npvissq:** npvis^2

      .. rubric:: Notes
         :name: notes

      There are many possibilities with this data set. In addition to
      number of prenatal visits, smoking and alcohol consumption (during
      pregnancy) are included as explanatory variables. These can be
      added to equations of the kind found in Exercise C6.10. In
      addition, the one- and five-minute APGAR scores are included.
      These are measures of the well being of infants just after birth.
      An interesting feature of the score is that it is bounded between
      zero and 10, making a linear model less than ideal. Still, a
      linear model would be informative, and you might ask students
      about predicted values less than zero or greater than 10.

      Used in Text: pages 184, 223

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(bwght2)
