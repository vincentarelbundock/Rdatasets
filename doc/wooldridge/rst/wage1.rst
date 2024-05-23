.. container::

   .. container::

      ===== ===============
      wage1 R Documentation
      ===== ===============

      .. rubric:: wage1
         :name: wage1

      .. rubric:: Description
         :name: description

      Wooldridge Source: These are data from the 1976 Current Population
      Survey, collected by Henry Farber when he and I were colleagues at
      MIT in 1988. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data('wage1')

      .. rubric:: Format
         :name: format

      A data.frame with 526 observations on 24 variables:

      -  **wage:** average hourly earnings

      -  **educ:** years of education

      -  **exper:** years potential experience

      -  **tenure:** years with current employer

      -  **nonwhite:** =1 if nonwhite

      -  **female:** =1 if female

      -  **married:** =1 if married

      -  **numdep:** number of dependents

      -  **smsa:** =1 if live in SMSA

      -  **northcen:** =1 if live in north central U.S

      -  **south:** =1 if live in southern region

      -  **west:** =1 if live in western region

      -  **construc:** =1 if work in construc. indus.

      -  **ndurman:** =1 if in nondur. manuf. indus.

      -  **trcommpu:** =1 if in trans, commun, pub ut

      -  **trade:** =1 if in wholesale or retail

      -  **services:** =1 if in services indus.

      -  **profserv:** =1 if in prof. serv. indus.

      -  **profocc:** =1 if in profess. occupation

      -  **clerocc:** =1 if in clerical occupation

      -  **servocc:** =1 if in service occupation

      -  **lwage:** log(wage)

      -  **expersq:** exper^2

      -  **tenursq:** tenure^2

      .. rubric:: Notes
         :name: notes

      Barry Murphy, of the University of Portsmouth in the UK, has
      pointed out that for several observations the values for exper and
      tenure are in logical conflict. In particular, for some workers
      the number of years with current employer (tenure) is greater than
      overall work experience (exper). At least some of these conflicts
      are due to the definition of exper as “potential” work experience,
      but probably not all. Nevertheless, I am using the data set as it
      was supplied to me.

      Used in Text: pages 7, 17, 33-34, 37, 76, 91, 125, 183, 194-195,
      220, 231, 234, 235-236, 240-241, 243-244, 263, 272, 326, 678

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      .. code:: R

          str(wage1)
