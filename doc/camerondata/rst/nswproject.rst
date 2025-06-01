.. container::

   .. container::

      ========== ===============
      nswproject R Documentation
      ========== ===============

      .. rubric:: Training and earnings
         :name: training-and-earnings

      .. rubric:: Description
         :name: description

      Data from the National Supported Work (NSW) demonstration project
      used by Lalonde (1986), and Dehejia and Wahba (1999, 2002). This
      sample has 185 observations in the treatment group and 2490 in the
      control group. The treatment sample consists of males who received
      training during 1976-1977. THe control group consists of male
      household heads under the age of 55 who are not retired, drawn
      from the PSID (Cameron and Trivedi, 2005).

      .. rubric:: Usage
         :name: usage

      .. code:: R

         nswproject

      .. rubric:: Format
         :name: format

      A data frame with 2675 observations and 18 variables:

      treat
         = 1 if individual is in treatment group, = 0 if in control
         group

      age
         age in years

      educ
         education in years

      black
         = 1 if black

      hisp
         = 1 if hispanic

      marr
         = 1 if married

      re74
         real annual earnings in 1974 (pre-treatment), in 1982 usd

      re75
         real annual earnings in 1975 (pre-treatment), in 1982 usd

      re78
         real annual earnings in 1978 (post-treatment), in 1982 usd

      u74
         = 1 if unemployed in 1974

      u75
         = 1 if unemployed in 1975

      agesq
         age squared

      educsq
         educ squared

      nodegree
         = 1 if years of education < 12

      re74sq
         re74 squared

      re75sq
         re75 squared

      u74black
         interaction term u74 x black

      u74hisp
         interaction term u74 x hisp

      .. rubric:: Section in Text
         :name: section-in-text

      25.8 Treatment Evaluation Example: The Effect of Training on
      Earnings, pp. 889-95

      .. rubric:: Source
         :name: source

      http://cameron.econ.ucdavis.edu/mmabook/mmadata.html

      .. rubric:: References
         :name: references

      Cameron, A. and Trivedi, P. (2005), "Microeconometrics: Methods
      and Applications," Cambridge University Press, New York.

      Dehejia R. and Wahba S. (1999), "Causal Effects in Nonexperimental
      Studies: Reevaluating the Evaluation of Training Programs," JASA,
      1053-1062.

      Dehejia R. and Wahba S. (2002), "Propensity-score Matching Methods
      for Nonexperimental Causal Studies", ReStat, 151-161

      Lalonde, R. (1986), "Evaluating the Econometric Evaluations of
      Training Programs with Experimental Data," AER, 604-620.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         summary(nswproject)
