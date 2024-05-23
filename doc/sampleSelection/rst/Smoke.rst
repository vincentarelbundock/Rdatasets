.. container::

   .. container::

      ===== ===============
      Smoke R Documentation
      ===== ===============

      .. rubric:: Survey Responses on Smoking Behaviour
         :name: survey-responses-on-smoking-behaviour

      .. rubric:: Description
         :name: description

      'Instructional dataset, N=807, cross-sectional individual data on
      smoking accompanying Introductory Econometrics: A Modern Approach,
      Jeffrey M. Wooldridge, South-Western College Publishing, (c) 2000
      and Jeffrey M. Wooldridge, Econometric Analysis of Cross Section
      and Panel Data, MIT Press, (c) 2001.'
      (https://ideas.repec.org/p/boc/bocins/smoke.html#biblio, accessed
      February 27, 2017). This dataset is a subset of data used in
      Mullahy (1997). Data was collected in 1979 and 1980 through the
      Smoking Supplement to the US National Health Interview Survey.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(Smoke)

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      educ
         Years of schooling.

      age
         Respondents age in years.

      cigpric
         State cigarette price, cents per pack.

      income
         Annual income in USD.

      restaurn
         Dummy variable indicating if state restaurant smoking
         restrictions are in place.

      smoker
         Dummy variable indicating if person has smoked at least one
         cigarette.

      cigs_intervals
         Number of cigarettes smoked per day, coded in intervals with
         intervals boundaries: (0,5,10,20,50)

      cigs
         Number of cigarettes smoked per day.

      .. rubric:: Source
         :name: source

      Wooldridge(2009)'s dataset also available in other formats at
      https://ideas.repec.org/p/boc/bocins/smoke.html#biblio.

      Original data used in Mullahy (1985) and Mullahy (1997).

      .. rubric:: References
         :name: references

      Jeffrey, M. Wooldridge (2009), *Introductory Econometrics: A
      modern approach*, Canada: South-Western Cengage Learning.

      Mullahy, John (1997), *Instrumental-Variable Estimation of Count
      Data Models: Applications to Models of Cigarette Smoking
      Behavior*, Review of Economics and Statistics 79, 596-593.

      Mullahy, John (1985) *Cigarette Smoking: Habits, Health Concerns,
      and Heterogeneous Unobservables in a Microeconometric Analysis of
      Consumer Demand*, Ph.D. dissertation, University of Virginia.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data( Smoke )
         # boundaries of the intervals
         bounds <- c(0,5,10,20,50,Inf)
         ## Not run: 
         # estimation with starting values obtained by a ML estimation 
         # of a standard tobit-2 model with the dependent variable 
         # of the outcome equation equal to the mid-points of the intervals
         res <- selection( smoker ~ educ + age, cigs_intervals ~ educ, 
           data = Smoke, boundaries = bounds )
         summary( res )

         # estimation with starting values obtained by a two-step estimation 
         # of a standard tobit-2 model with the dependent variable 
         # of the outcome equation equal to the mid-points of the intervals
         res2 <- selection( smoker ~ educ + age, cigs_intervals ~ educ, 
           data = Smoke, boundaries = bounds, start = "2step" )
         summary( res2 )

         ## End(Not run)

         # estimation with starting values that are very close to the estimates
         # (in order to reduce the execution time of running this example) 
         resS <- selection( smoker ~ educ + age, cigs_intervals ~ educ, 
           data = Smoke, boundaries = bounds, 
           start = c( 0.527, -0.0482, -0.0057, 4.23, -0.319, 2.97, 2.245 ) )
         summary( resS )
