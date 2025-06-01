.. container::

   .. container::

      ========= ===============
      schooling R Documentation
      ========= ===============

      .. rubric:: Returns to schooling
         :name: returns-to-schooling

      .. rubric:: Description
         :name: description

      Data from the National Longitudinal Survey of Young Men. Cohort
      includes 3,010 males aged 24 to 34 years old in 1976, who were
      ages 14-24 when first interviewed in 1966. Cameron and Trivedi
      (2005)

      .. rubric:: Usage
         :name: usage

      .. code:: R

         schooling

      .. rubric:: Format
         :name: format

      A data frame with 5226 observations and 101 variables:

      id
         identification code

      black
         = 1 if black race

      imigrnt
         = 1 if born in the US

      hhead
         person lived with at age 14 (in 1966)

      mag_14
         = 1 if magazines available at age 14

      news_14
         = 1 if newspapers available at age 14

      lib_14
         = 1 if library card available at age 14

      num_sib
         total number of siblings

      fgrade
         highest grade completed by father (1966)

      mgrade
         highest grade completed by mother (1966)

      iq
         IQ score in 1968

      bdate
         date of birth

      gfill76
         highest grade completed 1976, some values filled from prevs
         reports

      wt76
         sampling weights 1976

      grade76
         highest grade completed in 1976

      grade66
         highest grade completed in 1966

      age76
         age in 1976

      age66
         age in 1966

      smsa76
         current residence, = 1 if lived in central city in 1976

      smsa66
         current residence, = 1 if lived in central city in 1966

      region
         census region in 1966

      col4
         = 1 if there is a 4-year college nearby

      mcol4
         = 1 if male 4-year college nearby

      col4pub
         = 1 if public 4-year college nearby

      south76
         = 1 if lived in South in 1976

      wage76
         hourly wage in 1976, ln

      exp76
         work experience in 1976, years calculated as (10 + age66) -
         grade76 - 6

      expsq76
         experience 1976 squared, exp76^2/100

      agesq76
         age squared (1976)

      reg1
         region, = 1 if lived in region NE

      reg2
         region, = 1 if lived in region MidAtl

      reg3
         region, = 1 if lived in region ENC

      reg4
         region, = 1 if lived in region WNC

      reg5
         region, = 1 if lived in region SA

      reg6
         region, = 1 if lived in region ESC

      reg7
         region, = 1 if lived in region WSC

      reg8
         region, = 1 if lived in region M

      reg9
         region, = 1 if lived in region P

      momdad14
         = 1 if lived with both parents at age 14

      sinmom14
         = 1 if lived with mother only at age 14

      nodaded
         = 1 if father has no formal education

      nomomed
         = 1 if mother has no formal education

      daded
         mean grade level of father

      momed
         mean grade level of mother

      famed
         father's and mother's education

      famed1
         = 1 if mgrade> 12 & fgrade> 12

      famed2
         = 1 if mgrade>=12 & fgrade>=12

      famed3
         = 1 if mgrade==12 & fgrade==12

      famed4
         = 1 if mgrade>=12 & fgrade==-1

      famed5
         = 1 if fgrade>=12

      famed6
         = 1 if mgrade>=12 & fgrade> -1

      famed7
         = 1 if mgrade>=9 & fgrade>=9

      famed8
         = 1 if mgrade> -1 & fgrade> -1

      famed9
         = 1 if famed not in range 1-8

      int76
         = 1 if wt76 not missing

      age1415
         = 1 if in age group 14-15

      age1617
         = 1 if in age group 16-17

      age1819
         = 1 if in age group 18-19

      age2021
         = 1 if in age group 20-21

      age2224
         = 1 if in age group 22-24

      cage1415
         = 1 if in age group 14-15 and lived near college

      cage1617
         = 1 = 1 if in age group 16-17 and lived near college

      cage1819
         = 1 if in age group 18-19 and lived near college

      cage2021
         = 1 if in age group 20-21 and lived near college

      cage2224
         = 1 if in age group 22-24 and lived near college

      cage66
         age in 1966 and lived near college

      a1
         = 1 if age in 1966 is 14

      a2
         = 1 if age in 1966 is 15

      a3
         = 1 if age in 1966 is 16

      a4
         = 1 if age in 1966 is 17

      a5
         = 1 if age in 1966 is 18

      a6
         = 1 if age in 1966 is 19

      a7
         = 1 if age in 1966 is 20

      a8
         = 1 if age in 1966 is 21

      a9
         = 1 if age in 1966 is 22

      a10
         = 1 if age in 1966 is 23

      a11
         = 1 if age in 1966 is 24

      ca1
         = 1 if did not live near college in 1966

      ca2
         = 1 if lived near college and age in 1966 = 14

      ca3
         = 1 if lived near college and age in 1966 = 15

      ca4
         = 1 if lived near college and age in 1966 = 16

      ca5
         = 1 if lived near college and age in 1966 = 17

      ca6
         = 1 if lived near college and age in 1966 = 18

      ca7
         = 1 if lived near college and age in 1966 = 19

      ca8
         = 1 if lived near college and age in 1966 = 20

      ca9
         = 1 if lived near college and age in 1966 = 21

      ca10
         = 1 if lived near college and age in 1966 = 22

      ca11
         = 1 if lived near college and age in 1966 = 23

      ca12
         = 1 if lived near college and age in 1966 = 24

      g25
         grade level when 25 years old

      g25i
         = 1 if =g25 and intrvwed in year used for determining g25

      intmo66
         interview month in 1966, used to identify cases incl by Card

      nlsflt
         flag to identify if the case was used by Card

      nsib
         number of siblings

      ns1
         = 1 if the person has no siblings

      ns2
         = 1 if number of siblings is 2

      ns3
         = 1 if number of siblings is 3

      ns4
         = 1 if number of siblings is 4

      ns5
         = 1 if number of siblings is 6

      ns6
         = 1 if number of siblings is 9

      ns7
         = 1 if number of siblings is 18

      .. rubric:: Section in Text
         :name: section-in-text

      4.9.6 Instrumental Variables Application, pp. 110-2

      .. rubric:: Source
         :name: source

      http://cameron.econ.ucdavis.edu/mmabook/mmadata.html

      .. rubric:: References
         :name: references

      Cameron, A. and Trivedi, P. (2005), "Microeconometrics: Methods
      and Applications," Cambridge University Press, New York.

      Card, D. (1995), "Using Geographic Variation in College Proximity
      to Estimate the Returns to Schooling", in Aspects of Labor Market
      Behavior: Essays in Honor of John Vanderkamp, eds. L.N.
      Christofides et al., Toronto: University of Toronto Press,
      pp.201-221.

      Kling, J.R. (2001) "Interpreting Instrumental Variables Estimates
      of the Return to Schooling," Journal of Business and Economic
      Statistics, 19, 358-364.

      https://www.nlsinfo.org/content/cohorts/older-and-young-men

      .. rubric:: Examples
         :name: examples

      .. code:: R

         summary(schooling)
