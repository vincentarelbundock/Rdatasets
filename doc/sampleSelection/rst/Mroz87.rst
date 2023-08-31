.. container::

   ====== ===============
   Mroz87 R Documentation
   ====== ===============

   .. rubric:: U.S. Women's Labor Force Participation
      :name: Mroz87

   .. rubric:: Description
      :name: description

   The ``Mroz87`` data frame contains data about 753 married women.
   These data are collected within the "Panel Study of Income Dynamics"
   (PSID). Of the 753 observations, the first 428 are for women with
   positive hours worked in 1975, while the remaining 325 observations
   are for women who did not work for pay in 1975. A more complete
   discussion of the data is found in Mroz (1987), Appendix 1.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(Mroz87)

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   lfp
      Dummy variable for labor-force participation.

   hours
      Wife's hours of work in 1975.

   kids5
      Number of children 5 years old or younger.

   kids618
      Number of children 6 to 18 years old.

   age
      Wife's age.

   educ
      Wife's educational attainment, in years.

   wage
      Wife's average hourly earnings, in 1975 dollars.

   repwage
      Wife's wage reported at the time of the 1976 interview.

   hushrs
      Husband's hours worked in 1975.

   husage
      Husband's age.

   huseduc
      Husband's educational attainment, in years.

   huswage
      Husband's wage, in 1975 dollars.

   faminc
      Family income, in 1975 dollars.

   mtr
      Marginal tax rate facing the wife.

   motheduc
      Wife's mother's educational attainment, in years.

   fatheduc
      Wife's father's educational attainment, in years.

   unem
      Unemployment rate in county of residence, in percentage points.

   city
      Dummy variable = 1 if live in large city, else 0.

   exper
      Actual years of wife's previous labor market experience.

   nwifeinc
      Non-wife income.

   wifecoll
      Dummy variable for wife's college attendance.

   huscoll
      Dummy variable for husband's college attendance.

   .. rubric:: Source
      :name: source

   Mroz, T. A. (1987) The sensitivity of an empirical model of married
   women's hours of work to economic and statistical assumptions.
   *Econometrica* **55**, 765–799.

   PSID Staff, The Panel Study of Income Dynamics, Institute for Social
   ResearchPanel Study of Income Dynamics, University of Michigan,
   https://psidonline.isr.umich.edu.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      ## Wooldridge( 2003 ): example 17.5, page 590
      data( Mroz87 )
      # Two-step estimation
      summary( heckit( lfp ~ nwifeinc + educ + exper + I( exper^2 ) + age +
         kids5 + kids618, log( wage ) ~ educ + exper + I( exper^2 ), Mroz87,
         method = "2step" ) )
