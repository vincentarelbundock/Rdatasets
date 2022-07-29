.. container::

   ======= ===============
   jtrain2 R Documentation
   ======= ===============

   .. rubric:: jtrain2
      :name: jtrain2

   .. rubric:: Description
      :name: description

   Wooldridge Source: R.J. Lalonde (1986), “Evaluating the Econometric
   Evaluations of Training Programs with Experimental Data,” American
   Economic Review 76, 604-620. Professor Jeff Biddle, at MSU, kindly
   passed the data set along to me. He obtained it from Professor
   Lalonde. Data loads lazily.

   .. rubric:: Usage
      :name: usage

   ::

      data('jtrain2')

   .. rubric:: Format
      :name: format

   A data.frame with 445 observations on 19 variables:

   -  **train:** =1 if assigned to job training

   -  **age:** age in 1977

   -  **educ:** years of education

   -  **black:** =1 if black

   -  **hisp:** =1 if Hispanic

   -  **married:** =1 if married

   -  **nodegree:** =1 if no high school degree

   -  **mosinex:** # mnths prior to 1/78 in expmnt

   -  **re74:** real earns., 1974, $1000s

   -  **re75:** real earns., 1975, $1000s

   -  **re78:** real earns., 1978, $1000s

   -  **unem74:** =1 if unem. all of 1974

   -  **unem75:** =1 if unem. all of 1975

   -  **unem78:** =1 if unem. all of 1978

   -  **lre74:** log(re74); zero if re74 == 0

   -  **lre75:** log(re75); zero if re75 == 0

   -  **lre78:** log(re78); zero if re78 == 0

   -  **agesq:** age^2

   -  **mostrn:** months in training

   .. rubric:: Notes
      :name: notes

   Professor Lalonde obtained the data from the National Supported Work
   Demonstration job-training program conducted by the Manpower
   Demonstration Research Corporation in the mid 1970s. Training status
   was randomly assigned, so this is essentially experimental data.
   Computer Exercise C17.8 looks only at the effects of training on
   subsequent unemployment probabilities. For illustrating the more
   advanced methods in Chapter 17, a good exercise would be to have the
   students estimate a Tobit of re78 on train, and obtain estimates of
   the expected values for those with and without training. These can be
   compared with the sample averages.

   Used in Text: pages 18, 340-341, 626

   .. rubric:: Source
      :name: source

   https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041

   .. rubric:: Examples
      :name: examples

   ::

       str(jtrain2)
