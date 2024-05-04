.. container::

   .. container::

      ==== ===============
      card R Documentation
      ==== ===============

      .. rubric:: card
         :name: card

      .. rubric:: Description
         :name: description

      Wooldridge Source: D. Card (1995), Using Geographic Variation in
      College Proximity to Estimate the Return to Schooling, in Aspects
      of Labour Market Behavior: Essays in Honour of John Vanderkamp.
      Ed. L.N. Christophides, E.K. Grant, and R. Swidinsky, 201-222.
      Toronto: University of Toronto Press. Professor Card kindly
      provided these data. Data loads lazily.

      .. rubric:: Usage
         :name: usage

      ::

         data('card')

      .. rubric:: Format
         :name: format

      A data.frame with 3010 observations on 34 variables:

      -  **id:** person identifier

      -  **nearc2:** =1 if near 2 yr college, 1966

      -  **nearc4:** =1 if near 4 yr college, 1966

      -  **educ:** years of schooling, 1976

      -  **age:** in years

      -  **fatheduc:** father's schooling

      -  **motheduc:** mother's schooling

      -  **weight:** NLS sampling weight, 1976

      -  **momdad14:** =1 if live with mom, dad at 14

      -  **sinmom14:** =1 if with single mom at 14

      -  **step14:** =1 if with step parent at 14

      -  **reg661:** =1 for region 1, 1966

      -  **reg662:** =1 for region 2, 1966

      -  **reg663:** =1 for region 3, 1966

      -  **reg664:** =1 for region 4, 1966

      -  **reg665:** =1 for region 5, 1966

      -  **reg666:** =1 for region 6, 1966

      -  **reg667:** =1 for region 7, 1966

      -  **reg668:** =1 for region 8, 1966

      -  **reg669:** =1 for region 9, 1966

      -  **south66:** =1 if in south in 1966

      -  **black:** =1 if black

      -  **smsa:** =1 in in SMSA, 1976

      -  **south:** =1 if in south, 1976

      -  **smsa66:** =1 if in SMSA, 1966

      -  **wage:** hourly wage in cents, 1976

      -  **enroll:** =1 if enrolled in school, 1976

      -  **KWW:** knowledge world of work score

      -  **IQ:** IQ score

      -  **married:** =1 if married, 1976

      -  **libcrd14:** =1 if lib. card in home at 14

      -  **exper:** age - educ - 6

      -  **lwage:** log(wage)

      -  **expersq:** exper^2

      .. rubric:: Notes
         :name: notes

      Computer Exercise C15.3 is important for analyzing these data.
      There, it is shown that the instrumental variable, ‘nearc4', is
      actually correlated with 'IQ', at least for the subset of men for
      which an IQ score is reported. However, the correlation between
      'nearc4“ and 'IQ', once the other explanatory variables are netted
      out, is arguably zero. At least, it is not statistically different
      from zero. In other words, 'nearc4' fails the exogeneity
      requirement in a simple regression model but it passes, at least
      using the crude test described above, if controls are added to the
      wage equation. For a more advanced course, a nice extension of
      Card’s analysis is to allow the return to education to differ by
      race. A relatively simple extension is to include black education
      (blackeduc) as an additional explanatory variable; its natural
      instrument is blacknearc4.

      Used in Text: pages 526-527, 547

      .. rubric:: Source
         :name: source

      https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

      .. rubric:: Examples
         :name: examples

      ::

          str(card)
