.. container::

   .. container::

      ======= ===============
      affairs R Documentation
      ======= ===============

      .. rubric:: affairs
         :name: affairs

      .. rubric:: Description
         :name: description

      Wooldridge Source: R.C. Fair (1978), “A Theory of Extramarital
      Affairs,” Journal of Political Economy 86, 45-61, 1978. I
      collected the data from Professor Fair’s web cite at the Yale
      University Department of Economics. He originally obtained the
      data from a survey by Psychology Today. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      ::

         data('affairs')

      .. rubric:: Format
         :name: format

      A data.frame with 601 observations on 19 variables:

      -  **id:** identifier

      -  **male:** =1 if male

      -  **age:** in years

      -  **yrsmarr:** years married

      -  **kids:** =1 if have kids

      -  **relig:** 5 = very relig., 4 = somewhat, 3 = slightly, 2 = not
         at all, 1 = anti

      -  **educ:** years schooling

      -  **occup:** occupation, reverse Hollingshead scale

      -  **ratemarr:** 5 = vry hap marr, 4 = hap than avg, 3 = avg, 2 =
         smewht unhap, 1 = vry unhap

      -  **naffairs:** number of affairs within last year

      -  **affair:** =1 if had at least one affair

      -  **vryhap:** ratemarr == 5

      -  **hapavg:** ratemarr == 4

      -  **avgmarr:** ratemarr == 3

      -  **unhap:** ratemarr == 2

      -  **vryrel:** relig == 5

      -  **smerel:** relig == 4

      -  **slghtrel:** relig == 3

      -  **notrel:** relig == 2

      .. rubric:: Notes
         :name: notes

      This is an interesting data set for problem sets starting in
      Chapter 7. Even though naffairs (number of extramarital affairs a
      woman reports) is a count variable, a linear model can be used to
      model its conditional mean as an approximation. Or, you could ask
      the students to estimate a linear probability model for the binary
      indicator affair, equal to one of the woman reports having any
      extramarital affairs. One possibility is to test whether putting
      the single marriage rating variable, ratemarr, is enough, against
      the alternative that a full set of dummy variables is needed; see
      pages 239-240 for a similar example. This is also a good data set
      to illustrate Poisson regression (using naffairs) in Section 17.3
      or probit and logit (using affair) in Section 17.1.

      Used in Text: not used

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      ::

          str(affairs)
